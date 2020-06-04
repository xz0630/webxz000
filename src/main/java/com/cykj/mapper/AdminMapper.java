package com.cykj.mapper;

import com.cykj.entity.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface AdminMapper {
    Admin login(Admin admin);
    int addAdmin(Admin admin);
    int updateAdmin(Admin admin);
    List<Admin> selectList(@Param("e") Admin admin, @Param("start") int start, @Param("pageSize") int pageSize);
    int selectListCount(@Param("e") Admin admin);
    int deleteAdmin(int id);

}
