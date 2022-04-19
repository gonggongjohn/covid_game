package com.zhd.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;


@Data
@TableName("commentary")
public class Commentary implements Serializable {
    @TableId(type = IdType.AUTO)
    private Integer cid;
    private String description;
}
