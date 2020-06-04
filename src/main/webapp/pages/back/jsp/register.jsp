<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
  <head>
    <title>注册页面</title>
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
	<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
	<META HTTP-EQUIV="Expires" CONTENT="0">
		<LINK href="head.css" type=text/css rel=stylesheet>
		<STYLE type=text/css>
		#centers {
				width: 990px;
				border: 1px solid #B0E0E6;
			}
		</STYLE> 
    <script language="javascript">
			function validate(myform) {
				if(myform.username.value.length==0) {
					alert("请输入用户名！");
					myform.username.focus();
					return false;4
				}
				if(myform.password1.value.length==0) {
					alert("请输入密码！");
					myform.password1.focus();
					return false;
				}
				if(myform.password2.value.length==0) {
					alert("请再次输入密码！");
					myform.password2.focus();
					return false;
				}
				if(myform.rand.value.length==0) {
					alert("请输入验证码！");
					myform.rand.focus();
					return false;
				}
				if(myform.password1.value != myform.password2.value) {
					alert("两次输入的密码必须一致！");
					myform.password2.focus();
					return false;
				}
				return true;
			}
	</script>
  </head>
  <body>
	<center>
		<div id="page-top" class="package">
			<div id="site-logo">
				<a href="index.jsp"> <img width=215 height=100 src="etalk.jpg" alt="" /> </a>
			</div>
			<div id="top-navigator">
				<%
					String user = (String) session.getAttribute("user");
					if (user == null) {
						out.println("<a href='/etalk/login.jsp'>登陆</a>|");
						out.println("<a href=\"/etalk/register.jsp\">注册</a>|<a href=\"/etalk/index.jsp\">首页</a>");
					} else {
						out.println("<a href=' '>" + user + "</a>|<a href='/etalk/logout.jsp'>退出</a>|" 
										+ "<a href="">首页</a>|<a href=''>拥有文档列</a>|");
						out.println("<a href=' '>发布文档</a>");
					}
				%>
			</div>
			<br class="package"
				style="margin: 0px; padding: 0px; line-height: 30px;" />
			<br />
			<form action="/etalk/search" method="post">
				<div id="top-search" class="auto-complete yui-ac">
					<select id="top-search-select" name="type">
						<option value="book">文档</option>
						<option value="user">用户</option>
					</select>
					<input id="top-search-input" class="yui-ac-input" type="text" value="" name="content">
					<button id="top-search-button" class="top-search-button" type="submit">搜索</button>
					<button id="top-search-advance" class="top-search-button" onclick="return forNew();" type="button">新书速递</button>
					<button id="top-search-publish" class="top-search-button" onclick="return forHot();" type="button">图书排名</button>
				</div>
			</form>
		</div>
  <div id="centers" >
	注册页面，请输入以下信息：<hr/>
    <form action="check.jsp" method="post" onsubmit="return validate(this)">
   		<table border="0" align="center">
	    	<tr><td align="right">用户名：</td>
	    		<td><input type="text" name="username" size="20"/></td>
	    	</tr>
	    	<tr><td align="right">密码：</td><td><input type="password" name="password1" size="20"/></td></tr>
	    	<tr><td align="right">再次输入密码：</td><td><input type="password" name="password2" size="20"/></td></tr>
	    	<tr><td align="right"><a href="#" onClick="javascript:var dt=new Date();document.getElementById('code').src='image.jsp?dt='+dt;">看不清楚换一张？</a></td>
	    		<td><img id="code" border=0 src="image.jsp"></td>
	    	</tr>
	    	<tr><td align="right">验证码：</td><td><input type="text" name="rand" maxlength=4 size="20"/></td></tr>
	    	<tr><td></td>
	    		<td><input class="button" type="submit" name="submit" value="OK,提交"/></td>
	    	<tr/>  
	    </table> 	
    </form>
  </div>
  </center>
	</body>
</html>
