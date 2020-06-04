package com.cykj.Servelet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(name = "CommodityServlet" ,urlPatterns ="/CommodityServlet")
public class CommodityServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//        System.out.println("....................");
//        ShopDao shopDao = (ShopDao) DaoFactory.getDao("great.db.CommodityImpl");
//
//        ArrayList<Commodity> list= shopDao.CommodityselectPage(null,1,5);
////        ArrayList<User> list=userOperation.selectPage(null,1,5);
//        System.out.println("集合的长度"+list.size());
//        request.setAttribute("list",list);
//        request.getRequestDispatcher("back/jsp/CommodityTable.jsp").forward(request,response);
//    }
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doPost(request,response);
//    }
}
