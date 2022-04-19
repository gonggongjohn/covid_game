package com.zhd.controller;

import com.zhd.domain.Commentary;
import com.zhd.service.ICommentaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/commentary")
public class CommentaryController {

    @Autowired
    private ICommentaryService commentaryService;

    @RequestMapping(path="/description",method = RequestMethod.POST)
    public Map<String,String> getDescription(@RequestParam("cid") Integer cid){
        Map<String,String> mp = new HashMap<>();
        String description = commentaryService.getDescription(cid);
        mp.put("description",description);
        return mp;
    }

    @RequestMapping(path = "/user",method = RequestMethod.POST)
    public List<Commentary> selectCommentariesByUserId(@RequestParam("user_id") Integer userId){
        List<Commentary> commentaries = commentaryService.selectCommentariesByUserId(userId);
        return commentaries;
    }

    @RequestMapping(path = "/record",method = RequestMethod.POST)
    public List<Commentary> selectCommentariesByRid(@RequestParam("rid") Integer rid){
        List<Commentary> commentaries = commentaryService.selectCommentariesByRid(rid);
        return commentaries;
    }

    @RequestMapping(path = "/achieve", method = RequestMethod.PUT)
    public void achieveNewCommentary(@RequestParam("user_id") Integer userId,
                                     @RequestParam("rid") Integer rid,
                                     @RequestParam("cid") Integer cid){
        commentaryService.achieveNewCommentary(userId,rid,cid);
    }

}
