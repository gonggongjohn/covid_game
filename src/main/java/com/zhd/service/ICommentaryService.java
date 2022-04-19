package com.zhd.service;

import com.zhd.domain.Commentary;

import java.util.List;

public interface ICommentaryService {
    /**
     * 根据评注cid获取评注的描述内容
     * @param cid
     * @return
     */
    String getDescription(Integer cid);

    /**
     * 查找一个用户达成的所有评注
     * @param userId
     * @return
     */
    List<Commentary> selectCommentariesByUserId(Integer userId);

    /**
     * 查找某一存档下达成的所有评注
     * @param rid
     * @return
     */
    List<Commentary> selectCommentariesByRid(Integer rid);

    /**
     * 用户在某个存档中达成某个评注时，
     * 1.在user_commentaries表中新增(user_id,cid)记录
     * 2.在record_commentaries表中新增(rid,cid)记录
     * @param userId
     * @param rid
     * @param cid
     */
    void achieveNewCommentary(Integer userId,Integer rid,Integer cid);
}
