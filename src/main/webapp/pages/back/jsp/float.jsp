<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 肖祯
  Date: 2020/3/25
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>肖祯</title>
    <link rel="stylesheet" href="back/css/float.css">
    <script type="text/javascript" src="back/js/util.js"></script>
    <script type="text/javascript" src="back/js/float2.js"></script>
</head>
<body>
<div id="header">
    欢迎你
    <%
       out.write(request.getAttribute("name")+"");
    %>
    <p id="p1"> 竞价后台管理系统</p>
    <nobr id="p2"> 服务热线&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 欢迎xxx&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  关闭</nobr>

</div>
<div id="aside">
    <h2 onclick="closeMenu(this)">个人信息管理</h2>
    <div class="close">
        <ul>
            <li>
                <a href="../html/user.html" target="myiframe">添加商品</a><br>
                <a href="../html/user.html" target="myiframe">维护商品信息</a>
            </li>
        </ul>
    </div>
    <h2 onclick="closeMenu(this)">商品分类管理</h2>
    <div class="close">
        <ul>
            <li>
                <a href="../html/frameset.html" target="myiframe">添加分类</a><br>
                <a href="../html/frameset.html" target="myiframe">维护分类信息</a>
            </li>
        </ul>
    </div>
    <h2 onclick="closeMenu(this)">拍卖管理</h2>
    <div class="close">
        <ul>
            <li>启动商品拍卖</li>
            <li>查询拍卖信息</li>
        </ul>
    </div>

    <h2 onclick="closeMenu(this)">会员管理</h2>
    <div class="close">
        <ul>
            <li>维护会员信息</li>
        </ul>
    </div>
    <h2 onclick="closeMenu(this)">规划管理</h2>
    <div class="close">
        <ul>
            <li>设置拍卖规则</li>
        </ul>
    </div>
    <h2 onclick="closeMenu(this)">后台管理</h2>
    <div class="close">
        <ul>
            <li>添加管理员</li>
            <li>维护管理员信息</li>
            <li>修改密码</li>
            <li><a href="TableServlet" target="myiframe">用户管理</a></li>
        </ul>
    </div>
    <h2 onclick="closeMenu(this)">用户管理1</h2>
</div>
<div id="section">
    <iframe src="" name="myiframe"  id="myiframe"></iframe>
</div>
<!-- <div id="footer"></div> -->
</body>
</html>

