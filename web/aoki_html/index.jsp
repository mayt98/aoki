<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-2
  Time: 下午8:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Aoki-首页</title>
    <link rel="stylesheet" href="../aoki_css/index.css">

    <!--<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">-->
    <!--<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>-->
    <!--<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->

    <script>
        function func() {

        }
    </script>
</head>
<body>
<header>
    <div class="top">
        <div class="web-map">网站导航</div>
        <div class="account-service">客户服务</div>
        <div><a href="login1.jsp" class="loginbutton" id="login">请登录？</a></div>
        <div><a href="" class="registerbutton" id="register">注册有礼</a></div>
        <div class="heaorder">
            <div class="myorder">我的订单</div>
            <div class="myorder">我的消息</div>
            <div class="myorder">购物车</div>
            <div class="myorder">我的会员</div>
            <div class="myorder">我的收藏</div>
        </div>
    </div>
</header>
<div class="main">
    <div class="main-top">
        <div class="logo"></div>
        <div class="search">
            <input type="text" placeholder="搜索你喜欢的商品">
            <div class="search-button">搜索</div>
        </div>
    </div>
    <div class="bodys">
        <div class="indexiterm">
            <div class="hotindexmenu" id="hotindexmenu">当季热卖</div>
            <div class="indexmenu" id="ee" onclick="func()">今日必抢</div>
            <div class="indexmenu">女季上装</div>
            <div class="indexmenu">优质下装</div>
            <div class="indexmenu">品牌推荐</div>
            <div class="indexmenu">时尚套装</div>
            <div class="indexmenu">设计师/潮牌</div>
            <div class="indexmenu">特惠专区</div>

        </div>
        <div class="hotdownterm" id="hotdownterm" hidden="hidden">
            <a href="http://www.baidu.com" target="_blank">百度</a>
        </div>
        <div class="rollbackimage">


            <!--<div id="myCarousel" class="carousel slide" >-->
            <!--&lt;!&ndash; 轮播（Carousel）指标 &ndash;&gt;-->
            <!--<ol class="carousel-indicators" style="list-style: none">-->
            <!--<li data-target="#myCarousel" data-slide-to="0" class="active"></li>-->
            <!--<li data-target="#myCarousel" data-slide-to="1"></li>-->
            <!--<li data-target="#myCarousel" data-slide-to="2"></li>-->
            <!--</ol>-->
            <!--&lt;!&ndash; 轮播（Carousel）项目 &ndash;&gt;-->
            <!--<div class="carousel-inner">-->
            <!--<div class="item active">-->
            <!--<img class="roll" src="../aoki_images/bigcover-one.jpg" width="1480" height="340">-->
            <!--</div>-->
            <!--<div class="item">-->
            <!--<img class="roll" src="../aoki_images/bigcover-two.jpg" width="1480" height="340">-->
            <!--</div>-->
            <!--<div class="item">-->

            <!--<img src="../aoki_images/151437743547702726.jpg" width="1480" height="360"/>-->
            <!--</div>-->
            <!--</div>-->
            <!--&lt;!&ndash; 轮播（Carousel）导航 &ndash;&gt;-->
            <!--<a class="carousel-control left" href="#myCarousel"-->
            <!--data-slide="prev">&lsaquo;</a>-->
            <!--<a class="carousel-control right" href="#myCarousel"-->
            <!--data-slide="next">&rsaquo;</a>-->
            <!--</div>-->


            <img src="../aoki_images/bigcover-two.jpg" height="300" width="1480"/></div>

        <div class="goodshow">
            <div class="goodshow-step-title"><h1>品牌推荐</h1></div>
            <div class="goodshow-step">

                <img src="../images/GS10000038b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000031b005.jpg" height="310" width="230"/>
                <img src="../images/GS10000032b005.jpg" height="310" width="230"/>
                <img src="../images/GS10000033b005.jpg" height="310" width="230"/>
            </div>
            <div class="goodshow-step">
                <img src="../images/GS10000034b005.jpg" height="310" width="230"/>
                <img src="../images/GS10000035b005.jpg" height="310" width="230"/>
                <img src="../images/GS10000036b005.jpg" height="310" width="230"/>
                <img src="../images/GS10000037b005.jpg" height="310" width="230"/>
            </div>
            <div class="goodshow-step-title"><h1>今日新品</h1></div>
            <div class="goodshow-step">
                <img src="../images/GS10000039b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000049b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000033b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000051b005.jpg" height="310" width="230" alt="">

            </div>
            <div class="goodshow-step">
                <img src="../images/GS10000045b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000046b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000047b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000048b005.jpg" height="310" width="230" alt="">
            </div>
            <div class="goodshow-step-title"><h1>潮流搭配</h1></div>
            <div class="goodshow-step">
                <img src="../images/GS10000034b005.jpg" height="310" width="230"/>
                <img src="../images/GS10000035b005.jpg" height="310" width="230"/>
                <img src="../images/GS10000036b005.jpg" height="310" width="230"/>
                <img src="../images/GS10000037b005.jpg" height="310" width="230"/>

            </div>
            <div class="goodshow-step">
                <img src="../images/GS10000039b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000049b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000033b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000051b005.jpg" height="310" width="230" alt="">
            </div>
            <div class="goodshow-step-title"><h1>特惠专区</h1></div>
            <div class="goodshow-step">
                <img src="../images/GS10000045b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000046b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000047b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000048b005.jpg" height="310" width="230" alt="">
            </div>
            <div class="goodshow-step">
                <img src="../images/GS10000038b005.jpg" height="310" width="230" alt="">
                <img src="../images/GS10000031b005.jpg" height="310" width="230"/>
                <img src="../images/GS10000032b005.jpg" height="310" width="230"/>
                <img src="../images/GS10000033b005.jpg" height="310" width="230"/>
            </div>

            <div class="goodshow-step-title"><h1>热力推荐</h1></div>
            <div class="recommand">
                <div class="recommand-goods">
                    <img src="../images/GS10000045b005.jpg" alt="" width="150" height="180">
                    <div><a href="">大衣女2017新款修身中长款外套</a></div>
                </div>
                <div class="recommand-goods">
                    <img src="../images/GS10000039b005.jpg" alt="" width="150" height="180">
                    <div><a href="">新款韩版气质修身中长款加绒加厚毛棉衣外套女</a></div>
                </div>
                <div class="recommand-goods">
                    <img src="../images/GS10000037b005.jpg" alt="" width="150" height="180">
                    <div><a href="">新款韩版百搭修身短款加厚面包服棉服女</a></div>
                </div>
                <div class="recommand-goods">
                    <img src="../images/GS10000036b005.jpg" alt="" width="150" height="180">
                    <div><a href="">新款韩版气质修身中长款加厚连帽字母棉服外套女</a></div>
                </div>
                <div class="recommand-goods">
                    <img src="../images/GS10000035b005.jpg" alt="" width="150" height="180">
                    <div><a href="">新款韩版气质修身大码中长款格子毛呢大衣外套女</a></div>
                </div>
                <div class="recommand-goods">
                    <img src="../images/GS10000034b005.jpg" alt="" width="150" height="180">
                    <div><a href="">新款韩版气质修身中长款西装领毛呢大衣外套女</a></div>
                </div>
                <div class="recommand-goods">
                    <img src="../images/GS10000033b005.jpg" alt="" width="150" height="180">
                    <div><a href="">新款韩版英伦修身中长款连帽格子毛呢大衣外套女</a></div>
                </div>

            </div>
        </div>

    </div>
    <div class="footer">
        <div class="service">
            <div class="aoki-service">
                <div>关于Aoki</div>
                <div class="about"><a href="">帮助中心</a></div>
                <div class="about"><a href="">诚聘英才</a></div>
                <div class="about"><a href="">法律声明</a></div>
            </div>
            <div class="aoki-service">
                <div class="seler-center">买家中心</div>
                <div class="about"><a href="">在线答疑</a></div>
                <div class="about"><a href="">品质保障</a></div>
            </div>
            <div class="aoki-service">
                <div>卖家中心</div>
                <div class="about"><a href="">在线咨询</a></div>
                <div class="about"><a href="">商品报名</a></div>
                <div class="about"><a href="">商家规则</a></div>
            </div>
            <div class="aoki-service">
                <div>有话要说</div>
                <div class="about"><a href="">服务热线</a></div>
                <div class="about"><a href="">廉正举报</a></div>
                <div class="about"><a href="">我要投诉</a></div>
            </div>
            <div class="aoki-service">
                <div>服务保障</div>
                <div class="about"><a href="">全场包邮</a></div>
                <div class="about"><a href="">七天无理由退换货</a></div>
                <div class="about"><a href="">30天低价</a></div>
            </div>
        </div>

    </div>
    <div class="footer-step">
        <div class="footer-step-control">
            <a href="">天猫商城|</a><a href="">京东商城|</a><a href="">淘宝网|</a>
            <a href="">聚划算|</a><a href="">苏宁易购|</a><a href="">国美商城|</a>
            <a href="">阿里巴巴|</a><a href="">高德地图|</a><a href="">支付宝|</a>
            <a href="">微信支付|</a><a href="">钉钉|</a><a href="">全球速卖</a>
            <div>增值电信业务经营许可证：UT-hello-aoki-0205</div>
            <div>备案号:00000000000</div>
            <div>地址:北京市海淀区305路2号 &nbsp;&nbsp;&nbsp;&nbsp;举报电话:0763-5201314</div>

        </div>
    </div>
</div>

</body>
</html>