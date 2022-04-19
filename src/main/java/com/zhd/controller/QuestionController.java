package com.zhd.controller;

import com.zhd.domain.Message;
import com.zhd.domain.Option;
import com.zhd.service.IQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/question")
public class QuestionController {

    @Autowired
    private IQuestionService questionService;

    @RequestMapping("/description")
    public Map<String,String> getQuestionDescription(@RequestParam("qid") Integer qid){
        String description = questionService.getQuestionDescription(qid);
        Map<String,String> mp = new HashMap<>();
        mp.put("description",description);
        return mp;
    }

    @RequestMapping(path = "/options",method = RequestMethod.POST)
    public List<Option> getAllOptionsOfOneQuestion(@RequestParam("qid")Integer qid){
        List<Option> allOptions = questionService.getAllOptions(qid);
        return allOptions;
    }

    @RequestMapping(path="/message",method = RequestMethod.POST)
    public List<Message> getMessageList(@RequestParam("oid")Integer oid){
        List<Message> mlist = questionService.getMessageFollowedByOneOption(oid);
        return mlist;
    }
}
