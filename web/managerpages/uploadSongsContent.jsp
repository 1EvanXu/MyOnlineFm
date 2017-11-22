<form name="uploadForm" method="post" enctype="multipart/form-data" action="doUpload">
    <table align="center" valign="center" bgcolor="#d3d3d3">
        <tr>
            <td width="400"><div align="right">Song Name: </div></td>
            <td height="70" width="600"><input type="text" name="songname" size="30" align="center"/></td>
        </tr>
        <tr>
            <td><div align="right">Artist: </div></td>
            <td height="70" width="600"><input type="text" name="artist" size="30" /></td>
        </tr>
        <%--<tr>--%>
            <%--<td><div align="right">Artist Gender: </div></td>--%>
            <%--<td height="70" width="600">--%>
                <%--<input type="radio" name="gender" size="30" value="Male"/> Male &nbsp;&nbsp;&nbsp;--%>
                <%--<input type="radio" name="gender" size="30" value="Female" /> Female--%>
            <%--</td>--%>
        <%--</tr>--%>
        <tr>
            <td><div align="right">Song Style: </div></td>
            <td height="70" width="600">
                <input type="radio" name="style" size="30" value="Pop" /> Pop &nbsp;
                <input type="radio" name="style" size="30" value="Rock" /> Rock &nbsp;
                <input type="radio" name="style" size="30" value="Folk" /> Folk &nbsp;
                <input type="radio" name="style" size="30" value="Dance" /> Dance &nbsp;
                <input type="radio" name="style" size="30" value="Hip-hop" /> Hip-hop
            </td>
        </tr>
        <tr>
            <td><div align="right">Language: </div></td>
            <td height="70" width="600">
                <input type="radio" name="language" size="30" value="Chinese" /> Chinese &nbsp;
                <input type="radio" name="language" size="30" value="Cantonese" /> Cantonese &nbsp;
                <input type="radio" name="language" size="30" value="English" /> English &nbsp;
                <input type="radio" name="language" size="30" value="Japanese" /> Japanese &nbsp;
                <input type="radio" name="language" size="30" value="Korean" /> Korean
            </td>
        </tr>
        <tr>
            <td><div align="right">Upload File: </div></td>
            <td height="70" width="600">
                <input type="file" name="musicFile" size="30" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td height="50" width="600">
                <%! String uploadResult = "";String color = "black"; %>
                <%
                    String uploadResult1 = (String) request.getAttribute("uploadResult1");
                    String uploadResult2 = (String) request.getAttribute("uploadResult2");
                    if (uploadResult1 == null){
                        if (uploadResult2 != null)  {
                            uploadResult = uploadResult2;color = "red";
                        } else {uploadResult = "";}
                    } else {
                        color = "green";
                        uploadResult = uploadResult1;
                    }
                %>
                <div style="color: <%=color%>" align="left"><b><%=uploadResult%></b></div>
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