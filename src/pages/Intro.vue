<template>
  <!-- <q-page class="flex flex-center"> -->
  <q-page class="flex flex-center" :style="{'background-image': 'url(' + backgroundImg + ')'}">
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
    <div class="text-white">
      <transition name="fade-title">
        <h2 v-if="fade_show">如果疫情重启，你的选择是？</h2>
      </transition>
      <transition name="fade-button">
        <div v-if="fade_show" class="row justify-center">
          <q-btn
            outline
            class="q-px-lg q-mt-lg"
            style="width: 100%"
            color="primary"
            label="开始游戏"
            size="xl"
            @click="onStartGame"
          />
        </div>
      </transition>
      <transition name="fade-button">
        <div v-if="fade_show" class="row justify-center">
          <q-btn
            outline
            class="q-px-lg q-mt-lg"
            style="width: 100%"
            color="secondary"
            label="读取存档"
            size="xl"
            @click="jumpReadArchive"
          />
        </div>
      </transition>
    </div>
  </q-page>
</template>

<script>
import { defineComponent, onMounted, reactive, ref } from "vue";
import { useRoute, useRouter } from "vue-router";
import backgroundImg from '../assets/background.jpg';

export default defineComponent({
  name: "PageIntro",

  setup() {
    const route = useRoute();
    const router = useRouter();
    const fade_show = ref(false);

    onMounted(() => {
      fade_show.value = !fade_show.value;
    });

    function jumpReadArchive(){
      router.push("/archive");
    }

    function onStartGame() {
      router.push("/identity_mode");
    }

    return {
      backgroundImg,
      fade_show,
      onStartGame,
      jumpReadArchive
    };
  },
});
</script>
<style>
.fade-title-enter-active, .fade-title-leave-active {
  transition: opacity 2s ease;
}
.fade-title-enter-from, .fade-title-leave-to {
  opacity: 0;
}
.fade-button-enter-active, .fade-button-leave-active {
  transition: opacity 1.5s ease;
  transition-delay: 1.5s;
}
.fade-button-enter-from, .fade-button-leave-to {
  opacity: 0;
}
</style>