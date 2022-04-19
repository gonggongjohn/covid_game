<template>
  <q-page class="flex flex-center">
    <h3>{{ state.description }}</h3>
  </q-page>
</template>

<script>
import { defineComponent, onMounted, reactive } from "vue";
import { api } from "boot/axios";
import { useRoute, useRouter } from "vue-router";

export default defineComponent({
  name: "PageIdentityDescription",

  setup() {
    const route = useRoute();
    const router = useRouter();
    const state = reactive({
      description: ""
    });

    function getHostUrl() {
      let full_path = window.document.location.href;
      let protocol_index = full_path.indexOf("://");
      let protocol_str = full_path.substring(0, protocol_index);
      let full_path_stripped = full_path.substring(protocol_index + 3);
      let router_path = route.path;
      let host_index = full_path_stripped.indexOf(router_path);
      let full_host = full_path_stripped.substring(0, host_index);
      let pred_index = full_host.lastIndexOf(":");
      let pure_host = full_host.substring(0, pred_index);
      return protocol_str + "://" + pure_host;
    }

    onMounted(() => {
      state.identity_num = route.query.id;
      if(state.identity_num == 1){
        state.img_path = character1;
      }
      else if(state.identity_num == 2){
        state.img_path = character1;
      }
      else if(state.identity_num == 3){
          state.img_path = character3;
      }
      else if(state.identity_num == 4){
          state.img_path = character4;
      }
      let url = getHostUrl() + ":8082/identity/info?id=" + state.identity_num;
      api
        .get(url)
        .then((response) => {
          state.identity_description = response.data.description;
        })
        .catch((error) => {
          console.log(error);
        });
    });

    function onCovidStart() {
      let id = state.identity_num;
      router.push({ path: "/question", query: { id: 1 } });
    }

    return {
      state,
      onCovidStart,
    };
  },
});
</script>
