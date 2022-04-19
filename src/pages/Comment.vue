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
      <transition name="fade-1">
        <h3 v-if="fadeShow" style="margin: 3% 5% 2% 5%">人物评价</h3>
      </transition>

      <transition name="fade-2">
        <div v-if="fadeShow" class="col-12 row justify-center">
          <q-img :src="avatar_url" class="rounded-borders col-4" />
          <h6 class="q-ml-md col-7" style="line-height: 40px;text-align: center">{{ '&emsp;&emsp;' + comment_word }}</h6>
        </div>
      </transition>

      <transition name="fade-3">
        <q-card v-if="fadeShow" dark bordered class="col-8 q-mt-lg">
          <div class="row justify-between">
            <h6 class="text-orange-8" style="margin: 1% 5% 1% 3%">查看达成的评注</h6>
            <q-btn color="grey" round flat dense :icon="expandCommentary ? 'keyboard_arrow_up' : 'keyboard_arrow_down'" @click="expandCommentary = !expandCommentary" />
          </div>

          <q-slide-transition>
            <div v-show="expandCommentary">
              <q-list dark bordered separator>
                <q-item v-for="(item, index) in commentary_list" :key="'commentary_' + index" v-ripple>
                  <q-item-label overline>{{ item.description }}</q-item-label>
                </q-item>
              </q-list>
            </div>
          </q-slide-transition>
        </q-card>
      </transition>

      <transition name="fade-4">
        <div v-if="fadeShow" class="q-mt-lg col-12 row justify-center">
          <q-btn class="col-8 q-my-lg" outline size="lg" color="primary" label="完成旅途" @click="onContinue" />
        </div>
      </transition>
    </div>
  </q-page>
</template>

<script>
import { reactive, ref, onMounted } from 'vue';
import { useRouter } from 'vue-router';
import { api } from "boot/axios";

export default {
  name: "CommentPage",
  setup() {
    const router = useRouter();

    const avatar_url = ref("");
    const comment_word = ref("你的专业素养很高，很负责，应急反应能力很好，组织能力也很强。面对突发事件时，你总能凭借过硬的专业能力进行妥善解决。但是你有时候需要考虑专业以外的因素，行政水平、等级有时候也能发挥关键作用，要学会向合适的人求助。你是一个有同理心、共情心的人，这样的品质会让你有更好的人生体验。你对家人很关心，再重大的国家责任也需要由小家的温馨组成，因此在工作条件允许的情况下你希望自己能照顾到家人。");
    const fadeShow = ref(false);
    const expandCommentary = ref(false);
    const commentary_list = reactive([
      {
        cid: 0,
        description: ""
      }
    ]);

    onMounted(() => {
      let uid = localStorage.getItem('uid');
      let rid = localStorage.getItem('rid');
      if(uid != undefined){
        getAvatar(uid, (avatar) => {
          avatar_url.value = avatar;
        });
      }
      if(rid != undefined){
        getComment((comment) =>{
          comment_word.value = comment;
        })
        getCommentary(rid, (commentary_back) => {
          commentary_list = commentary_back;
        });
      }
      fadeShow.value = true;
    });

    function getAvatar(uid, callback){
      let url = "/user_identity/getUserIdentity?uid=" + uid;
      api.post(url).then((response) => {
        let resp_data = response.data;
        callback('http://139.196.59.66:7001/' + resp_data.pic);
      })
      .catch((error) => {
        console.log(error);
      });
    }

    function getCommentary(rid, callback){
      let url = "/commentary/record?rid=" + rid;
      api.post(url).then((response) => {
        let resp_data = response.data;
        callback(resp_data);
      })
      .catch((error) => {
        console.log(error);
      });
    }

    function getComment(callback){
      /*
      let url = "/commentary/record?rid=" + rid;
      api.post(url).then((response) => {
        let resp_data = response.data;
        callback(resp_data);
      })
      .catch((error) => {
        console.log(error);
      });
      */
    }

    function onContinue(){
      router.push('/end');
    }

    return {
      avatar_url,
      comment_word,
      fadeShow,
      expandCommentary,
      commentary_list,
      onContinue
    }
  },
}
</script>
<style scoped>
.fade-1-enter-active, .fade-1-leave-active {
  transition: opacity 2s ease;
}
.fade-1-enter-from, .fade-1-leave-to {
  opacity: 0;
}
.fade-2-enter-active, .fade-2-leave-active {
  transition: opacity 2s ease;
  transition-delay: 1.5s;
}
.fade-2-enter-from, .fade-2-leave-to {
  opacity: 0;
}
.fade-3-enter-active, .fade-3-leave-active {
  transition: opacity 2s ease;
  transition-delay: 3s;
}
.fade-3-enter-from, .fade-3-leave-to {
  opacity: 0;
}
.fade-4-enter-active, .fade-4-leave-active {
  transition: opacity 2s ease;
  transition-delay: 4.5s;
}
.fade-4-enter-from, .fade-4-leave-to {
  opacity: 0;
}
</style>