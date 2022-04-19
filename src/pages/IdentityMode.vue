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
      <h5>尊敬的用户你好，你希望自主选择身份还是通过简短的测评使系统为你匹配合适的人物角色？</h5>
      <q-btn class="col-8 q-mt-lg" outline size="lg" color="primary" label="测评后由系统匹配人物角色" @click="autoChoose" />
      <q-btn class="col-8 q-mt-md" outline size="lg" color="secondary" label="自主选择人物角色" @click="manualChoose" />
    </div>
  </q-page>
</template>

<script>
import { useRouter } from 'vue-router';

export default {
  name: "IdentityModePage",
  setup() {
    const router = useRouter();

    function autoChoose(){
      router.push('/identity_scale');
    }

    function manualChoose(){
      router.push('/identity');
    }

    return {
      autoChoose,
      manualChoose
    }
  },
}
</script>