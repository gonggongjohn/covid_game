package com.zhd.service.impl;

import com.zhd.dao.CommentDao;
import com.zhd.domain.Comment;
import com.zhd.domain.Commentary;
import com.zhd.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements ICommentService {

    @Autowired
    private CommentDao commentDao;

    @Override
    public List<Commentary> getRequiredCommentaries(Comment comment) {
        List<Commentary> requiredCommentaries = commentDao.getRequiredCommentaries(comment.getCommentId());
        comment.setRequiredCommentaries(requiredCommentaries);
        return requiredCommentaries;
    }

    @Override
    public void setRequiredCommentaries(Comment comment) {
        commentDao.addRequiredCommentary(comment);
    }

    @Override
    public Comment matchComment(List<Commentary> commentaryList) {
        return commentDao.matchComment(commentaryList);
    }
}
