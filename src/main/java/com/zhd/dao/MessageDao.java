package com.zhd.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhd.domain.Message;
import org.springframework.stereotype.Repository;

@Repository
public interface MessageDao extends BaseMapper<Message> {
}
