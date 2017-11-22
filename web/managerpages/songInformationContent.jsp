
<%@ page import="fm.backstage.upload.StringProcessor" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="fm.service.SongService" %>
<%@ page import="java.util.List" %>
<%@ page import="fm.beans.Song" %>
<%@ page import="fm.service.SingerService" %>


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
            <a href="/fm/manager/songInformation?currentPage=<%=i%>"><%=i%></a>
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
        <td>Song ID</td>
        <td>Song Name</td>
        <td>Singer Name</td>
        <td>Song Style</td>
        <td>Language</td>
    </tr>
    <%
        for (Song song: songs) {
            Integer songId = song.getSongId();
            String songName = song.getSongName();
            Integer singerId = song.getSingerId();
            String singerName = singerService.findSingerById(singerId).getSingerName();
            String songStyle = song.getSongStyle();
            String language = song.getSongLanguage();
    %>
    <tr>
        <td><%=songId%></td>
        <td><%=songName%></td>
        <td><%=singerName%></td>
        <td><%=StringProcessor.getSongStyleMap().get(songStyle)%></td>
        <td><%=StringProcessor.getLanguageMap().get(language)%></td>
    </tr>
    <%}%>
</table>

