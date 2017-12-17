<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="fm.services.Interfaces.SingerService" %>
<%@ page import="fm.beans.Singer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int updateId = Integer.parseInt(request.getParameter("update"));
    ApplicationContext ac = WebApplicationContextUtils.getRequiredWebApplicationContext(application);
    SingerService singerService = (SingerService) ac.getBean("singerService");
    Singer singer = singerService.findSingerById(updateId);
    if (singer == null){
        request.getRequestDispatcher("/ErrorPage.jsp").forward(request, response);
    }
%>
<div id="section">
    <div style="padding: 100px; padding-top: 30px; background-color: #e7e7e7; height: 100%">
        <div style="font-size: 30px;">修改歌手信息</div><br>
        <div style="padding: 30px;float: left;background-color:white;width: 100%;height: 100%">
            <div style="float: left;width: 65%;height:100%;padding: 10px ">
                <form name="add_singer_form" action="${pageContext.request.contextPath}/manager/updateSingerInfo.do" method="post">
                    <table id="songs">
                        <tr>
                            <td class="right">歌手编号：</td>
                            <td class="left">
                                <input name="singerId" type="text" value="<%=updateId%>" style="width: 200px; height: 25px"  readonly="readonly" required>
                            </td>
                        </tr>

                        <tr>
                            <td class="right">歌手名：</td>
                            <td class="left">
                                <input name="singerName" type="text" value="<%=singer.getSingerName()%>" style="width: 200px; height: 25px" required>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">歌手性别：</td>
                            <td class="left">
                                <input type="radio" name="gender" value="男">&nbsp;&nbsp;男&nbsp;&nbsp;
                                <input type="radio" name="gender" value="女">&nbsp;&nbsp;女
                            </td>
                        </tr>
                        <tr>
                            <td class="right">歌手类型：</td>
                            <td class="left">
                                <select name="singerType" style="width: 200px; height: 25px" required>
                                    <option value="歌手">歌手</option>
                                    <option value="组合">组合</option>
                                    <option value="团体">团体</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">地区：</td>
                            <td class="left">
                                <input name="region" type="text" value="<%=singer.getRegion()%>" style="width: 200px; height: 25px" required>
                            </td>
                        </tr>

                        <tr>
                            <td></td>
                            <td class="left"><input name="submit" type="submit" value="修改" style="
                 height: 25px;width: 70px"></td>
                        </tr>

                    </table>
                </form>
            </div>
            <div style="float: left; width: 35%;height: 100%;">
                <h1 style="font-size: 20px"></h1><br>
                <h1 style="font-size: 20px"></h1><br>
                <h1 style="font-size: 20px">修改状态：</h1><br>
                <%
                    String updateSingerInfoResult = request.getParameter("updateResult");
                    System.out.println(updateSingerInfoResult);
                    if (updateSingerInfoResult == null || updateSingerInfoResult.equals("")) {
                        updateSingerInfoResult = "";
                %>
                <p><img src="/fm/management/decoration/images/wait.png">&nbsp;等待修改</p>
                <%  }
                    if (updateSingerInfoResult.equals("success")) {
                %>
                <p><img src="/fm/management/decoration/images/on.png">&nbsp;修改歌手信息成功</p>
                <%  }
                if (updateSingerInfoResult.equals("fault")){%>
                <p><img src="/fm/management/decoration/images/off.png">&nbsp;修改歌手信息失败</p>
                <%}%>

            </div>
        </div>

    </div>
</div>