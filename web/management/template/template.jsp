<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%=title%></title>
    <link rel="shortcut icon" href="/fm/resource_lr/images/one.ico">
    <link rel="stylesheet" href="/fm/management/decoration/css/styles.css" type="text/css" />
    <link rel="stylesheet" href="/fm/management/decoration/css/table.css" type="text/css" />
    <link rel="stylesheet" href="/fm/management/decoration/css/jquery-tool.css" type="text/css" />
    <script type="text/javascript" src="/fm/management/decoration/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="/fm/management/decoration/js/jquery.tools.min.js"></script>
    <script type="text/javascript" src="/fm/management/decoration/js/main.js"></script>
</head>
<body>
<jsp:include page="/management/template/header.jsp" />
<jsp:include page="/management/template/sidebar.jsp"/>
<jsp:include page="<%=bodyfile%>"/>
<jsp:include page="/management/template/footer.jsp" />
</body>
</html>
