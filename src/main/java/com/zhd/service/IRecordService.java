package com.zhd.service;

import com.zhd.domain.Record;

import java.util.List;
import java.util.Map;

public interface IRecordService {
    /**
     * 在身份确定后为用户创建一个新的存档
     * 1. 查找uid对应的firstQid
     * 2. 获取最新的更新时间
     * 3. 插入新的record
     * @param uid  身份id
     * @param userId  用户id
     * @return
     */
    Record createNewRecord(Integer uid,Integer userId);

    /**
     * 根据rid查找存档
     * @param rid
     * @return
     */
    Record loadRecord(Integer rid);

    /**
     * 根据rid更新数据库中的存档信息
     * @param record  包含rid和更新的其他信息
     */
    void saveRecord(Record record);

    /**
     * 获取用户的所有存档列表
     * @param userId
     * @return
     */
    List<Record>  getUserRecordList(Integer userId);
}
