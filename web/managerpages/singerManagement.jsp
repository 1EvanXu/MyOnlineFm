<%
    String titlename = "Singer Management";
    String bodyfile = "/managerpages/singerManagementContent.jsp";
    if (session.getAttribute("username") == null){
        response.sendRedirect("/fm/adminlogin");
    }
%>
<%@include file="template/template.jsp" %>
