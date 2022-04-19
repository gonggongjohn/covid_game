package com.zhd.controller;

import com.zhd.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private IUserService userService;


    /**
     * 用户登录
     * @param request : username , password
     * @return  { "user_id":userId }  -1表示登录失败
     */
    @RequestMapping("/login")
    public Map<String,Object> login(HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        Integer userId = userService.login(username, password);
        Map<String,Object> mp = new HashMap<>();
        mp.put("user_id",userId);
        if(userId==-1) return mp;
        session.setAttribute("userId",userId);
        Date date = new Date();
        String ip = request.getRemoteAddr();
        userService.updateLoginInfo(userId,date,ip);
        mp.put("ip",ip);
        mp.put("login_time",date);
        return mp;
    }


    /**
     * 用户登出
     * @param request
     */
    @RequestMapping("/logout")
    public void logout(HttpServletRequest request){
        request.getSession().invalidate();
    }

    /**
     * 用户注册
     * @param request  : username , password
     * @return  {"user_id": userId}  -1 表示注册失败
     */
    @RequestMapping("/register")
    public Map<String,Object> regist(HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        Map<String,Object> mp = new HashMap<>();
        Integer userId = userService.register(username,password);
        mp.put("user_id",userId);
        return mp;
    }
}
