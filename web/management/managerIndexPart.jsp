<%@ page import="fm.beans.OnlineUsers" %>
<%@ page import="java.util.Map" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="fm.services.Interfaces.PageHitStatisticsService" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="section">
    <div style="padding: 10px; background-color: #e7e7e7; height: 100%">
        <div style="padding: 10px;float: left;background-color:white;width: 20%;height: 100%">
            <%
                OnlineUsers onlineUsers = OnlineUsers.getInstance();
                Map<String, Integer> onlineUsersMap = onlineUsers.getOnlineUsers();
                int numberOfOnlineUsers = onlineUsers.getNumberOfOnlineUsers();
            %>
            <h1><b>在线人数：</b><span style="color: #4898d5"><%=numberOfOnlineUsers%></span></h1>
            <h1><b>在线用户列表：</b></h1>
            <table id="customers">
                <tr>
                    <th width="60%">用户名</th>
                    <th width="40%">用户类型</th>
                </tr>
                <%
                    if (onlineUsersMap.isEmpty()) {
                %>
                <tr>
                    <td>当前无用户在线</td><td></td>
                </tr>
                <%  } else {
                        String onlineUserName = "";
                        String onlineUserType = "";
                        int index = 1;
                        for (Map.Entry<String, Integer> onlineUser: onlineUsersMap.entrySet()){
                            onlineUserName = onlineUser.getKey();
                            onlineUserType = onlineUser.getValue() == 0 ? "普通用户":"VIP";
                            if (index % 2 == 0) {
                %>
                <tr class="alt">
                    <td><img src="/fm/management/decoration/images/on.png" oncontextmenu="return false">
                        &nbsp;&nbsp;<%=onlineUserName%>
                    </td>
                    <td><%=onlineUserType%></td>
                </tr>

                <%          } else {
                %>
                <tr>
                    <td><img src="/fm/management/decoration/images/on.png" oncontextmenu="return false">
                        &nbsp;&nbsp;<%=onlineUserName%>
                    </td>
                    <td><%=onlineUserType%></td>
                </tr>
                <%          }
                            index++;
                        }
                    }%>

            </table>
        </div>
        <div style="padding-left: 10px; padding-right: 5px;float: left;width: 80%;height: 100%;">
            <div style="height: 100%; width: 100%; background-color: white; font-size:2em; text-align: center">
                <%
                    ApplicationContext ac = WebApplicationContextUtils.getRequiredWebApplicationContext(application);
                    PageHitStatisticsService phss = (PageHitStatisticsService) ac.getBean("pageHitStatisticsService");
                    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                    String today = df.format(new Date());
                    Integer todayCount = phss.getHitCountByDay(today);
                    Integer totalCount = phss.getTotalHitCount();
                %>

                今日访问量：<%=todayCount%><br>
                总访问量：<%=totalCount%><br>

            </div>
        </div>
    </div>
</div>