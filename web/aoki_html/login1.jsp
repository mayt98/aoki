<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-2
  Time: 下午5:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <style type="text/css">
        @import "/aoki_css/login.css";
    </style>
</head>
<body>

<img src="/images/loginbackground.jpg" style="width:100%">
${errorMessage}

<form action="/ServletLogin" method="post">

    <span>用户名：<input type="text" value="zhangsan" name="uname" placeholder="请输入用户名"><br>
    密 码 ：<input type="password" name="upass" value="upass" placeholder="请输入密码"><br></span>
    <input id="sub1" type="submit" value="登录">
    <input id="sub2" type="button" value="注册">
</form>
<a href="/ServletLogin?uname=zhangsan&upass=upass" >测试链接</a>
</body>
</html>
