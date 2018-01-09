<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-9
  Time: 上午10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        window.onload=function () {

            setInterval(function () {
                var date=new Date();
                var s=date.getSeconds();
                document.getElementById("sec").innerHTML=(60-s)%4;
                if((60-s)%4==0){
                    console.log("dao ling le");
                    document.getElementById("a").click();
                }
            },10);

        }
    </script>
</head>
<body>
<h1>购买成功！</h1>
<h1><span name="sec" style="border:none" width="30px" id="sec"></span>秒后自动 </h1>
<a href="index.jsp" id="a">返回首页</a>
</body>
</html>
