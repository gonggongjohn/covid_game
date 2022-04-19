package com.zhd.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.beans.Transient;
import java.io.Serializable;

@Data
@TableName("user_identity")
public class UserIdentity implements Serializable {
    @TableId(type= IdType.AUTO)
    private Integer uid;
    private String uname;
    private String description;
    @TableField("first_qid")
    private Integer firstQid;
    private String pic;
}
