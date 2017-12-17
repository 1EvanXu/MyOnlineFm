<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="fm.services.Interfaces.SongService" %>
<%@ page import="java.util.List" %>
<%@ page import="fm.beans.Song" %>
<%@ page import="fm.services.Interfaces.SingerService" %>
<%@ page import="fm.utils.ConvertUtils" %>
<%
    ApplicationContext applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(application);
    SongService songService = (SongService) applicationContext.getBean("songService");
    SingerService singerService = (SingerService) applicationContext.getBean("singerService");

    final int e = 10; //the number of record in every page
    int totalPages = 0; //total number of pages
    int currentPage = 1;
    int totalCount = 0;
    int p = 0; //the index of the first record in current page

    //get current page number from request
    String tempPage = request.getParameter("currentPage");
    if (tempPage != null && !tempPage.equals("")) {
        currentPage = Integer.parseInt(tempPage);
    }

    totalCount = songService.getNumberOfSongs();

    totalPages = ((totalCount % e ==0) ? (totalCount / e) : (totalCount / e + 1));
    if (totalPages == 0) totalPages = 1;

    if (currentPage > totalPages)
        currentPage = totalPages;
    else if (currentPage < 1) currentPage = 1;

    p = (currentPage - 1) * e;

    List<Song> songs = songService.getSpecifiedNumberOfSongs(p, e);
    int length = songs.size();
%>
<div id="section">
    <div style="padding: 100px; padding-top: 30px; background-color: #e7e7e7; height: 100%">
        <div style="font-size: 30px;">歌曲信息</div><br>
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
                        <a href="/fm/management/songInfo.jsp?currentPage=<%=i%>"><%=i%></a>
                        <%
                            }
                        %>&nbsp;&nbsp;<%
                        }
                    %>
                        &nbsp;&nbsp;,  共&nbsp;<%=totalPages%>&nbsp;页,&nbsp;&nbsp;共&nbsp;<%=totalCount%>&nbsp;首歌
                    </td>
                </tr>
            </table>
            <table id="customers">
                <tr>
                    <th>歌曲编号</th>
                    <th>歌曲名</th>
                    <th>演唱者</th>
                    <th>风格</th>
                    <th>语言</th>
                    <th>操作</th>
                </tr>

                <%
                    Integer songId;
                    String songName;
                    Integer singerId;
                    String singerName;
                    String songStyle;
                    String language;
                    for (int i = 0; i < length; i++) {
                        songId = songs.get(i).getSongId();
                        songName = songs.get(i).getSongName();
                        singerId = songs.get(i).getSingerId();
                        singerName = singerService.findSingerById(singerId).getSingerName();
                        songStyle = songs.get(i).getSongStyle();
                        language = songs.get(i).getSongLanguage();
                %>
                <tr class="alt">
                    <td><%=songId%></td>
                    <td><%=songName%></td>
                    <td><%=singerName%></td>
                    <td><%=ConvertUtils.getSongStyleMap().get(songStyle)%></td>
                    <td><%=ConvertUtils.getLanguageMap().get(language)%></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/manager/removeSong.do?delete=<%=songId%>" style="color: #2E2D3C">删除</a>&nbsp;
                        <a href="${pageContext.request.contextPath}/management/managerIndex.jsp?part=updateSongInfo&update=<%=songId%>">修改</a>
                    </td>
                </tr>
                <%}%>
            </table>

        </div>

    </div>
</div>
