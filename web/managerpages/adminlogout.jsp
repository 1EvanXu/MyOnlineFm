<%--
  Created by IntelliJ IDEA.
  User: 徐一凡
  Date: 2017/11/4
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Administrator Logout</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("/fm/adminlogin");
%>
</body>
</html>
