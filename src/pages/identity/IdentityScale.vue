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
      <h3 style="margin: 5% 5% 2% 5%">匹配我的角色</h3>
      <q-card bordered flat dark class="q-mx-xl row justify-center text-white bg-indigo-6" style="opacity: 0.8">
      <template v-for="(question, question_index) in questionList" :key="'question' + question_index">
        <div class="q-mb-sm col-12 row justify-center">
          <h5>{{ question }}</h5>
          <div class="col-12 row justify-center">
            <q-radio
              dark
              v-for="(option, radio_index) in optionMap[question_index]"
              :key="'radio_' + radio_index"
              v-model="chosenList[question_index]"
              :val="option.id"
              :label="option.name"
            />
          </div>
        </div>
      </template>
      </q-card>
      <q-btn class="col-8 q-my-lg" outline size="lg" color="primary" label="选择角色" @click="onDecideCharacter" />
    </div>
  </q-page>
</template>

<script>
import { reactive, ref, onMounted } from 'vue';
import { useRouter } from 'vue-router';
import { api } from "boot/axios";

export default {
  name: "IdentityScale1Page",
  setup() {
    const router = useRouter();

    const questionList = reactive([
      "在工作中，如果给予你更大的责任，你愿意承担呢？",
      "在工作中，如果遇到突发情况，你认为自己的专业能力能够处理好突发情况吗？",
      "你接到一项任务，之前从来没有人做过，需要你充分发挥想象力与创造力，你认为自己能够做好吗？",
      "你需要外出独立生活，根据你已有的生活经验，你认为自己能过好接下来的生活吗？",
      "如果用以下两个词中的一个来描述我，我更倾向于？",
      "如果用以下两个词中的一个来描述我，我更倾向于？",
      "如果用以下两个词中的一个来描述我，我更倾向于？"
    ]);

    const optionMap = reactive([
      [
        { id: 1, name: "非常不愿意" },
        { id: 2, name: "比较不愿意" },
        { id: 3, name: "有些不愿意" },
        { id: 4, name: "没有明显倾向" },
        { id: 5, name: "少有意愿" },
        { id: 6, name: "比较愿意" },
        { id: 7, name: "非常愿意" }
      ],
      [
        { id: 1, name: "完全没信心" },
        { id: 2, name: "比较没信心" },
        { id: 3, name: "有些没信心" },
        { id: 4, name: "一般" },
        { id: 5, name: "有些信心" },
        { id: 6, name: "比较有信心" },
        { id: 7, name: "非常有信心" }
      ],
      [
        { id: 1, name: "完全没信心" },
        { id: 2, name: "比较没信心" },
        { id: 3, name: "有些没信心" },
        { id: 4, name: "一般" },
        { id: 5, name: "有些信心" },
        { id: 6, name: "比较有信心" },
        { id: 7, name: "非常有信心" },
      ],
      [
        { id: 1, name: "完全没信心" },
        { id: 2, name: "比较没信心" },
        { id: 3, name: "有些没信心" },
        { id: 4, name: "一般" },
        { id: 5, name: "有些信心" },
        { id: 6, name: "比较有信心" },
        { id: 7, name: "非常有信心" },
      ],
      [
        { id: 1, name: "卓尔不群" },
        { id: 2, name: "平凡普通" }
      ],
      [
        { id: 3, name: "积极乐观" },
        { id: 4, name: "冷漠无情" }
      ],
      [
        { id: 5, name: "乐于挑战" },
        { id: 6, name: "乐于安逸" }
      ],
    ]);

    const chosenList = reactive([
      0, 0, 0, 0, 0, 0
    ]);

    function onDecideCharacter(){
      let checkValid = chosenList.every(element => {
        return element > 0;
      });
      if(checkValid){
        let params = "scale=" + chosenList[0] + "&scale=" + chosenList[1] + "&scale=" + chosenList[2] + "&scale=" + chosenList[3]
                      + "&choice=" + chosenList[4] + "&choice=" + chosenList[5];
        let url = "/user_identity/choose?" + params;
        api.get(url, {
          params: params
        }).then((response) => {
          let uid = response.data.uid;
          if(uid >= 0){
            let user_id = localStorage.getItem('user_id');
            if(user_id != undefined){
              createArchive(user_id, uid, (resp_data) => {
                localStorage.setItem('rid', resp_data.rid);
                localStorage.setItem('uid', uid);
                router.push({path: '/identity_description', query: {uid: uid}});
              });
            }
          }
          else{
            console.log("uid: " + uid);
          }
        }).catch((error) => {
          console.log(error);
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
      questionList,
      optionMap,
      chosenList,
      onDecideCharacter
    }
  },
}
</script>