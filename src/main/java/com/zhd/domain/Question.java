package com.zhd.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("question")
public class Question implements Serializable {
    @TableId(type = IdType.AUTO)
    private Integer qid;
    private String description;
    private Integer uid;
}
