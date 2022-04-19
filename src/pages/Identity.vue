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
      <h3>我的身份是？</h3>
      <template v-for="(item, index) in identity_option" :key="'identity_' + index">
        <div class="q-mb-sm col-12 row justify-center">
          <q-btn
            :label="item.uname"
            outline
            class="col-8"
            color="primary"
            size="xl"
            @click="onChooseIdentity(index)"
          />
        </div>
      </template>
    </div>
  </q-page>
</template>

<script>
import { defineComponent, onMounted, reactive } from "vue";
import { api } from "boot/axios";
import { useRouter } from "vue-router";

export default defineComponent({
  name: "PageIdentity",

  setup() {
    const router = useRouter();
    const identity_option = reactive([
      /*
      {
        uid: 0,
        uname: "abcd",
      }
      */
    ]);

    onMounted(() => {
      let url = "/user_identity/getIdentityList";
      api.get(url)
        .then((response) => {
          let identity_list = response.data;
          identity_list.forEach(element => {
            identity_option.push({
              uid: element.uid,
              uname: element.uname
            });
          });
        })
        .catch((error) => {
          console.log(error);
        });
    });

    function onChooseIdentity(index) {
      let user_id = localStorage.getItem('user_id');
      let uid = identity_option[index].uid;
      if(user_id != undefined){
        createArchive(user_id, uid, (resp_data) => {
          localStorage.setItem('rid', resp_data.rid);
          localStorage.setItem('uid', uid);
          router.push({ path: "/identity_description", query: { uid: uid } });
        });
      }
    }

    function createArchive(user_id, uid, callback){
      let params = { uid: uid, user_id: user_id};
      let url = "/record/create";
      api.get(url, {
        params: params
      }).then((response) => {
        let resp_body = response.data;
        callback(resp_body);
      }).catch(error => {
        console.log(error);
      })
    }

    return {
      identity_option,
      onChooseIdentity,
    };
  },
});
</script>
