package com.cykj.service.imp;


import com.cykj.entity.AdminLevel;
import com.cykj.mapper.AdminMapperLevel;
import com.cykj.service.AdminLevelService;
import com.cykj.util.LayuiData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminLevelService")
public class AdminLevelServiceImp implements AdminLevelService {

    @Autowired
    public AdminMapperLevel adminMapperLevel;

    @Override
    public LayuiData selectList(AdminLevel adminLevel, int page, int pageSize) {
        int start = (page - 1) * pageSize;//计算出起始查询位置
        List<AdminLevel> list = adminMapperLevel.selectList(adminLevel, start, pageSize);
        int count = adminMapperLevel.selectListCount(adminLevel);

        LayuiData layuiData = new LayuiData();
        if (list.size() > 0) {
            layuiData.setCode(0);
            layuiData.setMsg("");
            layuiData.setCount(count);
            layuiData.setData(list);
            System.out.println(adminLevel);
        } else {
            layuiData.setCode(1);
            layuiData.setMsg("查询失败");
        }
        return layuiData;
    }

    @Override
    public int updateAdmin(AdminLevel adminLevel) {
        return adminMapperLevel.updateAdmin(adminLevel);
    }

    @Override
    public int deleteAdmin(int id) {
        return adminMapperLevel.deleteAdmin(id);
    }
}
