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


    <title>登录页面</title>
    <link rel="stylesheet" href="../aoki_css/login.css">
    <script src="../js/login.js"></script>
</head>
<body>
<div class="background">
    <img src="../images/l011.jpg" width="1408px" height="500px" alt="">
</div>
<div class="bodys">
    <div class="topcover"> </div>
    <diV class="top"> <P class="pone" >二维码登录</P>|<p class="ptwo">账户登录</p></diV>
    <form action="/ServletLogin" method="post" onsubmit="return check()">
        <span class="lable">用户名</span>
        <input type="text" class="username" name="username" id="username" placeholder="手机号/邮箱"
               onfocus="cheakhiden()"  required><br>

        <span  class="lable">密&nbsp;&nbsp;码</span>
        <input type="password" class="password" name="password" id="password" placeholder="密码不少于六位"
               onblur="hiden()" required>
        <div class="hid" id="chpsd" hidden>输入密码错误名有误</div>
        <input type="submit" value="登录" class="button">
    </form>


</div>
</body>
</html>
