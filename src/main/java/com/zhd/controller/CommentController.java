package com.zhd.controller;


import com.zhd.config.ApplicationValues;
import com.zhd.config.RestMock;
import com.zhd.domain.Commentary;
import com.zhd.service.ICommentaryService;
import com.zhd.service.IRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private ICommentaryService commentaryService;

    @Autowired
    private RestMock restMock;

    @Autowired
    private ApplicationValues applicationValues;

    @RequestMapping("/getAndSaveComment")
    public String getAndSaveComment(@RequestParam("rid")Integer rid){
        List<Commentary> commentaries = commentaryService.selectCommentariesByRid(rid);
        String uri = "http://"+applicationValues.getHost()+":"+applicationValues.getPort();
        List<String> jsonList = new ArrayList<>();
        for(Commentary commentary:commentaries){
            jsonList.add(commentary.getDescription());
        }
        Map<String,Object> jsonMap = restMock.sendPost(uri, jsonList);
        String comment = null;
        if(jsonMap.get("status").equals(1)){
            comment = jsonMap.get("comment").toString();
        }
        return comment;
    }
}
