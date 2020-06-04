<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 肖祯
  Date: 2020/3/25
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path = request.getContextPath();%>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>后台管理</title>
    <link rel="stylesheet" href="<%=path%>/back/css/float.css">
    <script type="text/javascript" src="<%=path%>/back/js/jquerymenu.js"></script>
    <script type="text/javascript" src="<%=path%>/back/js/util.js"></script>
    <script type="text/javascript" src="<%=path%>/back/js/float.js"></script>
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
<%--    <c:forEach items="${menu}" begin="0" step="1" var="i">--%>

<%--        <h2>${i.key}</h2>--%>
<%--        <div class="close">--%>
<%--            <ul>--%>
<%--                <c:forEach items="${i.value}" begin="0" step="1" var="j">--%>
<%--                    <li>--%>
<%--                        <a href=<%=path%>${j.menupath} target="myiframe">${j.menuname}</a>--%>
<%--                            &lt;%&ndash;                <a href="../html/user.html" target="myiframe">${j.menuname}</a><br>&ndash;%&gt;--%>
<%--                    </li>--%>
<%--                </c:forEach>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>
</div>
<div id="section">
    <iframe src="" name="myiframe"  id="myiframe"></iframe>
</div>

<!-- <div id="footer"></div> -->
</body>
</html>

