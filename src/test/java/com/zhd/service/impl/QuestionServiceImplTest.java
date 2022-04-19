package com.zhd.service.impl;

import com.zhd.domain.Option;
import com.zhd.service.IQuestionService;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringRunner.class)
@SpringBootTest
class QuestionServiceImplTest {

    @Autowired
    private IQuestionService questionService;

    @Test
    public void test1(){
        List<Option> allOptions = questionService.getAllOptions(1);
        allOptions.forEach((option)-> {
            System.out.println(option);
        });
    }

    @Test
    public void test2(){
        questionService.getMessageFollowedByOneOption(3).forEach(m -> {
            System.out.println(m);
        });
    }
}