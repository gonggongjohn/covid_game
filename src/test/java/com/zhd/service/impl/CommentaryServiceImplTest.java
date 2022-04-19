package com.zhd.service.impl;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringRunner.class)
@SpringBootTest
class CommentaryServiceImplTest {

    @Autowired
    private CommentaryServiceImpl commentaryService;

    @Test
    void selectCommentariesByUserId() {
        commentaryService.selectCommentariesByUserId(3).forEach((c)->{
            System.out.println(c);
        });
    }

    @Test
    void achieveNewCommentary(){
        commentaryService.achieveNewCommentary(1,2,3);
    }
}