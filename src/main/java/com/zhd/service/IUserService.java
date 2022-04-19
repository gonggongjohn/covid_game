package com.zhd.service;

import java.util.Date;

public interface IUserService {

    /**
     * 用户注册，其他注册信息待定
     * @param username 用户名
     * @param password 密码
     * @return  user_id  如果用户名已存在或注册失败，则返回-1
     */
    Integer register(String username,String password);

    /**
     * 用户登录
     * @param username  用户名
     * @param password  密码
     * @return  user_id 不存在则返回-1
     */
    Integer login(String username,String password);

    /**
     * 更新用户的登录时间和登录IP
     * @param userId 用户id
     * @param date   更新的登录时间
     * @param ip     更新的IP地址
     */
    void updateLoginInfo(Integer userId, Date date,String ip);


}
