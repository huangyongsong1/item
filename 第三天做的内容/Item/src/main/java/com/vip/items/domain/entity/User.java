package com.vip.items.domain.entity;

import java.util.Date;
import lombok.Data;

/**
 * @author song
 */
@Data
public class User {
    /**
    * 用户id
    */
    private Integer uid;

    /**
    * 用户名
    */
    private String username;

    /**
    * 密码
    */
    private String password;

    /**
    * 邮箱
    */
    private String email;

    /**
    * 用户电话
    */
    private String utel;

    /**
    * 创建时间
    */
    private Date createTime;

    /**
    * 状态,0 存在,1 删除
    */
    private Integer isDelete;
}