package com.zhd.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhd.domain.Record;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecordDao extends BaseMapper<Record> {
    @Select("select rid,uid,qid,user_id,update_time,uname from record natural join user_identity where user_id=#{user_id}")
    List<Record> getUserRecords(Integer user_id);
}
