<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Administrator Login</title>
</head>

<body class="login" style="background-color: #3792ef">
<%
    String username = (String) request.getAttribute("username");
    if (username == null) username = "";
%>

<table align="center" >

    <tr>
        <td height="200" align="center">
            <div align="center" style="color: white"><h1>Welcome to the music management system!</h1></div>
        </td>
    </tr>
    <tr>
        <td  align="center">
            <form name="login_form" method="post" action="bLoginCheck">
                <table  width="400">
                    <tr>
                        <td height="40"><font color="white" size="4"><b>Username:</b></font></td>
                        <td><input type="text" name="username" value="<%=username%>"></td>
                    </tr>
                    <tr>
                        <td height="40"><font color="white" size="4"><b>Password:</b></font></td>
                        <td><input type="text" name="password"></td>
                    </tr>
                    <tr>
                        <td height="40"></td>
                        <td><input type="submit" name="submit" value="Login"></td>
                    </tr>
                    <tr>
                        <td height="10"></td>
                        <td>
                            <%
                                String message = (String) request.getAttribute("WrongMessage");
                                if (message != null) {
                            %>
                            <div style="color: firebrick"><%=message%></div>
                            <%}%>
                        </td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>

<p align="center">Copyright @ Evan.Xu. All Rights Reserved</p>
</body>
</html>

