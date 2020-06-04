<%--
  Created by IntelliJ IDEA.
  User: 肖祯
  Date: 2020/4/1
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="com.cykj.great.sample.Commodity"%>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="back/css/Commodity.css">
</head>
<body>

<table align="center" cellspacing="0" border="1">
    <tr>
        <td colspan="9" >商品信息管理</td>
    </tr>
    <tr bgcolor= "green">
        <td >选择</td>
        <td>ID</td>
        <td>第二ID</td>
        <td>状态ID</td>
        <td>名字</td>
        <td>照片</td>
        <td>简介</td>
        <td>起拍价格</td>
        <td>成交价格</td>
        <td>目前价格</td>
    </tr>

    <c:forEach items="${list}" begin="0" step="1" var="i">
        <tr>
            <td>${i.getCId()}</td>
            <td>${i.getSecondId()}</td>
            <td>${i.getStateId()}</td>
            <td>${i.getCName()}</td>
            <td>${i.getCPicture()}</td>
            <td>${i.getCDescribe()}</td>
            <td>${i.getStartPrice()}</td>
            <td>${i.getEndPrice()}</td>
            <td>${i.getNowPrice()}</td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="9" align="center" >
            <input type="button" value="上一页">
            <input type="button" value="下一页">
        </td>
    </tr>
    <input type="button" value="添加商品" id="openshop">
</table>

</body>
</html>
