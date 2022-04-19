package com.zhd.service.impl;

import com.zhd.dao.CommentaryDao;
import com.zhd.domain.Commentary;
import com.zhd.service.ICommentaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentaryServiceImpl implements ICommentaryService {

    @Autowired
    private CommentaryDao commentaryDao;

    @Override
    public String getDescription(Integer cid) {
        Commentary commentary = commentaryDao.selectById(cid);
        return commentary.getDescription();
    }

    @Override
    public List<Commentary> selectCommentariesByUserId(Integer userId) {
        List<Commentary> commentaries = commentaryDao.getCommentariesByUserId(userId);
        return commentaries;
    }

    @Override
    public List<Commentary> selectCommentariesByRid(Integer rid) {
        List<Commentary> commentaries = commentaryDao.getCommentariesByRid(rid);
        return commentaries;
    }

    @Override
    public void achieveNewCommentary(Integer userId, Integer rid, Integer cid) {
        commentaryDao.addRecordCommentaries(rid, cid);
        commentaryDao.addUserCommentaries(userId,cid);
    }
}
