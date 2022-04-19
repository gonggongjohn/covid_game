package com.zhd.controller;

import com.zhd.domain.UserIdentity;
import com.zhd.service.IUserIdentityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/user_identity")
@CrossOrigin
public class UserIdentityController {

    @Autowired
    private IUserIdentityService userIdentityService;

    @RequestMapping("/choose")
    public Map<String,Object> decideUserIdentity(@RequestParam("scale")List<Integer> scale,
                                                 @RequestParam("choice")List<Integer> choice){
        Integer uid = userIdentityService.decideUserIdentity(scale, choice);
        Map<String,Object> mp = new HashMap<>();
        mp.put("uid",uid);
        return mp;
    }

    @RequestMapping(path = "/getUserIdentity", method = RequestMethod.POST)
    public UserIdentity getUserIdentity(@RequestParam("uid")Integer uid){
        return userIdentityService.getUserIdentity(uid);
    }

    @RequestMapping("/getIdentityList")
    public List<UserIdentity> getAllIndentities(){
        return userIdentityService.getAllUserIdentities();
    }

}
