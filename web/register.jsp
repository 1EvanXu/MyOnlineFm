<%--
  Created by IntelliJ IDEA.
  User: 徐一凡
  Date: 2017/11/28
  Time: 11:02
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>ONE FM-欢迎注册</title>
    <meta author="zrong.me-modified by evan.xu">
    <link rel="shortcut icon" href="/fm/resource_lr/images/one.ico">
    <link rel="stylesheet" type="text/css" href="/fm/resource_lr/style/register-login.css">
</head>
<body>
<div id="box"></div>
<div class="cent-box register-box">
    <div class="cent-box-header">
        <h1 class="main-title hide">ONE FM</h1>
        <h2 class="sub-title">爱生活，爱音乐，爱分享</h2>

    </div>
    <div class="cont-main clearfix">
        <div class="index-tab">
            <div class="index-slide-nav">
                <a href="login.jsp">登录</a>
                <a href="register.jsp" class="active">注册</a>
                <div class="slide-bar slide-bar1"></div>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/front/register.do" method="POST" name="register_form">
            <div class="login form">
                <div class="group">
                    <div class="group-ipt email">
                        <input type="email" name="email" id="email" class="ipt" placeholder="邮箱地址" value="${param.email}" required>
                    </div>
                    <div class="group-ipt user">
                        <input type="text" name="user" id="user" class="ipt" placeholder="选择一个用户名" value="${param.user}" required>
                    </div>
                    <div class="group-ipt password">
                        <input type="password" name="password" id="password" class="ipt" placeholder="设置登录密码" required>
                    </div>
                    <div class="group-ipt password1">
                        <input type="password" name="password1" id="password1" class="ipt" placeholder="重复密码" required>
                    </div>

                </div>
            </div>
            <div style="color: red;">
            <c:choose>
                <c:when test="${not empty param.emailError}">
                    <p>该邮箱已注册</p>
                </c:when>
                <c:when test="${not empty param.nameError}">
                    <p>该用户名已存在</p>
                </c:when>
            </c:choose>
            </div>
            <div class="button">
                <button type="submit" class="login-btn register-btn" id="button">注册</button>
            </div>
        </form>
    </div>
</div>

<div class="footer">
    <p><a href="https://weibo.com/u/3014543753">@Evan.Xu</a></p>
    <p>联系邮箱: 2437277553@qq.com</p>
</div>

<script src='/fm/resource_lr/js/particles.js' type="text/javascript"></script>
<script src='/fm/resource_lr/js/background.js' type="text/javascript"></script>
<script src='/fm/resource_lr/js/jquery.min.js' type="text/javascript"></script>
<script src='/fm/resource_lr/js/layer/layer.js' type="text/javascript"></script>
<script src='/fm/resource_lr/js/index.js' type="text/javascript"></script>

</body>
</html>