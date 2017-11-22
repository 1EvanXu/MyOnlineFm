<%
    String titlename = "Song Information";
    String bodyfile = "/managerpages/songInformationContent.jsp";
    if (session.getAttribute("username") == null){
        response.sendRedirect("/fm/adminlogin");
    }
%>
<%@include file="template/template.jsp" %>
