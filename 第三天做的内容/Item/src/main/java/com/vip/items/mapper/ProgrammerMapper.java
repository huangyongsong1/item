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

    List<Programmer> findAllProgrammers1();

    List<Programmer> findAllProgrammers2();

    List<Programmer> searchAllProgrammers1(@Param("keyword") String keyword);

    List<Programmer> searchAllProgrammers2(@Param("keyword") String keyword);
}
