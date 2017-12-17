<%--
  Created by IntelliJ IDEA.
  User: 徐一凡
  Date: 2017/10/30
  Time: 12:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/resource_lr/images/one.ico">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/src/css/smusic.css"/>
  <title>ONE FM-爱生活，爱音乐，爱分享</title>
</head>
<body>
<div style="background: rgba(255,255,255, 0.5);height: 30px;padding: 4px;">
  <div style="float: left"><img src="src/img/onefm.png" alt="ONE FM"></div>
  <c:choose>
    <c:when test="${not empty user}">
      <div style="float: right">
        你好，${user.userName}&nbsp;<a href="${pageContext.request.contextPath}/front/logout.do">退出</a>
      </div>
    </c:when>
    <c:otherwise>
      <div style="float: right"><a href="${pageContext.request.contextPath}/login.html">登录</a></div>
    </c:otherwise>
  </c:choose>
</div>
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

<script src="src/js/smusic.min.js"></script>
<script>
    var musicList = [
        <c:if test="${not empty songList}">
        <c:forEach var="songListItem" items="${songList}">
        <c:choose>
        <c:when test="${status.last}">
        {
            title : '${songListItem.songName}',
            singer : '${songListItem.singerName}',
            cover  : '${songListItem.coverImagePath}',
            src    : '${songListItem.locationPath}'
        }
        </c:when>
        <c:otherwise>
        {
            title : '${songListItem.songName}',
            singer : '${songListItem.singerName}',
            cover  : '${songListItem.coverImagePath}',
            src    : '${songListItem.locationPath}'
        },
        </c:otherwise>
        </c:choose>
        </c:forEach>
        </c:if>
    ];
    new SMusic({
        musicList:musicList
    });
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
</html>