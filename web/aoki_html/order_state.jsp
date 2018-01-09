<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-4
  Time: 上午9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单状态页面</title>
    <link rel="stylesheet" href="../aoki_css/order_state.css">
    <script>
        window.onload=function(){
            var receiver="${orderState.getReceiver()}";
            if(receiver==""){
                console.log("receiver is null"+receiver);
            }else{
                document.getElementById("isLogin1").hidden="hidden";
                document.getElementById("isLogin2").innerHTML=receiver;
                document.getElementById("goodsPrice").innerHTML="${orderState.getGoodsPrice()}";
                document.getElementById("goodsAmount").innerHTML="${orderState.getGoodsAmount()}";
                console.log("hs s order goodsId is"+"${order.getGoodsId()}");
                console.log("santiao xinxi"+"${order.getGoodsIntroduce()}"+"${order.getGoodsColor()}"+"${order.getGoodsSize()}");
                document.getElementById("img1").src="../images/"+"${order.getGoodsId()}"+"s001.jpg";
                document.getElementById("goodsInfo").innerHTML="${order.getGoodsIntroduce()}";
                document.getElementById("goodsColor").innerHTML="${order.getGoodsColor()}";
                document.getElementById("goodsSize").innerHTML="${order.getGoodsSize()}";


            }
        }
    </script>
</head>
<body>


<header>
    <div class="top">
        <div class="web-map">网站导航</div>
        <div class="account-service">客户服务</div>
        <div><a href="/aoki_html/login1.jsp" id="isLogin1" class="loginbutton">请登录？</a></div>
        <div><a href="" id="isLogin2" class="registerbutton">注册有礼</a></div>

        <div class="myorder">我的订单</div>
        <div class="myorder">我的消息</div>
        <div class="myorder">购物车</div>
        <div class="myorder">我的会员</div>
        <div class="myorder">我的收藏</div>
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
        <div class="detail-title">
            <div class="you-order">你的订单</div>
            <div class="detail sp-detail">商品信息</div>
            <div class="detail">规格</div>
            <div class="detail">价格（元）</div>
            <div class="detail">数量</div>
            <div class="detail">支付状态</div>
            <div class="detail">状态</div>
        </div>
        <div class="order-zhuangtai">
            <div class="goods">

                <div class="goods-image">
                    <img id="img1" height="60" width="60"/>

                </div>
                <span class="goods-info"><span id="goodsInfo"></span></span>
                <div class="goods-size">
                    <div>颜色:
                        <span id="goodsColor" ></span>
                    </div>
                    <div>尺寸:
                        <span id="goodsSize"></span>
                    </div>
                </div>
                <div class="goods-price" ><div name="goodsPrice" id="goodsPrice"></div></div>
                <div class="goods-amount" id="goodsAmount">

                </div>
                <div class="goods-account">
                    <input type="button" class="pay" value="已支付"><br><br>
                    <input type="button" class="nopay" value="未支付">
                </div>
                <div class="goods-option">
                    <input type="button" class="nosend" value="处理中"><br>
                    <input type="button" class="send" value="运输中">

                </div>
            </div>
            <div class="yunshu">
                <button class="shangjia">商家</button>
                <div class="roteline">
                    <div class="smallcrilce"></div>
                    <div class="bigcrilce"></div>
                    <div class="smallcrilce"></div>
                    <div class="bigcrilce"></div>
                    <div class="smallcrilce"></div>
                    <div class="bigcrilce"></div>
                    <div class="smallcrilce"></div>
                    <div class="bigcrilce"></div>
                    <div class="smallcrilce"></div>
                    <div class="bigcrilce"></div>
                </div>
                <button class="mine">我</button>

            </div>
        </div>
        <div class="feigexian">

        </div>
        <div class="goods-zaituijian">
            <div class="ccy">
                <div class="cainixh">猜你喜欢</div>
                <div class="idd-goods">
                    <div class="goods-show">
                        <div class="recommend">
                            <div class="goods-recommend">
                                <img src="../images/GS10000028b002.jpg" height="220"
                                     width="220"/>
                                <div class="a-lianjie">
                                    <a href="">丝棉服女2017冬季新款中长款大码加厚大毛领连帽棉衣外套</a>
                                </div>
                            </div>
                            <div class="goods-recommend">

                                <img src="../images/GS10000031b002.jpg" height="220"
                                     width="220"/>
                                <a href="">2017秋冬女装新款韩版气质修身加厚中长款毛呢大衣外套女</a>
                            </div>
                            <div class="goods-recommend">

                                <img src="../images/GS10000042b002.jpg" height="220"
                                     width="220"/>
                                <a href="">2017冬季新款百搭羽绒棉衣女短款韩版女士连帽修身显瘦棉服外套</a>
                            </div>


                            <div class="goods-recommend">
                                <img src="../images/GS10000027b002.jpg" height="220"
                                     width="220"/>
                                <a href="">2017秋冬女装新款韩版宽松百搭中长款加绒加厚大码格子衬衫女</a>
                            </div>

                        </div>

                    </div>
                </div>
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
</body>
</html>