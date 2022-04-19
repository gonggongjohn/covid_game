package com.zhd.service.impl;

import com.zhd.service.IUserService;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringRunner.class)
@SpringBootTest
class UserServiceImplTest {

    @Autowired
    private IUserService userService;

    @Test
    void login() {
        System.out.println(userService.login("admin","aa123456"));
    }

    @Test
    void updateInfo(){
        userService.updateLoginInfo(1,new Date(),"190");
    }

    @Test
    void register(){
        Integer userid = userService.register("test", "123456");
        System.out.println(userid);
    }
}