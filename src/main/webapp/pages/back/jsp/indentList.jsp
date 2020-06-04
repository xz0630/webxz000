<%--
  Created by IntelliJ IDEA.
  User: 刘海
  Date: 2020/3/29
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="java.util.Date"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>订单信息管理</title>
    <link rel="stylesheet" href="/front/css/jquery-ui.css">
    <link rel="stylesheet" href="/front/css/jquery-ui.structure.css">
    <link rel="stylesheet" href="/front/css/jquery-ui.theme.css">
    <link rel="stylesheet" href="/front/css/indent.css">
    <script type="text/javascript" src="/front/js/jqueryfront.js"></script>
    <script type="text/javascript" src="/front/js/jquery-ui.js"></script>
    <script type="text/javascript" src="/front/js/indent.js"></script>
</head>
<body id="mybody">
<div id="mainview">

    <form action="" method="">
        <label for="fname">订单号：</label>
        <input type="text" id="fname" name="firstname" placeholder="请输入订单号">

        <label>类型：</label>
        <select name="classfiy">
            <option value="手机">手机</option>
            <option value="电脑">电脑</option>
        </select>
        <!-- <input type="text" id="fname" name="firstname" placeholder="请输入商品名称"> -->


        <label >竞价状态</label>
        <select name="status">
            <option value="正在竞价">正在竞价</option>
            <option value="暂停竞价">暂停竞价</option>
        </select><br>




        <input type="checkbox">全选
        <input type="button" value="删除">
        <input type="button" value="添加">
    </form>
</div>
<div class="table_div">
    <table>
        <th colspan="9">商品信息管理</th>
        <tr id="tr1">
            <td  >ID</td>
            <td >商品名</td>
            <td >类型</td>
            <td >原价</td>
            <td >数量</td>
            <td >状态</td>
            <td >操作</td>
        </tr>
            <tr>
                <td>01</td>
                <td>小米一</td>
                <td>2999</td>
                <td>3000</td>
                <td>2</td>
                <td>竞拍中</td>
                <td>
                    <input type="button" name="" value="删除">
                    <input type="button" name="" value="详情" class="opendialog">

                </td>
            </tr>
            <tr>
                <td>01</td>
                <td>小米一</td>
                <td>2999</td>
                <td>3000</td>
                <td>2</td>
                <td>竞拍中</td>
                <td>
                    <input type="button" name="" value="删除">
                    <input type="button" name="" value="详情" id="opendialog">
                </td>
            </tr>
    </table>

</div>
<div id="indentdialog">
    <table id="table1">
        <tr>
            <td>订单号</td>
            <td >商品名</td>
            <td >类型</td>
            <td >价格</td>
            <td >下单时间</td>
        </tr>
        <tr>
            <td>000001</td>
            <td >小米1</td>
            <td >手机</td>
            <td >2333</td>
            <td >2020-09-09</td>
        </tr>
        <tr>
            <td>000001</td>
            <td >小米1</td>
            <td >手机</td>
            <td >2333</td>
            <td >2020-09-09</td>
        </tr>
    </table>
</div>
<span><input type="submit" name="" value="上一页" >1/3<input type="submit" name="" value="下一页" ></span>
</body>
</html>
