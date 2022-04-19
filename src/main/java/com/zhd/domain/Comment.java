package com.zhd.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
@TableName("comment")
public class Comment implements Serializable {
    @TableId(type = IdType.AUTO)
    private Integer commentId;
    private String description;
    @TableField(exist = false)
    private List<Commentary> requiredCommentaries; // 达成该评价所需要的评注列表
}
