package com.cykj.Servelet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TestServlet",urlPatterns = "/TestServlet")
public class TestServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("表单触发TestServlet doPost");

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("TestServlet doGet");

//		People  p = new People();
//		p.setName("小王");
//		p.setAge(25);
//
//		HashMap<String,People>hashmap = new HashMap<String,People>();
//		hashmap.put("p1",new People("小王",25));
//		hashmap.put("p2",new People("小李",26));
//		hashmap.put("p3",new People("小张",27));
//		request.setAttribute("map",hashmap);
//		System.out.println("TestServlet request = "+request);
//		request.getRequestDispatcher("/back/jsp/res.jsp").forward(request, response);
//		response.sendRedirect("/back/jsp/res.jsp");

		//session

//		HttpSession session = request.getSession();
//		request.getCookies();
//		System.out.println("sessionID ="+session.getId());

//		System.out.println(C3P0Util.getInstance().getConnection());
//		Connection conn =  C3P0Util.getInstance().getConnection();

//		try
//		{
//			QueryRunner qr = new QueryRunner(C3P0Util.getInstance().getDataSource());
//			Object [] arr = {"AF%"};
//			List<ZySc> list = qr.query("select * from zy_sc where sno like ?", new BeanListHandler<ZySc>(ZySc.class), arr);
//			System.out.println(list.size());
//
//			C3P0Util.getInstance().getConnection().setAutoCommit(false);
//
//			Object [] arr2 = {"NF%"};
//			int i = qr.update("delete from zy_sc where sno like ?", arr2);
//			System.out.println("i = "+i);
//			if (i >0){
//				System.out.println("操作成功");
//			}
//
//			C3P0Util.getInstance().getConnection().commit();
////			QueryRunner qr2 = new QueryRunner();
////			List<ZySc> list2 = qr2.query(C3P0Util.getInstance().getConnection(),"select * from zy_sc", new BeanListHandler<ZySc>(ZySc.class));
////			System.out.println(list2.size());
//
//
//
//		} catch (SQLException e)
//		{
//			e.printStackTrace();
//		}
	}
}
