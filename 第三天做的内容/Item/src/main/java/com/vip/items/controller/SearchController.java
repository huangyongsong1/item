package com.vip.items.controller;

import com.vip.items.domain.vo.AllProgrammers;
import com.vip.items.service.ProgrammerService;
import com.vip.items.utils.Result;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author song
 */
@RestController
@RequestMapping("/search")
public class SearchController {

    @Resource
    ProgrammerService programmerService;

    @RequestMapping(value = "/programmers",params = "keyword")
    public Result searchProgrammers(String keyword){
        try {
            AllProgrammers allProgrammers = programmerService.searchProgrammers(keyword);
            return Result.success(allProgrammers);
        } catch (Exception e) {
            return Result.error();
        }
    }
}
