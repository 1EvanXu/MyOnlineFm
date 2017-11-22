<%--
  Created by IntelliJ IDEA.
  User: 徐一凡
  Date: 2017/10/30
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title><%=titlename%></title>
</head>
<body>
<table align="center">
    <jsp:include page="/managerpages/template/header.jsp" />
</table>
<hr size="1" color="#d3d3d3">
<table>
    <tr>
        <td width="200">
            <jsp:include page="/managerpages/template/sidebar.jsp"/>
        </td>
        <td width="1200" align="right" bgcolor="#dcdcdc" >
            <jsp:include page="<%=bodyfile%>" />
        </td>
    </tr>
</table>
<%@include file="/managerpages/template/footer.htm"%>
</body>
</html>