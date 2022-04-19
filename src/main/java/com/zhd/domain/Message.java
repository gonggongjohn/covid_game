package com.zhd.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("message")
public class Message implements Serializable {
    @TableId(type= IdType.AUTO)
    private Integer mid;
    private String description;
    private Integer oid;
    private Integer sequenceNumber;
}
