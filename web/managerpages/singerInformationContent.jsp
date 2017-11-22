<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="fm.service.SingerService" %>
<%@ page import="java.util.List" %>
<%@ page import="fm.beans.Singer" %>

<%
    ApplicationContext applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(application);
    SingerService singerService = (SingerService) applicationContext.getBean("singerService");

    final int e = 5; //the number of record in every page
    int totalPages = 0; //total number of pages
    int currentPage = 1;
    int totalCount = 0;
    int p = 0; //the index of the first record in current page

    //get current page number from request
    String tempPage = request.getParameter("currentPage");
    if (tempPage != null && !tempPage.equals("")) {
        currentPage = Integer.parseInt(tempPage);
    }

    totalCount = singerService.getNumberOfSingers();

    totalPages = ((totalCount % e ==0) ? (totalCount / e) : (totalCount / e + 1));
    if (totalPages == 0) totalPages = 1;

    if (currentPage > totalPages)
        currentPage = totalPages;
    else if (currentPage < 1) currentPage = 1;

    p = (currentPage - 1) * e;

    List<Singer> singers = singerService.getSpecifiedNumberOfSingers(p, e);
%>
<table align="center" valign="center" >
    <tr>
        <td>
            <%
                for (int i = 1; i <= totalPages; i++) {
                    if (i == currentPage) {
            %>
            <%=i%>
            <%} else {%>
            <a href="/fm/manager/singerInformation?currentPage=<%=i%>"><%=i%></a>
            <%
                    }
                    %>&nbsp;&nbsp;<%
                }
            %>
            &nbsp;&nbsp;,  <%=totalPages%> Pages,&nbsp; <%=totalCount%> Records
        </td>
    </tr>
</table>
<table border="1" align="center" valign="center" bgcolor="#d3d3d3">
    <tr bgcolor="#a9a9a9">
        <td>Singer ID</td>
        <td>Singer Name</td>
        <td>Singer Type</td>
        <td>Region</td>
    </tr>
    <%
        for (Singer singer : singers){
            int singerId = singer.getSingerId();
            String singerName = singer.getSingerName();
            String singerType = singer.getSingerType();
            String region = singer.getRegion();
    %>
    <tr>
        <td><%=singerId%></td>
        <td><%=singerName%></td>
        <td><%=singerType%></td>
        <td><%=region%></td>
    </tr>
    <%}%>
</table>
