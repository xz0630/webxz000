<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
  <head>
    <title>ע��ҳ��</title>
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
					alert("�������û�����");
					myform.username.focus();
					return false;4
				}
				if(myform.password1.value.length==0) {
					alert("���������룡");
					myform.password1.focus();
					return false;
				}
				if(myform.password2.value.length==0) {
					alert("���ٴ��������룡");
					myform.password2.focus();
					return false;
				}
				if(myform.rand.value.length==0) {
					alert("��������֤�룡");
					myform.rand.focus();
					return false;
				}
				if(myform.password1.value != myform.password2.value) {
					alert("����������������һ�£�");
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
						out.println("<a href='/etalk/login.jsp'>��½</a>|");
						out.println("<a href=\"/etalk/register.jsp\">ע��</a>|<a href=\"/etalk/index.jsp\">��ҳ</a>");
					} else {
						out.println("<a href=' '>" + user + "</a>|<a href='/etalk/logout.jsp'>�˳�</a>|" 
										+ "<a href="">��ҳ</a>|<a href=''>ӵ���ĵ���</a>|");
						out.println("<a href=' '>�����ĵ�</a>");
					}
				%>
			</div>
			<br class="package"
				style="margin: 0px; padding: 0px; line-height: 30px;" />
			<br />
			<form action="/etalk/search" method="post">
				<div id="top-search" class="auto-complete yui-ac">
					<select id="top-search-select" name="type">
						<option value="book">�ĵ�</option>
						<option value="user">�û�</option>
					</select>
					<input id="top-search-input" class="yui-ac-input" type="text" value="" name="content">
					<button id="top-search-button" class="top-search-button" type="submit">����</button>
					<button id="top-search-advance" class="top-search-button" onclick="return forNew();" type="button">�����ٵ�</button>
					<button id="top-search-publish" class="top-search-button" onclick="return forHot();" type="button">ͼ������</button>
				</div>
			</form>
		</div>
  <div id="centers" >
	ע��ҳ�棬������������Ϣ��<hr/>
    <form action="check.jsp" method="post" onsubmit="return validate(this)">
   		<table border="0" align="center">
	    	<tr><td align="right">�û�����</td>
	    		<td><input type="text" name="username" size="20"/></td>
	    	</tr>
	    	<tr><td align="right">���룺</td><td><input type="password" name="password1" size="20"/></td></tr>
	    	<tr><td align="right">�ٴ��������룺</td><td><input type="password" name="password2" size="20"/></td></tr>
	    	<tr><td align="right"><a href="#" onClick="javascript:var dt=new Date();document.getElementById('code').src='image.jsp?dt='+dt;">���������һ�ţ�</a></td>
	    		<td><img id="code" border=0 src="image.jsp"></td>
	    	</tr>
	    	<tr><td align="right">��֤�룺</td><td><input type="text" name="rand" maxlength=4 size="20"/></td></tr>
	    	<tr><td></td>
	    		<td><input class="button" type="submit" name="submit" value="OK,�ύ"/></td>
	    	<tr/>  
	    </table> 	
    </form>
  </div>
  </center>
	</body>
</html>
