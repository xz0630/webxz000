<%--
  Created by IntelliJ IDEA.
  User: 59834
  Date: 2020/4/7
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
%>
<html>
<head>
	<title>Title</title>
	<link rel="stylesheet" href=<%=path+"/back/css/ajaxstyle.css"%>>
	<script type="text/javascript" src=<%=path+"/back/js/jquery-3.4.1.js"%>></script>
	<script type="text/javascript" src=<%=path+"/back/js/ajaxDemo.js"%>></script>
	<script type="text/javascript" src=<%=path+"/back/js/myutil.js"%>></script>
</head>
<body>
<input type="hidden" value=<%=path%> id="contentPath">
<form action=<%=path+"/TestServlet"%> method="post">
	<input type="text" id="name">
	<input type="text" id="age">
	<input type="text" id="sexy">
	<input type="submit" value="触发事件">
</form>
	<div id="mydiv" class="close">

	</div>

</body>
</html>
