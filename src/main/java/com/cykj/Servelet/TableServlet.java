package com.cykj.Servelet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TableServlet",urlPatterns = "/TableServlet")
public class TableServlet extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//        UserinfDao userinfDao = (UserinfDao) DaoFactory.getDao("great.db.UserinfDaoImpl");
//        ArrayList<User> list=userinfDao.selectPage(null,1,5);
////        ArrayList<User> list=userOperation.selectPage(null,1,5);
//        System.out.println("集合的长度"+list.size());
//        request.setAttribute("list",list);
//        request.getRequestDispatcher("back/jsp/userTable.jsp").forward(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
