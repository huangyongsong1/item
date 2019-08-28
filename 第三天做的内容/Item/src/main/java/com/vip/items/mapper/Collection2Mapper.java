package com.vip.items.mapper;

import org.apache.ibatis.annotations.Param;

/**
 * @author song
 * 收藏接包人
 */
public interface Collection2Mapper {

    Integer save(@Param("uid") int uid,@Param("pid") int pid);

    Integer delete(@Param("uid") int uid,@Param("pid") int pid);

}
