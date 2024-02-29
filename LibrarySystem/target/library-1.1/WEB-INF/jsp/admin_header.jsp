<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
	 ul
	{
		list-style-type:none;
		margin:0;
		padding:0;
	} 
</style>
<nav style="position:fixed;z-index: 999;height:30px;width: 100%;background-color: #5795d6" class="navbar navbar-default"
     role="navigation">
    <div class="container-fluid" style="height:50px; background-color:#5795d6"><!-- position:absolute  #5795d6 -->
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand" href="admin_main.html" style="font-family: 华文隶书; font-size: 250%; color: #D8D8D8">在线图书管理系统</a>
        </div>
        <div class="collapse navbar-collapse" style="font-family: 华文中宋 ;font-size: 15px"><!-- position:relative -->
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: black">
                        图书管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="admin_books.html">全部图书</a></li>
                        <li class="divider"></li>
                        <li><a href="book_add.html">增加图书</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: black">
                        读者管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allreaders.html">全部读者</a></li>
                        <li class="divider"></li>
                        <li><a href="reader_add.html">增加读者</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: black">
                        借还管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="lendlist.html">借还日志</a></li>
                    </ul>
                </li>
                <!--  -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: black">
                        公告管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="lendlist.html">借阅显示</a></li><!-- http://localhost:8080 -->
                    </ul>
                </li>
                
                <li >
                    <a href="admin_repasswd.html" style="color: black">
                        密码修改
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right" style="float: right" style="color: black">
                <li><a href="login.html" style="color: black">${admin.username}, 已登录</a>
                </li>
                <li><a href="logout.html" style="color: black">退出</a></li>
            </ul>
        </div>
    </div>
</nav>
