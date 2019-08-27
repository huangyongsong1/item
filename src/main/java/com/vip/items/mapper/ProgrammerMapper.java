package com.vip.items.mapper;

import com.vip.items.domain.entity.Programmer;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author song
 */
public interface ProgrammerMapper {
    /**
     * 查询所有的接包人信息
     * @return 接包人信息
     */
    List<Programmer> findSixProgrammers(@Param("index") int index,@Param("size")int size);

    List<Programmer> findProgrammesrOrderByIncome();

    Integer findTotalCount();
}
