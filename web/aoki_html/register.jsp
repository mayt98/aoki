<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 17-12-29
  Time: 下午3:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        window.onload=function(){

            document.getElementById("submit").onclick=function(){

                var x=document.getElementById("uname");
                alert(x.constructor);
                alert("ok");


            }
        }
    </script>
</head>
<body>
<form action="" method="post">
    用户名：<input type="text" name="uname" id="name" >

    <input id="submit" type="submit" value="提交">
</form>
</body>
</html>
