package com.zhd.service;

import com.zhd.domain.Message;
import com.zhd.domain.Option;

import java.util.List;

public interface IQuestionService {
    /**
     * 根据qid获取问题描述
     * @param qid
     * @return  问题描述文本
     */
    String getQuestionDescription(Integer qid);

    /**
     * 获得qid问题的所有选项
     * @param qid
     * @return  该问题对应的选项集合，可以查看选项的oid、描述、在该问题中的编号(order)、下一个问题的qid以及评注cid
     */
    List<Option> getAllOptions(Integer qid);

    /**
     * 获取指定oid的选项之后会跟随的叙述信息，按message的order排序
     * @param oid
     * @return
     */
    List<Message> getMessageFollowedByOneOption(Integer oid);
}
