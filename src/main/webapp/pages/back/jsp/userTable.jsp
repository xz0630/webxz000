
<%--<%@ page import="db.Userinf" %>--%>
<%--
  Created by IntelliJ IDEA.
  User: qz
  Date: 2020/3/26
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
    import="com.cykj.great.sample.User"
%>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>用户信息管理</title>
    <link rel="stylesheet" href="back/css/user.css">
</head>
<body>
<div>
    <form action="" method="">
        <label for="fname">用户名：</label>
        <input type="text" id="fname" name="firstname" placeholder="请输入用户名">
        <label for="lname">密码：</label>
        <input type="text" id="lname" name="lastname" placeholder="请输入密码">
        <label >性别：</label>
        <select name="mysex">
            <option value="男">男</option>
            <option value="女">女</option>
        </select>
        <input type="submit" value="添加"><br>
        <input type="checkbox">全选
        <input type="submit" value="删除">
    </form>

    <table align="center" cellspacing="0">
        <tr>
            <td colspan="10" >用户信息管理</td>
        </tr>
        <tr bgcolor= "green">
            <td >选择</td>
            <td>账号</td>
            <td>用户ID</td>
            <td>用户名</td>
            <td>密码</td>
            <td>性别</td>
            <td>电话</td>
            <td>地址</td>
            <td>注册时间</td>
<%--            <td>状态</td>--%>
            <td>操作</td>
        </tr>
        <c:forEach items="${list}" begin="0" step="1" var="i">
<tr>
    <td>${i.getUserId()}</td>
    <td>${i.getStateId()}</td>
    <td>${i.getCityId()}</td>
    <td>${i.getName()}</td>
    <td>${i.getPwd()}</td>
    <td>${i.getSex()}</td>
    <td>${i.getPhonenum()}</td>
<%--    <td>${i.getUserStatenum()}</td>--%>
    <td>${i.getPlace()}</td>
    <td>${i.getStateCode()}</td>
    <td>
        <input type="submit" name="" value="删除" >
        <input type="submit" name="" value="修改" >
    </td>
</tr>
        </c:forEach>
    </table>

</div>
</body>
</html>
