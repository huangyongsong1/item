package com.vip.items.service.impl;

import com.vip.items.domain.entity.Programmer;
import com.vip.items.domain.vo.AllProgrammers;
import com.vip.items.domain.vo.ProgrammerPageVo;
import com.vip.items.mapper.Collection2Mapper;
import com.vip.items.mapper.ProgrammerMapper;
import com.vip.items.service.ProgrammerService;
import com.vip.items.utils.Page;
import com.vip.items.utils.ProgrammerBean;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author song
 */
@Service
public class ProgrammerServiceImpl implements ProgrammerService {

    @Resource
    ProgrammerMapper programmerMapper;
    @Resource
    Collection2Mapper collection2Mapper;

    @Override
    public ProgrammerPageVo<Programmer> findSixProgrammers(int page) {
        Page<Programmer> programmerPage = new Page<>();
        programmerPage.setPageSize(6);
        programmerPage.setTotalCount(programmerMapper.findTotalCount());
        int pageCount = programmerPage.getPageCount();
        List<Programmer> sixProgrammers = programmerMapper.findSixProgrammers((page - 1) * 6, 6);
        ProgrammerPageVo<Programmer> programmerPageVos = new ProgrammerPageVo<Programmer>(sixProgrammers,page,6,pageCount);
        return programmerPageVos;
    }

    @Override
    public List<Programmer> findProgrammersOrderByIncome() {
        return programmerMapper.findProgrammesrOrderByIncome();
    }

    @Override
    public ProgrammerBean findProgrammers(){
        ProgrammerBean programmerBean = new ProgrammerBean();
//        programmerBean.setAllProgrammers(findSixProgrammers());
        programmerBean.setOrderProgrammers(findProgrammersOrderByIncome());
        return programmerBean;
    }

    @Override
    public AllProgrammers findAllProgrammers() {
        List<Programmer> allProgrammers1 = programmerMapper.findAllProgrammers1();
        List<Programmer> allProgrammers2 = programmerMapper.findAllProgrammers2();
        AllProgrammers allProgrammers = new AllProgrammers();
        allProgrammers.setP1(allProgrammers1);
        allProgrammers.setP2(allProgrammers2);
        return allProgrammers;
    }

    @Override
    public Integer saveProgrammer(int uid, int pid) {
        return collection2Mapper.save(uid,pid);
    }

    @Override
    public Integer deleteProgrammer(int uid, int pid) {
        return collection2Mapper.delete(uid,pid);
    }

    @Override
    public AllProgrammers searchProgrammers(String keyword) {
        AllProgrammers allProgrammers = new AllProgrammers();
        allProgrammers.setP1(programmerMapper.searchAllProgrammers1(keyword));
        allProgrammers.setP2(programmerMapper.searchAllProgrammers2(keyword));
        return allProgrammers;
    }


}
