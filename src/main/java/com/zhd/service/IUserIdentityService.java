package com.zhd.service;

import com.zhd.domain.UserIdentity;

import java.util.List;

public interface IUserIdentityService {

    /**
     * 根据量表题和选择题的结果来决定身份类别
     * @param scale
     * @param choice
     * @return
     */
    Integer decideUserIdentity(List<Integer> scale,List<Integer> choice);


    /**
     * 根据uid获取获取身份信息和首问题qid
     * @param uid
     * @return
     */
    UserIdentity getUserIdentity(Integer uid);

    /**
     * 将图片存到相应的uid身份中
     * @param uid
     * @param pic
     */
    void savePic(Integer uid,String pic);


    /**
     * 获取所有的角色身份信息
     * @return
     */
    List<UserIdentity> getAllUserIdentities();
}
