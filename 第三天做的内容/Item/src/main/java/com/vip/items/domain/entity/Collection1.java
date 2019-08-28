package com.vip.items.domain.entity;

import java.util.Date;
import lombok.Data;

/**
 * @author song
 */
@Data
public class Collection1 {
    /**
    * 收藏id
    */
    private Integer cid;

    /**
    * 用户id
    */
    private Integer uid;

    /**
    * 项目id
    */
    private Integer proid;

    /**
    * 收藏时间
    */
    private Date createTime;

    /**
    * 状态,0 存在,1 删除
    */
    private Integer isDelete;
}