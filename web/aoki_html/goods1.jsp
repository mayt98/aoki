<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 17-12-27
  Time: 下午3:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        window.onload=function(){

            document.getElementById("shopping-cart").onclick=function(){
                document.form.action="/ServletShoppingCart";
                document.getElementById("submit").click();


            }
        }
    </script>
</head>
<body>
${uname}
<span id="headOfEveryPage" style="position: absolute;"><a href="#">返回首页</a>&nbsp;<a href="#">网站导航</a>&nbsp;<a href="#">商家入驻</a>&nbsp;

    <a href="#">我的订单</a>&nbsp;<a href="#">查看购物车</a>&nbsp;<a href="#">安全退出</a>&nbsp;</span>
<form name="form" id="form" action="/ServletGoods1" method="post">
    <img src="/aoki_images/1.jpg" style="position: relative;top: 100px;">
    <span id="introduce" style="position: relative;top:-280px;">商品简介巴拉巴拉</span>
    <span id="price" style="position: relative;left:-130px;top:-240px;" ><input type="text" name="price" value="100"></span>
    <span id="count" style="position: relative;left:-300px;top:-200px; ">数量：<input name="count" type="number"></span>
    <span id="sub" style="position: relative;left:-480px;top:-160px;"><input id="submit" type="submit" value="提交订单">
        <input id="shopping-cart" type="button" value="加购物车">
</span>
</form>

</body>
</html>
