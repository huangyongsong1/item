package com.vip.items.utils;

import com.vip.items.domain.entity.Programmer;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author song
 * 接包人首页中接包人需要展示的信息
 */
@Data
public class ProgrammerBean implements Serializable {
    Page<Programmer> page;
    List<Programmer> orderProgrammers;
}
