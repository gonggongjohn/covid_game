package com.zhd.service;

import com.zhd.domain.Comment;
import com.zhd.domain.Commentary;


import java.util.List;

public interface ICommentService {
    List<Commentary> getRequiredCommentaries(Comment comment);
    void setRequiredCommentaries(Comment comment);
    Comment matchComment(List<Commentary> commentaryList);
}
