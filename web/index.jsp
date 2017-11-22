<%--
  Created by IntelliJ IDEA.
  User: 徐一凡
  Date: 2017/11/22
  Time: 10:23
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    RequestDispatcher dispatcher = application.getRequestDispatcher("/play");
    dispatcher.forward(request, response);
%>
</body>
</html>
