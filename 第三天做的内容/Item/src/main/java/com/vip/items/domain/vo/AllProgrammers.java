package com.vip.items.domain.vo;

import com.vip.items.domain.entity.Programmer;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author song
 */
@Data
public class AllProgrammers implements Serializable {
    List<Programmer> p1;
    List<Programmer> p2;
}
