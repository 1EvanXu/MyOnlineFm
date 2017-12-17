<%--
  Created by IntelliJ IDEA.
  User: 徐一凡
  Date: 2017/12/5
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String administrator = (String) session.getAttribute("administrator");
    if (administrator == null || administrator.equals("")) {
        response.sendRedirect(response.encodeRedirectURL("/fm/admin"));
    }
    String title = "歌手信息-ONE FM后台管理系统";
    String bodyfile = "/management/singerInfoPart.jsp";
%>
<%@ include file="template/template.jsp" %>