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
    >
    </vue-particles>

    <div class="full-width row justify-center text-white">
      <transition name="fade-1">
        <div v-if="fadeShow" class="col-12 row justify-center">
          <h5 class="col-10" style="line-height: 50px;margin: 5% 5% 1% 5%">&emsp;&emsp;本作品以2019年新型冠状病毒肺炎疫情爆发中的人物群像为原型，情节经过艺术化处理，谨以此献给新冠疫情涌现出来的钟南山、李兰娟、张定宇等人民英雄、在汉赴汉的医护人员、积极配合国家安排的普通人。</h5>
        </div>
      </transition>
      <transition name="fade-2">
        <div v-if="fadeShow" class="col-12 row justify-center">
          <h5 class="col-10" style="line-height: 50px;margin: 1% 5% 1% 5%">&emsp;&emsp;疫情还没有结束，国家和人民依然面对着巨大的考验。换位思考是不同处境的人互相理解的前提，可以使矛盾化于无形。</h5>
        </div>
      </transition>
      <transition name="fade-3">
        <div v-if="fadeShow" class="col-12 row justify-center">
          <h4 class="text-weight-bold">谨以此作品向疫情下的所有人致以最诚挚的敬意。</h4>
        </div>
      </transition>
      <transition name="fade-4">
        <q-btn v-if="fadeShow" class="col-8 q-mt-lg" outline size="lg" color="primary" label="结束游戏" @click="jumpStart" />
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
    const state = reactive({
      question_id: 1,
      identity_num: 1,
      question_description: "",
      choice_list: [
        {
          id: 1,
          text: "",
        },
      ],
    });

    const fadeShow = ref(false);

    onMounted(() => {
      fadeShow.value = true;
    })

    function jumpStart(){
      localStorage.removeItem('uid');
      localStorage.removeItem('rid');
      router.push('/start');
    }

    function onChoose(index) {
      let url =
        getHostUrl() +
        ":8082/question/choose?uid=" +
        state.identity_num +
        "&qid=" +
        state.question_id +
        "&oid=" +
        state.choice_list[index].id;
      api
        .get(url)
        .then((response) => {
          let qid = response.data.qid;
          if(qid == -1){
              router.push("/end");
          }
          router
            .push({
              path: "/question",
              query: { id: state.identity_num, qid: qid },
            })
            .then(() => {
              router.go(0);
            });
        })
        .catch((error) => {
          console.log(error);
        });
    }

    return {
      state,
      fadeShow,
      onChoose,
      jumpStart
    };
  },
});
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