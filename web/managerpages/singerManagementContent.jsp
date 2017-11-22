<form name="singerManagementForm" method="post" action="doAddSinger">
    <table align="center" valign="center" bgcolor="#d3d3d3">
        <tr>
            <td width="400"><div align="right">Singer Name: </div></td>
            <td height="70" width="600"><input type="text" name="singerName" size="30" align="center"/></td>
        </tr>
        <tr>
            <td><div align="right">Gender: </div></td>
            <td height="70" width="600">
                <input type="radio" name="gender" size="30" value="Male"/> Male &nbsp;&nbsp;&nbsp;
                <input type="radio" name="gender" size="30" value="Female" /> Female
            </td>
        </tr>
        <tr>
            <td><div align="right">Singer Type: </div></td>
            <td height="70" width="600"><input type="text" name="singerType" size="30" /></td>
        </tr>
        <tr>
            <td><div align="right">Region: </div></td>
            <td height="70" width="600"><input type="text" name="region" size="30" /></td>
        </tr>
        <tr>
            <td></td>
            <td height="50" width="600">
                <%! String message = "";String color = "black"; %>
                <%
                    String rightMessage = (String) request.getAttribute("rightMessage");
                    String wrongMessage = (String) request.getAttribute("wrongMessage");
                    if (rightMessage == null){
                        if (wrongMessage != null)  {
                            message = wrongMessage;color = "red";
                        } else {message = "";}
                    } else {
                        color = "green";
                        message = rightMessage;
                    }
                %>
                <div style="color: <%=color%>" align="left"><b><%=message%></b></div>
            </td>
        </tr>
        <tr>
            <td height="70">
                <div align="right">
                    <input type="submit" value="Submit" size="50">
                </div>
            </td>
            <td>
                <div align="center">
                    <input type="reset" name="reset" value="Reset" size="50">
                </div>
            </td>
        </tr>
    </table>
</form>