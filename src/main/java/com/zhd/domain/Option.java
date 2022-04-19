package com.zhd.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("`option`")
public class Option implements Serializable {
    @TableId(type= IdType.AUTO)
    private Integer oid;
    private String description;
    @TableField("next_qid")
    private Integer nextQid;
    private Integer qid;
    private Integer sequenceNumber;
    private Integer cid;
}
