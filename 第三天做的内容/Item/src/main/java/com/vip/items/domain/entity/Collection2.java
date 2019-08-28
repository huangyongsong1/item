package com.vip.items.domain.entity;

import java.util.Date;
import lombok.Data;

/**
 * @author song
 */
@Data
public class Collection2 {
    /**
    * 收藏程序猿id
    */
    private Integer c2id;

    /**
    * 用户id
    */
    private Integer uid;

    /**
    * 程序猿id
    */
    private Integer pid;

    /**
    * 创建时间
    */
    private Date createTime;

    /**
    * 状态,0 存在,1 删除
    */
    private Integer isDelete;
}