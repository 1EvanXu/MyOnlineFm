<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="fm.services.Interfaces.SingerService" %>
<%@ page import="fm.services.Interfaces.SongService" %>
<%@ page import="fm.beans.Song" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int updateId = Integer.parseInt(request.getParameter("update"));
    ApplicationContext ac = WebApplicationContextUtils.getRequiredWebApplicationContext(application);
    SongService songService = (SongService) ac.getBean("songService");
    SingerService singerService = (SingerService) ac.getBean("singerService");
    Song song = songService.findSongById(updateId);
    String singerName = singerService.findSingerById(song.getSingerId()).getSingerName();
%>
<div id="section">
    <div style="padding: 100px; padding-top: 30px; background-color: #e7e7e7; height: 100%">
        <div style="font-size: 30px;">修改歌曲信息</div><br>
        <div style="padding: 30px;float: left;background-color:white;width: 100%;height: 100%">
            <div style="float: left;width: 65%;height:100%;padding: 10px ">
                <form name="addSongForm" action="${pageContext.request.contextPath}/manager/updateSongInfo.do" method="post">
                    <table id="songs">
                        <tr>
                            <td class="right">歌曲编号：</td>
                            <td class="left">
                                <input name="songId" value="<%=updateId%>" type="text" style="width: 200px; height: 25px" readonly="readonly">
                            </td>
                        </tr>
                        <tr>
                            <td class="right">歌名：</td>
                            <td class="left">
                                <input name="songName" value="<%=song.getSongName()%>" type="text" style="width: 200px; height: 25px">
                            </td>
                        </tr>
                        <tr>
                            <td class="right">演唱者：</td>
                            <td class="left">
                                <input name="singerName" value="<%=singerName%>" type="text" style="width: 200px; height: 25px">
                            </td>
                        </tr>
                        <tr>
                            <td class="right">歌曲类型：</td>
                            <td class="left">
                                <select name="songStyle" style="width: 200px; height: 25px">
                                    <option value="Rock">摇滚</option>
                                    <option value="Folk">民谣</option>
                                    <option value="Pop">流行</option>
                                    <option value="Dance">舞曲</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">歌曲语言：</td>
                            <td class="left">
                                <select name="songLanguage" style="width: 200px; height: 25px">
                                    <option value="Chinese">华语</option>
                                    <option value="Cantonese">粤语</option>
                                    <option value="English">英语</option>
                                    <option value="Japanese">日语</option>
                                    <option value="Korean">韩语</option>
                                    <option value="French">法语</option>
                                    <option value="Spanish">西班牙语</option>
                                    <option value="Other">其他</option>
                                </select>
                            </td>
                        </tr>
                        <input name="songFile" type="text" value="<%=song.getLocationPath()%>"
                               style="width: 200px; height: 25px; visibility: hidden">
                        <input name="songImg" type="text" value="<%=song.getCoverImagePath()%>"
                               style="width: 200px; height: 25px; visibility: hidden">
                        <tr>
                            <td></td>
                            <td class="left"><input name="submit" type="submit" value="修改" style="
                 height: 25px;width: 70px"></td>
                        </tr>

                    </table>
                </form>
            </div>
            <div style="float: left; width: 35%;height: 100%;">

                <h1 style="font-size: 20px">修改状态：</h1><br>
                <%
                    String updateSongInfoResult = request.getParameter("updateResult");
                    if (updateSongInfoResult == null || updateSongInfoResult.equals("")){
                        updateSongInfoResult = "";
                %>
                <p><img src="/fm/management/decoration/images/wait.png">&nbsp;等待修改</p>
                <%  }
                    if (updateSongInfoResult.equals("success")){
                %>
                <p><img src="/fm/management/decoration/images/on.png">&nbsp;歌曲信息修改成功</p>
                <%}
                if (updateSongInfoResult.equals("fault")) {
                %>
                <p><img src="/fm/management/decoration/images/off.png">&nbsp;歌曲信息修改失败</p>
                <%}%>
            </div>
        </div>

    </div>
</div>
