package com.zhd.controller;

import com.zhd.domain.Record;
import com.zhd.service.IRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/record")
@CrossOrigin
public class RecordController {

    @Autowired
    private IRecordService recordService;

    /**
     * Record
     * {
     *     "rid": rid,
     *     "uid": uid,
     *     "qid": qid,
     *     "userId": userId,
     *     "updateTime": "2022-03-16T14:04:56.490+00:00"
     * }
     */

    /**
     * 在角色身份初次确定后创建存档
     * @param uid
     * @param userId
     * @return  record
     */
    @RequestMapping("/create")
    public Record createNewRecord(@RequestParam("uid") Integer uid,
                                  @RequestParam("user_id") Integer userId){
        Record record = recordService.createNewRecord(uid, userId);
        return record;
    }

    /**
     * 读取存档
     * @param rid
     * @return
     */
    @RequestMapping("/load")
    public Record loadRecord(@RequestParam("rid") Integer rid){
        Record record = recordService.loadRecord(rid);
        return record;
    }

    /**
     * 存档
     * @param rid  当前存档的id
     * @param uid  该档案的角色身份id
     * @param qid  当前进度的问题id
     * @param userId  用户id
     */
    @RequestMapping("/save")
    public void saveRecord(@RequestParam("rid") Integer rid,
                           @RequestParam("uid") Integer uid,
                           @RequestParam("qid") Integer qid,
                           @RequestParam("user_id") Integer userId){
        Record record = new Record(rid,uid,qid,userId,new Date());
        recordService.saveRecord(record);
    }

    @RequestMapping("/getRecordList")
    public List<Record> getRecordList(@RequestParam("user_id")Integer userId){
        return recordService.getUserRecordList(userId);
    }
}
