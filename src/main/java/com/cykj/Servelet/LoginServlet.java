package com.cykj.Servelet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

//	private static final long serialVersionUID = 1L;
//	AccessDB adb = new AccessDB();
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//
//		response.setContentType("text/html;charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		request.setCharacterEncoding("UTF-8");
//		out.println("<HTML>");
//		out.println("  <HEAD><TITLE>Login</TITLE></HEAD>");
//		out.println("  <BODY><center>");
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		HttpSession session = request.getSession();
//		if(username!=null && username.length()!=0 && password!=null && password.length()!=0){
//			if(adb.readUser(username, password)) {
//				session.setAttribute("user", username);
//				out.println("�û���½�ɹ���1����Զ�ת���û���Ϣҳ��");
//				response.setHeader("Refresh", "1;URL=/etalk/user.jsp");//�˽���δ��ɣ�
//			}
//			else {
//				out.println("�û��������ڻ����������,�����µ�½��");
//				response.setHeader("Refresh", "1;URL=/etalk/login.jsp");//������ת�ص�¼����
//			}
//		}
//		else {
//			out.println("�û��������붼����Ϊ�գ���������д��");
//			response.setHeader("Refresh", "1;URL=/etalk/login.jsp");//������ת�ص�¼����
//		}
//		out.println("  </center></BODY>");
//		out.println("</HTML>");
//		out.flush();
//		out.close();
	}
}
