package com.zhd.service.impl;

import com.zhd.dao.RecordDao;
import com.zhd.dao.UserIdentityDao;
import com.zhd.domain.Record;
import com.zhd.domain.UserIdentity;
import com.zhd.service.IRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class RecordServiceImpl implements IRecordService {

    @Autowired
    private RecordDao recordDao;

    @Autowired
    private UserIdentityDao userIdentityDao;

    @Override
    public Record createNewRecord(Integer uid, Integer userId) {
        UserIdentity userIdentity = userIdentityDao.selectById(uid);
        Record record = new Record();
        record.setUserId(userId);
        record.setUid(uid);
        record.setQid(userIdentity.getFirstQid());
        record.setUpdateTime(new Date());
        recordDao.insert(record);
        return record;
    }

    @Override
    public Record loadRecord(Integer rid) {
        return recordDao.selectById(rid);
    }

    @Override
    public void saveRecord(Record record) {
        record.setUpdateTime(new Date());
        recordDao.updateById(record);
    }

    @Override
    public List<Record> getUserRecordList(Integer userId) {
        return recordDao.getUserRecords(userId);
    }
}
