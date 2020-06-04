package com.cykj.controller;

import com.alibaba.fastjson.JSON;
import com.cykj.entity.Admin;
import com.cykj.service.AdminService;
import com.cykj.util.LayuiData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller
@RequestMapping("/adminContrller")
public class AdminContrller {

    @Autowired
    private AdminService adminService;
    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response,String username,String password) {
        System.out.println("---------------2222");
        Admin admin = new Admin();
        admin.setPass(password);
        admin.setAcount(username);
        Admin adminLog = adminService.login(admin);
        Map<String, Object> map = null;
        ModelAndView mav = new ModelAndView();
        if (adminLog != null) {
            System.out.println(adminLog);
            mav.setViewName("back/jsp/admin");
            return mav;
        }else {
            return null;
        }
    }


    @RequestMapping("/selectAdmin")
    @ResponseBody
    public String selectAdmin(HttpServletRequest request, HttpServletResponse response,Admin admin,String page,String limit) {
        System.out.println("page-----------:"+page+"    ---------:"+Integer.parseInt(limit));
        LayuiData layuiData = adminService.selectList(admin, Integer.parseInt(page),Integer.parseInt(limit));
        return JSON.toJSONString(layuiData);
    }




    @RequestMapping("/addAdmin")
    @ResponseBody
    public String addAdmin(HttpServletRequest request, HttpServletResponse response,Admin admin) {

        System.out.println("admin-----------"+admin);
        int res=adminService.addAdmin(admin);
    return String.valueOf(res);
    }


    @RequestMapping("/updateAdmin")
    @ResponseBody
    public String updateAdmin(HttpServletRequest request, HttpServletResponse response,Admin admin) {

        System.out.println("admin-----------"+admin.getId());
        int res=adminService.updateAdmin(admin);
        return String.valueOf(res);
    }


    @RequestMapping("/deleteAdmin")
    @ResponseBody
    public String deleteAdmin(HttpServletRequest request, HttpServletResponse response, String id) {
        System.out.println("id"+id);
        int res=adminService.deleteAdmin(Integer.parseInt(id));

        return String.valueOf(res);
    }

}
