<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="section">
    <div style="padding: 100px; padding-top: 30px; background-color: #e7e7e7; height: 100%">
        <div style="font-size: 30px;">添加歌曲</div><br>
        <div style="padding: 30px;float: left;background-color:white;width: 100%;height: 100%">
            <div style="float: left;width: 65%;height:100%;padding: 10px ">
                <%--enctype="multipart/form-data"--%>
                <form name="addSongForm" action="${pageContext.request.contextPath}/manager/addSong.do"
                      enctype="multipart/form-data" method="post">
                    <table id="songs">
                        <tr>
                            <td class="right">歌名：</td>
                            <td class="left">
                                <input name="songName" value="${songName}" type="text" style="width: 200px; height: 25px">
                            </td>
                        </tr>
                        <tr>
                            <td class="right">演唱者：</td>
                            <td class="left">
                                <input name="singerName" value="${singerName}" type="text" style="width: 200px; height: 25px">
                            </td>
                        </tr>
                        <tr>
                            <td class="right">歌曲类型：</td>
                            <td class="left">
                                <select name="songStyle" style="width: 200px; height: 25px">
                                    <option value="rock">摇滚</option>
                                    <option value="folk">民谣</option>
                                    <option value="pop">流行</option>
                                    <option value="dance">舞曲</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">歌曲语言：</td>
                            <td class="left">
                                <select name="songLanguage" style="width: 200px; height: 25px">
                                    <option value="Chinese">华语</option>
                                    <option value="Cantonese">粤语</option>
                                    <option value="English">英语</option>
                                    <option value="Japanese">日语</option>
                                    <option value="Korean">韩语</option>
                                    <option value="French">法语</option>
                                    <option value="Spanish">西班牙语</option>
                                    <option value="Other">其他</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="right">歌曲文件：</td>
                            <td class="left"><input name="songFile" type="file" style="width: 200px; height: 25px"></td>
                        </tr>
                        <tr>
                            <td class="right">歌曲封面：</td>
                            <td class="left"><input name="songImg" type="file" style="width: 200px; height: 25px"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="left"><input name="submit" type="submit" value="添加" style="
                 height: 25px;width: 70px"></td>
                        </tr>

                    </table>
                </form>
            </div>
            <div style="float: left; width: 35%;height: 100%;">
                <h1 style="font-size: 20px">上传歌曲文件大小不超过10M</h1><br>
                <h1 style="font-size: 20px">上传图片文件大小不超过1M</h1><br>
                <h1 style="font-size: 20px">上传图片分辨率为363*363</h1><br>
                <h1 style="font-size: 20px">上传状态：</h1><br>
                <%

                    String uploadSongResult = (String) request.getAttribute("uploadSongResult");
                    String uploadImageResult = (String) request.getAttribute("uploadImageResult");
                    String addSongInfoResult = (String) request.getAttribute("addSongInfoResult");
                    if (uploadImageResult == null && uploadSongResult == null && addSongInfoResult == null) {
                        uploadImageResult = "";
                        uploadSongResult = "";
                        addSongInfoResult = "";
                %>
                <p><img src="/fm/management/decoration/images/wait.png">&nbsp;等待上传</p>
                <%  }
                    if (uploadImageResult.startsWith("OK!") && uploadSongResult.startsWith("OK!") && addSongInfoResult.startsWith("OK!")){
                %>
                <p><img src="/fm/management/decoration/images/on.png">&nbsp;歌曲添加成功</p>
                <%}
                if (!uploadSongResult.startsWith("OK!") && !uploadSongResult.equals("")) {
                %>
                <p><img src="/fm/management/decoration/images/off.png">&nbsp;<%=uploadSongResult%></p>
                <%}
                if (!uploadImageResult.startsWith("OK!") && !uploadImageResult.equals("")) {
                %>
                <p><img src="/fm/management/decoration/images/off.png">&nbsp;<%=uploadImageResult%></p>
                <%}
                if (!addSongInfoResult.startsWith("OK!") && !addSongInfoResult.equals("")) {
                %>
                <p><img src="/fm/management/decoration/images/off.png">&nbsp;<%=addSongInfoResult%></p>
                <%}%>
            </div>
        </div>

    </div>
</div>
