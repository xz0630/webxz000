<%--
  Created by IntelliJ IDEA.
  User: 肖祯
  Date: 2020/3/25
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="<%=path%>/pages/back/css/login.css">
    <!--    <script src="js/登录跳转竞价管理系统.js"> </script>-->
</head>
<body>
<div>
    <form action="/webxz/adminContrller/login" method="post">
        <h1>欢迎登录</h1>
        <label >手&nbsp&nbsp机&nbsp&nbsp号：</label>
        <input type="text" name="username"><br>
        <label >密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码：</label>
        <input type="password" name="password"><br>
        <input type="submit" name="" value="登录">
    </form>
    <!-- <input type="submit" name="" value="登录" onClick="checkLogin()"> -->

</div>
</body>
</html>
