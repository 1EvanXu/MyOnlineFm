<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="java.util.List" %>
<%@ page import="fm.services.Interfaces.SingerService" %>
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
<div id="section">
    <div style="padding: 100px; padding-top: 30px; background-color: #e7e7e7; height: 100%">
        <div style="font-size: 30px;">歌手信息</div><br>
        <div style="padding: 30px;float: left;background-color:white;width: 100%;height: 100%">
            <table align="center" valign="bottom" >
                <tr>
                    <td>页码:&nbsp;&nbsp;</td>
                    <td>
                        <%
                            for (int i = 1; i <= totalPages; i++) {
                                if (i == currentPage) {
                        %>
                        <%=i%>
                        <%} else {%>
                        <a href="/fm/management/singerInfo.jsp?currentPage=<%=i%>"><%=i%></a>
                        <%
                            }
                        %>&nbsp;&nbsp;<%
                        }
                    %>
                        &nbsp;&nbsp;,  共&nbsp;<%=totalPages%>&nbsp;页,&nbsp;&nbsp;共&nbsp;<%=totalCount%>&nbsp;位歌手
                    </td>
                </tr>
            </table>
            <table id="customers">
                <tr>
                    <th>歌手编号</th>
                    <th>歌手名</th>
                    <th>歌手类型</th>
                    <th>所属地区</th>
                    <th>操作</th>
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
                    <td>
                        <a href="${pageContext.request.contextPath}/manager/removeSinger.do?delete=<%=singerId%>" style="color: #2E2D3C">删除</a>&nbsp;
                        <a href="${pageContext.request.contextPath}/management/managerIndex.jsp?part=updateSingerInfo&update=<%=singer.getSingerId()%>">修改</a>
                    </td>
                </tr>
                <%}%>
            </table>

        </div>

    </div>
</div>
