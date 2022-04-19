<template>
  <!-- <q-page class="flex flex-center"> -->
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
      <h3>注册账号</h3>
      <div class="q-mb-sm col-12 row justify-center">
        <q-input dark class="col-8" v-model="register_credentials.username" label="用户名" />
      </div>
      <div class="q-mt-sm col-12 row justify-center">
        <q-input dark class="col-8" :type="showPassword ? 'text' : 'password'" v-model="register_credentials.password" label="密码">
          <template v-slot:append>
            <q-icon
              :name="showPassword ? 'visibility' : 'visibility_off'"
              class="cursor-pointer"
              @click="showPassword = !showPassword"
            />
          </template>
        </q-input>
      </div>
      <q-btn class="col-8 q-mt-lg" outline size="lg" color="primary" label="注册" @click="onRegister" />
      <q-btn class="col-8 q-mt-md" outline size="lg" color="secondary" label="返回登陆" @click="jumpLogin" />
    </div>

    <q-dialog v-model="showInfo">
      <q-card>
        <q-card-section>
          <div class="text-h6">{{ infoTitle }}</div>
        </q-card-section>
        <q-card-section class="q-pt-none">
           {{ infoMessage }}
        </q-card-section>
        <q-card-actions align="right">
          <q-btn flat label="知道了" color="primary" v-close-popup />
        </q-card-actions>
      </q-card>
    </q-dialog>
  </q-page>
</template>

<script>
import { reactive, ref } from 'vue';
import { useRouter } from 'vue-router';
import { api } from "boot/axios";

export default {
  name: "RegisterPage",
    setup() {
      const router = useRouter();
      
      const register_credentials = reactive({
        username: "",
        password: ""
      })

      const showPassword = ref(false);
      const showInfo = ref(false);
      const infoTitle = ref("");
      const infoMessage = ref("");

      function onRegister(){
        let params = {
          username: register_credentials.username,
          password: register_credentials.password
        };
        let url = "/user/register";
        api.get(url, {
          params: params
        }).then((response) => {
          let uid = response.data.user_id;
          if(uid == undefined || uid == -1){
            infoTitle.value = "注册失败";
            infoMessage.value = "用户名已存在！";
            showInfo.value = true;
          }
          else{
            infoTitle.value = "注册成功";
            infoMessage.value = "您已注册成功！返回登陆界面登陆账号即可开始游戏！";
            showInfo.value = true;
            register_credentials.username = "";
            register_credentials.password = "";
          }
        }).catch((error) => {
          console.log(error);
        })
      }

      function jumpLogin(){
        router.push('/');
      }

      return{
        register_credentials,
        showPassword,
        showInfo,
        infoTitle,
        infoMessage,
        onRegister,
        jumpLogin
      }
    },
}
</script>