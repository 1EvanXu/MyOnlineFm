<%--
  Created by IntelliJ IDEA.
  User: 徐一凡
  Date: 2017/12/5
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String administrator = (String) session.getAttribute("administrator");
    if (administrator == null || administrator.equals("")) {
        response.sendRedirect(response.encodeRedirectURL("/fm/admin"));
    }
    String title = "添加歌手-ONE FM后台管理系统";
    String bodyfile = "/management/addSingerPart.jsp";
%>
<%@ include file="template/template.jsp" %>