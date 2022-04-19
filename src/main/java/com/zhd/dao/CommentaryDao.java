package com.zhd.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhd.domain.Commentary;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentaryDao extends BaseMapper<Commentary> {
    @Select("select cid,description from commentary natural join user_commentaries where user_id=#{user_id}")
    public List<Commentary> getCommentariesByUserId(Integer user_id);

    @Select("select cid,description from commentary natural join record_commentaries where rid=#{rid}")
    public List<Commentary> getCommentariesByRid(Integer rid);

    @Insert("replace into user_commentaries values(#{user_id},#{cid})")
    public void addUserCommentaries(Integer user_id ,Integer cid);

    @Insert("replace into record_commentaries values(#{rid},#{cid})")
    public void addRecordCommentaries(Integer rid ,Integer cid);
}
