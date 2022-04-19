<template>
  <q-layout view="lHh Lpr lFf">
    <q-page-container :style="{'background-image': 'url(' + backgroundImg + ')'}">
      <router-view :key="$route.fullPath"/>
    </q-page-container>
  </q-layout>
</template>

<script>
import { defineComponent, ref } from 'vue'
import backgroundImg from '../assets/background.jpg';

export default defineComponent({
  name: 'GameLayout',

  setup () {
    return {
      backgroundImg
    }
  }
})
</script>
