package com.zhd.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.zhd.dao.UserDao;
import com.zhd.domain.User;
import com.zhd.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserDao userDao;

    @Override
    public Integer register(String username, String password) {
        User user = userDao.selectOne(Wrappers.<User>query().eq("username", username));
        if(user!=null) return -1;
        user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setCreateTime(new Date());
        userDao.insert(user);
        return userDao.selectOne(Wrappers.<User>query().eq("username", username)).getUserId();
    }

    @Override
    public Integer login(String username, String password) {
        Map<String,Object> condition = new HashMap<>();
        condition.put("username",username);
        condition.put("password",password);
        List<User> users = userDao.selectByMap(condition);
        if(users==null||users.size()!=1) return -1;
        return users.get(0).getUserId();
    }

    @Override
    public void updateLoginInfo(Integer userId, Date date, String ip) {
        User user = userDao.selectById(userId);
        user.setIp(ip);
        user.setLoginTime(date);
        userDao.updateById(user);
    }
}
