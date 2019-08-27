package com.vip.items.domain.entity;

import lombok.Data;

/**
 * @author song
 */
@Data
public class Grades {
    /**
    * 评分id
    */
    private Integer gradesId;

    /**
    * 专业程度分
    */
    private Double grade1;

    /**
    * 完成质量分
    */
    private Double grade2;

    /**
    * 服务态度分
    */
    private Double grade3;

    /**
    * 反馈速度分
    */
    private Double grade4;

    /**
    * 程序猿id
    */
    private Integer pid;
}