<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String imagesPath = "/fm/management/decoration/images"; %>
<div id="content">
    <ul id="expmenu-freebie">
        <li>
            <!-- Start Freebie -->
            <ul class="expmenu">
                <li>
                    <div class="header">
                        <span class="label" style="background-image: url(<%=imagesPath%>/pc.png);">网站信息</span>
                        <span class="arrow up"></span>
                    </div>
                        <ul class="menu">
                            <li><a href="/fm/management/managerIndex.jsp">管理系统主页</a></li>
                            <li><a href="/fm">ONE FM主页</a></li>
                        </ul>

                </li>
                <li>
                    <div class="header">
                        <span class="label" style="background-image: url(<%=imagesPath%>/song.png);">歌曲管理</span>
                        <span class="arrow up"></span>
                    </div>
                    <ul class="menu">
                        <li><a href="/fm/management/songInfo.jsp">歌曲信息</a></li>
                        <li><a href="/fm/management/addSong.jsp" >添加歌曲</a></li>
                        <!--<li class="selected">Email Alerts</li>-->
                    </ul>
                </li>
                <li>
                    <div class="header">
                        <span class="label" style="background-image: url(<%=imagesPath%>/singer.png);">歌手管理</span>
                        <span class="arrow up"></span>
                    </div>
                    <ul class="menu">
                        <li><a href="/fm/management/singerInfo.jsp">歌手信息</a></li>
                        <li><a href="/fm/management/addSinger.jsp">添加歌手</a></li>
                        <!--<li><input type="range" name="range" min="0" max="100" value="35" style="width: 100%;" /></li>-->
                    </ul>
                </li>
                <li>
                    <div class="header">
                        <span class="label" style="background-image: url(<%=imagesPath%>/user.png);">用户管理</span>
                        <span class="arrow down"></span>
                    </div>
                    <ul class="menu" style="display:none">
                        <li><a href="#">用户列表</a></li>
                    </ul>
                </li>

            </ul>
            <!-- End Freebie -->
        </li>
    </ul>
</div>