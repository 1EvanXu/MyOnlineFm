<%@ page import="java.util.List" %>
<%@ page import="fm.beans.SongListItem" %>
<%@ page import="fm.backstage.upload.StringProcessor" %>
<%--
  Created by IntelliJ IDEA.
  User: 徐一凡
  Date: 2017/10/30
  Time: 12:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <link rel="stylesheet" href="src/css/smusic.css"/>
  <title>MyFM</title>
</head>
<body>
<div class="grid-music-container f-usn">
  <div class="m-music-play-wrap">
    <div class="u-cover"></div>
    <div class="m-now-info">
      <h1 class="u-music-title"><strong>标题</strong><small>歌手</small></h1>
      <div class="m-now-controls">
        <div class="u-control u-process">
          <span class="buffer-process"></span>
          <span class="current-process"></span>
        </div>
        <div class="u-control u-time">00:00/00:00</div>
        <div class="u-control u-volume">
          <div class="volume-process" data-volume="0.50">
            <span class="volume-current"></span>
            <span class="volume-bar"></span>
            <span class="volume-event"></span>
          </div>
          <a class="volume-control"></a>
        </div>
      </div>
      <div class="m-play-controls">
        <a class="u-play-btn prev" title="上一曲"></a>
        <a class="u-play-btn ctrl-play play" title="暂停"></a>
        <a class="u-play-btn next" title="下一曲"></a>
        <a class="u-play-btn mode mode-list current" title="列表循环"></a>
        <a class="u-play-btn mode mode-random" title="随机播放"></a>
        <a class="u-play-btn mode mode-single" title="单曲循环"></a>
      </div>
    </div>
  </div>
  <div class="f-cb">&nbsp;</div>
  <div class="m-music-list-wrap" style="visibility: hidden"></div>
</div>
<%
  String title = "";
  String path = "";

  List<SongListItem> songList = (List<SongListItem>) request.getAttribute("songList");

%>

<script src="src/js/smusic.min.js"></script>
<script>
    var musicList = [
        <%
        if (!songList.isEmpty()) {
            for (SongListItem item:songList) {
        %>
        {
            title : '<%=item.getSongName()%>',
            singer : '<%=item.getSingerName()%>',
            cover  : '<%=item.getCoverImagePath()%>',
            src    : '<%=item.getLocationPath()%>'
        },
        <%}}%>
        {
            title : 'Falling U',
            singer : 'T-ara',
            cover  : 'images/T-ara.jpg',
            src    : 'songs/FallingU-T-ara.mp3'
        }

    ];
    new SMusic({
        musicList:musicList
    });
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
</html>