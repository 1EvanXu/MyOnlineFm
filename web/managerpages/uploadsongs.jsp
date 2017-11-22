<%
    String titlename = "Upload Song";
    String bodyfile = "/managerpages/uploadSongsContent.jsp";
    if (session.getAttribute("username") == null){
        response.sendRedirect("/fm/adminlogin");
    }
%>
<%@include file="template/template.jsp" %>