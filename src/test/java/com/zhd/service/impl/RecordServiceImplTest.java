package com.zhd.service.impl;

import com.zhd.domain.Record;
import com.zhd.service.IRecordService;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringRunner.class)
@SpringBootTest
class RecordServiceImplTest {

    @Autowired
    private IRecordService recordService;

    @Test
    void createNewRecord() {
        Record record = recordService.createNewRecord(1, 1);
        System.out.println(record.getRid());
    }

    @Test
    void loadRecord(){
        System.out.println(recordService.loadRecord(1));
    }

    @Test
    void saveRecord(){
        Record record = recordService.loadRecord(1);
        record.setUserId(2);
        recordService.saveRecord(record);
    }
}