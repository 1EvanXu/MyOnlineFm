<%--
  Created by IntelliJ IDEA.
  User: 徐一凡
  Date: 2017/11/28
  Time: 16:58
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ONE FM-注册成功</title>
</head>
<body>
<div style="height: 30%; "></div>
<div style="height: 40%" align="center">
    <h1 style="color: #0f88eb">注册成功！</h1>
    <h2 style="color: #0f88eb"><b>欢迎来到 ONE FM</b></h2>
    <h4 style="color: #4898d5">稍后后跳转至登录页面......</h4>
</div>
<div style="height: 30%; "></div>
<%
    if (request.getParameter("msg") != null){

        request.setAttribute("registerResult", "欢迎来到 ONE FM, 请登录!");
    }
    request.getRequestDispatcher("/login.jsp").forward(request, response);
%>
</body>
</html>
