package com.zhd.service.impl;

import com.zhd.dao.MessageDao;
import com.zhd.dao.OptionDao;
import com.zhd.dao.QuestionDao;
import com.zhd.domain.Message;
import com.zhd.domain.Option;
import com.zhd.domain.Question;
import com.zhd.service.IQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class QuestionServiceImpl implements IQuestionService {

    @Autowired
    private QuestionDao questionDao;

    @Autowired
    private OptionDao optionDao;

    @Autowired
    private MessageDao messageDao;

    @Override
    public String getQuestionDescription(Integer qid) {
        Question question = questionDao.selectById(qid);
        return question.getDescription();
    }

    @Override
    public List<Option> getAllOptions(Integer qid) {
        Map<String,Object> condition = new HashMap<>();
        condition.put("qid",qid);
        List<Option> options = optionDao.selectByMap(condition);
        if(options == null) return null;
        options.sort(Comparator.comparingInt(o -> o.getSequenceNumber()));
        return options;
    }

    @Override
    public List<Message> getMessageFollowedByOneOption(Integer oid) {
        Map<String,Object> condition = new HashMap<>();
        condition.put("oid",oid);
        List<Message> messages = messageDao.selectByMap(condition);
        if(messages==null) return null;
        messages.sort(Comparator.comparing(m -> m.getSequenceNumber()));
        return messages;
    }
}
