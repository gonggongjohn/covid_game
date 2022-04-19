package com.zhd.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhd.domain.Comment;
import com.zhd.domain.Commentary;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentDao extends BaseMapper<Comment> {
    @Select("select * from comment_commentaries natural join commentary where comment_id=#{commentId}")
    List<Commentary> getRequiredCommentaries(Integer commentId);

    void addRequiredCommentary(Comment comment);

    Comment matchComment(List<Commentary> commentaryList);

}
