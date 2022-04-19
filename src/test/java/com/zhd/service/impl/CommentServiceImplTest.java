package com.zhd.service.impl;

import com.zhd.domain.Comment;
import com.zhd.domain.Commentary;
import com.zhd.service.ICommentService;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringRunner.class)
@SpringBootTest
class CommentServiceImplTest {

    @Autowired
    private ICommentService commentService;

    @Test
    void getRequiredCommentaries() {
        Comment comment = new Comment();
        comment.setCommentId(1);
        List<Commentary> requiredCommentaries = commentService.getRequiredCommentaries(comment);
        for(Commentary commentary:requiredCommentaries)
            System.out.println(commentary);
    }

    @Test
    void setRequiredCommentaries() {
        Comment comment = new Comment();
        comment.setCommentId(3);
        List<Commentary> commentaries = new ArrayList<>();
        for(int i=0;i<5;i++) {
            Commentary commentary = new Commentary();
            commentary.setCid(i*10+1);
            commentary.setDescription("test");
            commentaries.add(commentary);
        }
        comment.setRequiredCommentaries(commentaries);
        commentService.setRequiredCommentaries(comment);
    }

    @Test
    void test(){
        List<Commentary> commentaries = new ArrayList<>();
        Commentary c1 = new Commentary();
        c1.setCid(3);
        Commentary c2 = new Commentary();
        c2.setCid(4);
        Commentary c3 = new Commentary();
        c2.setCid(5);
        commentaries.add(c1);
        commentaries.add(c2);
        commentaries.add(c3);
        Comment comment = commentService.matchComment(commentaries);
        System.out.println(comment);
    }
}