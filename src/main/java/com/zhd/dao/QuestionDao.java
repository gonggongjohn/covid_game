package com.zhd.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhd.domain.Question;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionDao extends BaseMapper<Question> {
}
