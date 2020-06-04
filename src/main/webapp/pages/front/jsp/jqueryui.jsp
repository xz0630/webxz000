<%--
  Created by IntelliJ IDEA.
  User: 肖祯
  Date: 2020/4/3
  Time: 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=path%>/front/css/jquery-ui.css">
    <link rel="stylesheet" href="<%=path%>/front/css/jquery-ui.structure.css">
    <link rel="stylesheet" href="<%=path%>/front/css/jquery-ui.theme.css">
    <script type="text/javascript" src="<%=path%>/front/js/jquery-3.js"></script>
    <script type="text/javascript" src="<%=path%>/front/js/jquery.js"></script>
    <script type="text/javascript" src="<%=path%>/front/js/demo.js"></script>
<body>
<a href="http://www.baidu.com">百度一下</a>

<div id="accordion">
    <h3>First header</h3>
    <div>First content panel</div>
    <h3>Second header</h3>
    <div>Second content panel</div>
</div>

<div id="tabs">
    <ul>
        <li><a href="#fragment-1">One</a></li>
        <li><a href="#fragment-2">Two</a></li>
        <li><a href="#fragment-3">Three</a></li>
    </ul>
    <div id="fragment-1">
       dmAnfmgbehgb部分H会不会elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
    </div>
    <div id="fragment-2">
        阿法和歌集给你咳咳t, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
    </div>
    <div id="fragment-3">
     发不符合符合v就放假时间et dolore magna aliquam erat volutpat.
    </div>
</div>
</body>
</html>
