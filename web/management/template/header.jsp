<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="header">
    <div style="float: left">
        <img src="/fm/management/decoration/images/onefm.png" alt="ONE FM" oncontextmenu="return false">
    </div>
    <div style="float: left;font-size: 40px">
        &nbsp;&nbsp;&nbsp;&nbsp;后台管理系统
    </div>
    <div style="text-align: right">
        <img src="/fm/management/decoration/images/admin.png" oncontextmenu="return false">&nbsp;&nbsp;您好，${administrator}
        &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/manager/adminLogout.do">退出</a>
    </div>
</div>

