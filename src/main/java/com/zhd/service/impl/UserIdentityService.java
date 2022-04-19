package com.zhd.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.zhd.dao.UserIdentityDao;
import com.zhd.domain.UserIdentity;
import com.zhd.service.IUserIdentityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;

@Service
public class UserIdentityService implements IUserIdentityService {

    @Autowired
    private UserIdentityDao userIdentityDao;

    @Override
    public Integer decideUserIdentity(List<Integer> scale, List<Integer> choice) {
        int i = new Random().nextInt(2);
        if(choice.get(0)==1){
            if(choice.get(1)==3){
                if(scale.get(0)>4||scale.get(1)>4){
                    return i==0?1:5;
                }
                return 4;
            }else if(choice.get(1)==4){
                return i==0?1:5;
            }
        }else if(choice.get(0)==2){
            if(choice.get(1)==3){
                if(choice.get(2)==5)
                    return scale.get(3)>4||scale.get(2)<4? 2:3;
                else if(choice.get(2)==6)
                    return scale.get(3)>4||scale.get(2)<4? 2
                            :(i==0?3:6);
            }else if(choice.get(1)==4)
                return scale.get(0)<4||scale.get(1)<4?6:2;
        }
        return -1;
    }

    @Override
    public UserIdentity getUserIdentity(Integer uid) {
        UserIdentity userIdentity = userIdentityDao.selectById(uid);
        return userIdentity;
    }

    @Override
    public void savePic(Integer uid, String pic) {
        UserIdentity userIdentity = userIdentityDao.selectById(uid);
        userIdentity.setPic(pic);
        userIdentityDao.updateById(userIdentity);
    }

    @Override
    public List<UserIdentity> getAllUserIdentities(){
        return  userIdentityDao.selectList(new QueryWrapper<>());
    }
}
