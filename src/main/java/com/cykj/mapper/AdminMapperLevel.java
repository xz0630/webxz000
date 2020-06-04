package com.cykj.mapper;

import com.cykj.entity.AdminLevel;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface AdminMapperLevel {
//    Admin login(AdminLevel adminLevel);
//    int addAdmin(AdminLevel adminLevel);
    int updateAdmin(AdminLevel adminLevel);
    List<AdminLevel> selectList(@Param("e") AdminLevel adminLevel, @Param("start") int start, @Param("pageSize") int pageSize);
    int selectListCount(@Param("e") AdminLevel adminLevel);
    int deleteAdmin(int id);

}
