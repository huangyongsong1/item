package com.vip.items.domain.entity;

import lombok.Data;

/**
 * @author song
 */
@Data
public class Programmer {
    /**
    * 程序猿id
    */
    private Integer pid;

    /**
    * 程序猿名字
    */
    private String pname;

    /**
    * 图片
    */
    private String pimage;

    /**
    * 擅长内容
    */
    private String adept;

    /**
    * 完成过的项目数
    */
    private Integer finish;

    /**
    * 人气
    */
    private Integer moods;

    /**
    * 最近收入
    */
    private Integer income;

    /**
    * 积分
    */
    private Integer grade;

    /**
    * 地址
    */
    private String location;

    /**
    * 简介
    */
    private String introduce;

    /**
    * 一级分类id
    */
    private Integer cateId;

    /**
    * 三级分类id
    */
    private Integer menu3Id;

    /**
    * 状态,0 存在,1 删除
    */
    private Integer isDelete;
}