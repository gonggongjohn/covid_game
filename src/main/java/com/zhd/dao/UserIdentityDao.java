package com.zhd.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhd.domain.UserIdentity;
import org.springframework.stereotype.Repository;


@Repository
public interface UserIdentityDao extends BaseMapper<UserIdentity> {
}
