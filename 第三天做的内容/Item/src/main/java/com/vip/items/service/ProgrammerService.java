package com.vip.items.service;

import com.vip.items.domain.entity.Programmer;
import com.vip.items.domain.vo.AllProgrammers;
import com.vip.items.domain.vo.ProgrammerPageVo;
import com.vip.items.utils.ProgrammerBean;

import java.util.List;

/**
 * @author song
 */
public interface ProgrammerService {
    /**
     * 查询所有接包人信息
     * @return 接包人信息
     */
    ProgrammerPageVo<Programmer> findSixProgrammers(int page);

    /**
     *  根据最近收入排序，取前10
     * @return 最近收入前10的接包人
     */
    List<Programmer> findProgrammersOrderByIncome();

    /**
     *  查询所有接包人和最近收入前十名
     * @return 以上的两种数据
     */
    ProgrammerBean findProgrammers();

    AllProgrammers findAllProgrammers();

    Integer saveProgrammer(int uid,int pid);

    Integer deleteProgrammer(int uid,int pid);

    AllProgrammers searchProgrammers(String keyword);
}
