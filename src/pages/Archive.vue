<template>
  <!-- <q-page class="flex flex-center"> -->
  <q-page class="flex flex-center" :style="{'background-image': 'url(' + backgroundImg + ')'}">
    <div class="full-width row justify-center text-white">
      <h3>我的存档</h3>
      <div class="q-mb-sm col-12 row justify-center">
        <q-list class="col-8" dark bordered separator>
            <q-item
              v-for="(item, index) in archiveList"
              :key="'archive_' + index"
              clickable
              :active="index === activeIndex"
              active-class="bg-teal-1 text-grey-8"
              @click="activeIndex = index"
              v-ripple
            >
              <q-item-label>存档编号：{{ item.rid }}，人物：{{ item.uname }}，存档时间：{{ item.time }}</q-item-label>
            </q-item>
            <div v-if="5 - archiveList.length > 0">
              <q-item v-for="index in 5 - archiveList.length" :key="'archive_' + index" clickable v-ripple>
                <q-item-label overline>无存档</q-item-label>
              </q-item>
            </div>
        </q-list>
      </div>
      <q-btn class="col-8 q-mt-lg" outline size="lg" color="primary" label="读取存档" @click="onReadArchive" />
      <q-btn class="col-8 q-mt-md" outline size="lg" color="secondary" label="返回开始界面" @click="jumpStart" />
    </div>
  </q-page>
</template>

<script>
import { reactive, ref, onMounted } from 'vue';
import backgroundImg from '../assets/background.jpg';
import { useRouter } from 'vue-router';
import { api } from "boot/axios";

export default {
  name: "ArchivePage",
    setup() {
      const router = useRouter();

      const archiveList = reactive([
        /*
        {
          rid: 0,
          uname: "",
          qid: 0,
          time: "2020-04-15"
        }
        */
      ]);

      const activeIndex = ref(-1);

      onMounted(() => {
        let user_id = localStorage.getItem('user_id');
        if(user_id != undefined){
          let url = "/record/getRecordList";
          let params = {
            user_id: user_id
          };
          api.get(url, {
            params: params
          }).then((response) => {
            let record_list = response.data;
            record_list.forEach(record => {
              archiveList.push({
                rid: record.rid,
                uname: record.uname,
                qid: record.qid,
                time: record.updateTime
              });
            });
            console.log(record_list);
          }).catch((error) => {
            console.log(error);
          })
        }
        else{
          console.log('用户未登陆！')
        }
      })

      function onReadArchive(){
        if(activeIndex.value >= 0 && activeIndex.value < archiveList.length){
          let params = {
            rid: archiveList[activeIndex.value].rid
          };
          let url = "/record/load";
          api.get(url, {
            params: params
          }).then((response) => {
            let resp_data = response.data;
            localStorage.setItem('rid', resp_data.rid);
            router.push({ path: "/question", query: { qid: resp_data.qid } });
          }).catch((error) => {
            console.log(error);
          })
        }
      }

      function jumpStart(){
        router.push('/start');
      }

      return{
        backgroundImg,
        archiveList,
        activeIndex,
        onReadArchive,
        jumpStart
      }
    },
}
</script>