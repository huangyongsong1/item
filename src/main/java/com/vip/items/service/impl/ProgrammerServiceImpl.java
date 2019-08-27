package com.vip.items.service.impl;

import com.vip.items.domain.entity.Programmer;
import com.vip.items.domain.vo.ProgrammerPageVo;
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
}
