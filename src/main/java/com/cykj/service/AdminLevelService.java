package com.cykj.service;


import com.cykj.entity.AdminLevel;
import com.cykj.util.LayuiData;

public interface AdminLevelService {
//    Admin login(Admin admin);
    LayuiData selectList(AdminLevel adminLevel, int page, int pageSize);
//    int addAdmin(AdminLevel adminLevel);
    int updateAdmin(AdminLevel adminLevel);
    int deleteAdmin(int id);
}
