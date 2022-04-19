package com.zhd.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("record")
public class Record {
    @TableId(type= IdType.AUTO)
    private Integer rid;
    private Integer uid;
    private Integer qid;
    @TableField("user_id")
    private Integer userId;
    @TableField("update_time")
    private Date updateTime;
    @TableField(exist = false)
    private String uname;

    public Record() {
    }

    public Record(Integer rid, Integer uid, Integer qid, Integer userId, Date updateTime) {
        this.rid = rid;
        this.uid = uid;
        this.qid = qid;
        this.userId = userId;
        this.updateTime = updateTime;
    }
}
