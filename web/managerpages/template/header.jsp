    <%
        String name = (String) session.getAttribute("username");
        if (name == null) name = "";
    %>
    <tr>
        <h1 align="left"><b>MyFM Background Management System</b></h1>
        <div align="right">Hello, <%=name%>&nbsp;&nbsp;&nbsp;<a href="/fm/adminlogout">Logout</a></div>
    </tr>
