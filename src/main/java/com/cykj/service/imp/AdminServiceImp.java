package com.cykj.service.imp;


import com.cykj.entity.Admin;
import com.cykj.mapper.AdminMapper;
import com.cykj.service.AdminService;
import com.cykj.util.LayuiData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImp implements AdminService {

    @Autowired
    public AdminMapper adminMapper;

    @Override
    public Admin login(Admin admin) {
        return adminMapper.login(admin);
    }

    @Override
    public LayuiData selectList(Admin admin, int page, int pageSize) {
        int start = (page - 1) * pageSize;//计算出起始查询位置
        List<Admin> list = adminMapper.selectList(admin, start, pageSize);
        int count = adminMapper.selectListCount(admin);

        LayuiData layuiData = new LayuiData();
        if (list.size() > 0) {
            layuiData.setCode(0);
            layuiData.setMsg("");
            layuiData.setCount(count);
            layuiData.setData(list);
            System.out.println(admin);
        } else {
            layuiData.setCode(1);
            layuiData.setMsg("查询失败");
        }
        return layuiData;
    }

    @Override
    public int addAdmin(Admin admin) {
        return adminMapper.addAdmin(admin);
    }

    @Override
    public int updateAdmin(Admin admin) {
        return adminMapper.updateAdmin(admin);
    }

    @Override
    public int deleteAdmin(int id) {
        return adminMapper.deleteAdmin(id);
    }
}
