<%--
  Created by IntelliJ IDEA.
  User: 徐一凡
  Date: 2017/11/28
  Time: 10:58
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta author="zrong.me-modified by evan.xu" >
    <title>ONE FM-登录</title>
    <link rel="shortcut icon" href="/fm/resource_lr/images/one.ico">
    <link rel="stylesheet" type="text/css" href="/fm/resource_lr/style/register-login.css">
</head>
<body>
<div id="box"></div>
<div class="cent-box">
    <div class="cent-box-header">
        <c:choose>
            <c:when test="${not empty registerResult}">
                <h1 style="color: #0f88eb">${registerResult}</h1>
            </c:when>
            <c:otherwise>
                <h1 class="main-title hide">ONE FM</h1>
            </c:otherwise>
        </c:choose>
        <h2 class="sub-title">爱生活，爱音乐，爱分享</h2>
    </div>

    <div class="cont-main clearfix">
        <div class="index-tab">
            <div class="index-slide-nav">
                <a href="login.jsp" class="active">登录</a>
                <a href="register.jsp">注册</a>
                <div class="slide-bar"></div>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/front/login.do" method="POST" name="login_form">
            <div class="login form">
                <div class="group">
                    <div class="group-ipt email">
                        <input type="text" name="email" id="email" class="ipt" placeholder="邮箱地址" value="${param.email}" required>
                    </div>
                    <div class="group-ipt password">
                        <input type="password" name="password" id="password" class="ipt" placeholder="输入您的登录密码" required>
                    </div>

                </div>
            </div>
            <div style="color: red">
            <c:choose>
                    <c:when test="${param.errorMessage eq '1'}">
                        <p>用户名不存在！</p>
                    </c:when>
                    <c:when test="${param.errorMessage eq '2'}">
                        <p>密码错误！</p>
                    </c:when>
            </c:choose>
            </div>

            <div class="button">
                <button type="submit" class="login-btn register-btn" id="button">登录</button>
            </div>

            <div class="remember clearfix">
                <label class="remember-me"><span class="icon"><span class="zt"></span></span><input type="checkbox" name="remember-me" id="remember-me" class="remember-mecheck" checked>记住我</label>
                <label class="forgot-password">
                    <a href="#">忘记密码？</a>
                </label>
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