package com.vip.items.domain.entity;

import lombok.Data;

/**
 * @author song
 */
@Data
public class Navigation {
    /**
    * 导航id
    */
    private Integer navId;

    /**
    * 导航名
    */
    private String navName;

    /**
    * 状态,0 存在,1删除
    */
    private Integer isDelete;
}