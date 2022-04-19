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
        <h3 v-if="fadeShow">你的基本状况是</h3>
      </transition>
      <transition name="fade-2">
        <div v-if="fadeShow" class="row justify-center">
          <q-img :src="identity_info.avatar" class="rounded-borders col" style="max-width: 300px" />
          <h6 class="col-7 q-pl-lg">{{ "&emsp;&emsp;" + identity_info.identity_description }}</h6>
        </div>
      </transition>
      <transition name="fade-3">
        <q-btn v-if="fadeShow" outline class="col-8 q-my-lg" color="primary" size="xl" label="疫情爆发！" @click="onCovidStart" />
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
    const identity_info = reactive({
      identity_num: 1,
      identity_name: "",
      identity_description: "",
      first_qid: 1,
      avatar: ""
    });
    const fadeShow = ref(false);

    onMounted(() => {
      identity_info.identity_num = route.query.uid;
      if(identity_info.identity_num){
        let url = "/user_identity/getUserIdentity?uid=" + identity_info.identity_num;
        api.post(url).then((response) => {
          let resp_data = response.data;
          identity_info.identity_num = resp_data.uname;
          identity_info.identity_description = resp_data.description;
          identity_info.first_qid = resp_data.firstQid;
          identity_info.avatar = 'http://139.196.59.66:7001/' + resp_data.pic;
          fadeShow.value = true;
        })
        .catch((error) => {
          console.log(error);
        });
      }
    });

    function onCovidStart() {
      if(identity_info.first_qid > 0){
        router.push({ path: "/question", query: { qid: identity_info.first_qid } });
      }
    }

    return {
      identity_info,
      onCovidStart,
      fadeShow
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
</style>