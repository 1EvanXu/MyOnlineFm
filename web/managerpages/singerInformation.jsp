<%
    String titlename = "Singer Information";
    String bodyfile = "/managerpages/singerInformationContent.jsp";
    if (session.getAttribute("username") == null){
        response.sendRedirect("/fm/adminlogin");
    }
%>
<%@include file="template/template.jsp" %>
