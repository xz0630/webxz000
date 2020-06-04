package com.cykj.service;


import com.cykj.entity.Admin;
import com.cykj.util.LayuiData;

public interface AdminService {
    Admin login(Admin admin);
    LayuiData selectList(Admin admin, int page, int pageSize);
    int addAdmin(Admin admin);
    int updateAdmin(Admin admin);
    int deleteAdmin(int id);
}
