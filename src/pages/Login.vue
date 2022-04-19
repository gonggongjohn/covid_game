<template>
  <!-- <q-page class="flex flex-center"> -->
  <q-page class="flex flex-center" :style="{'background-image': 'url(' + backgroundImg + ')'}">
    <div class="full-width row justify-center text-white">
      <h3>登陆游戏</h3>
      <div class="q-mb-sm col-12 row justify-center">
        <q-input dark class="col-8" v-model="login_credentials.username" label="用户名" />
      </div>
      <div class="q-mt-sm col-12 row justify-center">
        <q-input dark class="col-8" :type="showPassword ? 'text' : 'password'" v-model="login_credentials.password" label="密码">
          <template v-slot:append>
            <q-icon
              :name="showPassword ? 'visibility' : 'visibility_off'"
              class="cursor-pointer"
              @click="showPassword = !showPassword"
            />
          </template>
        </q-input>
      </div>
      <q-btn class="col-8 q-mt-lg" outline size="lg" color="primary" label="登陆" @click="onLogin" />
      <q-btn class="col-8 q-mt-md" outline size="lg" color="secondary" label="注册" @click="jumpRegister" />
    </div>

    <q-dialog v-model="showError">
      <q-card>
        <q-card-section>
          <div class="text-h6">登陆失败</div>
        </q-card-section>
        <q-card-section class="q-pt-none">
           {{ errorMessage }}
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
import backgroundImg from '../assets/background.jpg';
import { useRouter } from 'vue-router';
import { api } from "boot/axios";

export default {
  name: "LoginPage",
    setup() {
      const router = useRouter();

      const login_credentials = reactive({
        username: "",
        password: ""
      })

      const showPassword = ref(false);
      const showError = ref(false);
      const errorMessage = ref("");

      function onLogin(){
        let params = {
          username: login_credentials.username,
          password: login_credentials.password
        };
        let url = "/user/login";
        api.get(url, {
          params: params
        }).then((response) => {
          let user_id = response.data.user_id;
          if(user_id == undefined || user_id == -1){
            errorMessage.value = "用户名密码不匹配或者用户名不存在！";
            showError.value = true;
          }
          else{
            localStorage.setItem('user_id', user_id);
            router.push('/start');
          }
        }).catch((error) => {
          console.log(error);
        })
      }

      function jumpRegister(){
        router.push('/register');
      }

      return{
        login_credentials,
        backgroundImg,
        showPassword,
        showError,
        errorMessage,
        onLogin,
        jumpRegister
      }
    },
}
</script>