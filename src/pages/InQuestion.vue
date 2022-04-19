<template>
  <q-page class="flex flex-center">
    <vue-particles
      color="#dedede"
      :particleOpacity="0.7"
      :particlesNumber="80"
      shapeType="circle"
      :particleSize="4"
      linesColor="#dedede"
      :linesWidth="1"
      :lineLinked="true"
      :lineOpacity="0.4"
      :linesDistance="150"
      :moveSpeed="3"
      :hoverEffect="true"
      hoverMode="grab"
      :clickEffect="true"
      clickMode="push"
      style="width: 100%;height: 100%;position: absolute"
    />

    <div class="full-width row justify-center text-white">
      <div v-if="display_mode === 1" class="row justify-center">
        <transition name="fade-description">
          <h5 class="q-px-lg" v-if="fade_show" style="text-align: center">{{ question_description }}</h5>
        </transition>
        <transition-group name="fade-option">
          <template v-for="(item, index) in option_list" :key="'option_' + index">
            <div v-if="fade_show" class="q-mb-sm col-12 row justify-center">
              <q-btn
                :label="item.description"
                outline
                class="col-8 q-px-lg q-mt-lg"
                color="primary"
                size="xl"
                @click="onChoose(index)"
              />
            </div>
          </template>
        </transition-group>
      </div>

      <div class="q-mb-sm col-12 row justify-center">
      <transition name="fade-commentary">
        <div v-if="fade_commentary" class="col-10 row justify-center">
          <q-banner rounded dark class="text-white bg-purple">
            {{ "评注：" + commentary_word }}
          </q-banner>
        </div>
      </transition>
      </div>

      <transition name="fade-description">
        <div v-if="display_mode === 2" class="full-width row justify-center">
          <template v-for="(item, index) in narrate_list" :key="'narrate_' + index">
            <div v-if="fade_show_2" class="col-10 row justify-center">
              <h5>{{ item }}</h5>
            </div>
          </template>
          <div class="q-mb-sm col-12 row justify-center">
            <q-btn class="col-8 q-mt-lg" outline size="lg" color="primary" label="继续游戏" @click="onContinue" />
          </div>
        </div>
      </transition>
    </div>
  </q-page>
</template>

<script>
import { defineComponent, onMounted, reactive, ref } from "vue";
import { api } from "boot/axios";
import { useRoute, useRouter } from "vue-router";

export default defineComponent({
  name: "PageIdentityDescription",

  setup() {
    const route = useRoute();
    const router = useRouter();

    const display_mode = ref(1);
    const question_id = ref(0);
    const fade_show = ref(false);
    const fade_show_2 = ref(false);
    const fade_commentary = ref(false);
    const question_description = ref("");
    const option_list = reactive([
      /*
      {
        oid: 0,
        description: "",
        nextQid: 0,
        cid: 0
      }
      */
    ]);
    const narrate_list = reactive([
      //"1234"
    ])
    const commentary_word = ref("");
    const nextQuestion = ref(0);

    onMounted(() => {
      question_id.value = route.query.qid;
      if(question_id.value > 0){
        let uid = localStorage.getItem('uid');
        let rid = localStorage.getItem('rid');
        let user_id = localStorage.getItem('user_id');
        if(uid != undefined && rid != undefined && user_id != undefined){
          saveArchive(rid, uid, question_id.value, user_id, () => {
            console.log('存档更新成功！');
          });
        }
        getDescription(question_id.value, (description) => {
          question_description.value = description;
          getOption(question_id.value, (options) => {
            options.forEach(option => {
              option_list.push({
                oid: option.oid,
                description: option.description,
                nextQid: option.nextQid,
                cid: option.cid
              });
            });
            fade_show.value = true;
          });
        });
      }
    });

    function onChoose(index) {
      fade_show.value = false;
      getNarrate(option_list[index].oid, (narrate) => {
        narrate.forEach(element => {
          narrate_list.push(element.description);
        });
        nextQuestion.value = option_list[index].nextQid
        display_mode.value = 2;
        fade_show_2.value = true;
        getCommentary(option_list[index].cid, (commentary) => {
          if(commentary != undefined && commentary != ""){
            commentary_word.value = commentary;
            fade_commentary.value = true;
            let rid = localStorage.getItem('rid');
            let user_id = localStorage.getItem('user_id');
            if(rid != undefined && user_id != undefined){
              achieveCommentary(user_id, rid, option_list[index].cid, () => {
                console.log("评注已达成！")
              });
            }
          }
        })
      });
    }

    function onContinue(){
      if(nextQuestion.value > 0){
        router.push({ path: "/question", query: { qid: nextQuestion.value } });
      }
      else if(nextQuestion.value == -1){
        router.push('/comment');
      }
    }

    function saveArchive(rid, uid, qid, user_id, callback){
      let url = "/record/save";
      let params = { rid: rid, uid: uid, qid: qid, user_id: user_id }; 
      api.get(url, {
        params: params
      }).then((response) => {
        callback();
      })
      .catch((error) => {
        console.log(error);
      });
    }

    function getDescription(question_id, callback){
      let url = "/question/description";
      let params = { qid: question_id }; 
      api.get(url, {
        params: params
      }).then((response) => {
        callback(response.data.description);
      })
      .catch((error) => {
        console.log(error);
      });
    }

    function getOption(question_id, callback){
      let params = "qid=" + question_id;
      let url = "/question/options?" + params;
      api.post(url).then((response) => {
        callback(response.data);
      })
      .catch((error) => {
        console.log(error);
      });
    }

    function getNarrate(oid, callback){
      let params = "oid=" + oid;
      let url = '/question/message?' + params;
      api.post(url).then((response) => {
        let narrate = response.data;
        callback(narrate);
      })
      .catch((error) => {
        console.log(error);
      });
    }

    function getCommentary(cid, callback){
      let params = "cid=" + cid;
      let url = '/commentary/description?' + params;
      api.post(url).then((response) => {
        callback(response.data.description);
      })
      .catch((error) => {
        console.log(error);
      });
    }

    function achieveCommentary(user_id, rid, cid, callback){
      let params = "user_id=" + user_id + "&rid=" + rid + "&cid=" + cid;
      let url = '/commentary/achieve?' + params;
      api.put(url).then((response) => {
        callback();
      })
      .catch((error) => {
        console.log(error);
      });
    }

    return {
      question_description,
      option_list,
      display_mode,
      narrate_list,
      commentary_word,
      fade_show,
      fade_show_2,
      fade_commentary,
      onChoose,
      onContinue,
    };
  },
});
</script>
<style scoped>
.fade-description-enter-active, .fade-description-leave-active {
  transition: opacity 2s ease;
}
.fade-description-enter-from, .fade-description-leave-to {
  opacity: 0;
}
.fade-option-enter-active, .fade-option-leave-active {
  transition: opacity 1.5s ease;
  transition-delay: 1.5s;
}
.fade-option-enter-from, .fade-option-leave-to {
  opacity: 0;
}
.fade-commentary-enter-active, .fade-commentary-leave-active {
  transition: all 1s;
  transition-delay: 1s;
}
.fade-commentary-enter-from, .fade-commentary-leave-to {
  transform: translateY(30px);
  opacity: 0;
}
</style>