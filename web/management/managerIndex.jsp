<%--
  Created by IntelliJ IDEA.
  User: 徐一凡
  Date: 2017/12/5
  Time: 12:38
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String administrator = (String) session.getAttribute("administrator");
    if (administrator == null || administrator.equals("")) {
        response.sendRedirect(response.encodeRedirectURL("/fm/admin"));
    }

    String part = request.getParameter("part");

    String title = "ONE FM后台管理系统";
    String bodyfile = "/management/managerIndexPart.jsp";
    if ( part != null) {
        if (part.equals("songsInfo")) {
            title = "歌曲信息-" + title;
            bodyfile = "/management/songInfoPart.jsp";
        }
        if (part.equals("addSong")) {
            title = "添加歌曲-" + title;
            bodyfile = "/management/addSongPart.jsp";
        }
        if (part.equals("singerInfo")) {
            title = "歌手信息-" + title;
            bodyfile = "/management/singerInfoPart.jsp";
        }
        if (part.equals("addSinger")) {
            title = "添加歌手-" + title;
            bodyfile = "/management/addSingerPart.jsp";
        }
        if (part.equals("updateSongInfo")){
            title = "修改歌曲信息-" + title;
            bodyfile = "/management/updateSongPart.jsp";
        }

        if (part.equals("updateSingerInfo")){
            title = "修改歌手信息-" + title;
            bodyfile = "/management/updateSingerPart.jsp";
        }
    }
%>
<%@ include file="template/template.jsp" %>