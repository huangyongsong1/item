package com.vip.items.controller;

import com.vip.items.utils.Result;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author song
 */
@RestController
@RequestMapping("/collect")
public class CollectController {

    @RequestMapping("/programmers")
    public Result findProgrammersCollect(){
        return null;
    }

    @RequestMapping("/projects")
    public Result findProjectsCollect(){
        return null;
    }
}
