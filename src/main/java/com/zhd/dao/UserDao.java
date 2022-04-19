package com.zhd.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhd.domain.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao extends BaseMapper<User> {

}
