package com.cykj.controller;

import com.alibaba.fastjson.JSON;
import com.cykj.entity.AdminLevel;
import com.cykj.service.AdminLevelService;
import com.cykj.util.LayuiData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/adminLevelContrller")

public class AdminLevelContrller {

    @Autowired
    private AdminLevelService adminLevelService;

    @RequestMapping("/selectAdminLevel")
    @ResponseBody
    public String selectAdmin(HttpServletRequest request, HttpServletResponse response, AdminLevel adminLevel, String page, String limit) {
        System.out.println("page-----------:"+page+"    ---------:"+Integer.parseInt(limit));
        LayuiData layuiData = adminLevelService.selectList(adminLevel, Integer.parseInt(page),Integer.parseInt(limit));
        return JSON.toJSONString(layuiData);
    }

    @RequestMapping("/updateAdmin")
    @ResponseBody
    public String updateAdmin(HttpServletRequest request, HttpServletResponse response, AdminLevel adminLevel) {

        System.out.println("admin-----------"+adminLevel.getId());
        int res=adminLevelService.updateAdmin(adminLevel);
        return String.valueOf(res);
    }


    @RequestMapping("/deleteAdmin")
    @ResponseBody
    public String deleteAdmin(HttpServletRequest request, HttpServletResponse response, String id) {
        System.out.println("id"+id);
        int res=adminLevelService.deleteAdmin(Integer.parseInt(id));
        return String.valueOf(res);
    }
}
