<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-2
  Time: 下午8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>订单页面</title>
    <link rel="stylesheet" href="../aoki_css/order.css">
    <script src="../js/order.js"></script>


</head>
<body>
<header>
    <div class="top">
        <div class="web-map">网站导航</div>
        <div class="account-service">客户服务</div>
        <div><a href="" class="loginbutton">请登录？</a></div>
        <div><a href="" class="registerbutton">注册有礼</a></div>
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
            <div class="hotindexmenu" id="hotindexmenu">首页</div>
            <div class="indexmenu">新品上市</div>
            <div class="indexmenu">羽绒服</div>
            <div class="indexmenu">时尚套装</div>
            <div class="indexmenu">连衣裙</div>
            <div class="indexmenu">棉服</div>
            <div class="indexmenu">针织毛衣</div>
            <div class="indexmenu">T恤/卫衣</div>

        </div>
        <div class="goods-order-page">
            <div class="goods-map">
                <div class="cct">
                    <div class="position">当前位置</div>:
                    <div class="chrid">首页</div>
                    <div class="chrid">羽绒服专区</div>
                    <div class="chrid">最美的遇见</div>
                </div>
            </div>
            <div class="goods-detail-left">
                <div class="big-image-show" >


                    <img src="../images/GS10000050b001.jpg" height="400" width="400"
                         class="big-1" id="bigone"/>

                    <img src="../images/GS10000050b002.jpg" height="400" width="400"
                         height="400" width="400" class="big-2"  id="bigtwo" hidden/>


                    <img src="../images/GS10000050b003.jpg" height="400" width="400"
                         height="400" width="400" id="bigthree" hidden/>


                    <img src="../images/GS10000050b004.jpg" height="400" width="400"
                         height="400" width="400" id="bigfour" hidden/>
                </div>
                <div class="small-image-show" >

                    <img src="../images/GS10000050s001.jpg"
                         height="60" width="60" class="small-1" id="small-1"  onmouseover="showbigone()"/>


                    <img src="../images/GS10000050s002.jpg"
                         height="60" width="60" class="small-2" id="small-2" onmouseover="showbigtwo()"/>


                    <img src="../images/GS10000050s003.jpg"
                         class="small-3" height="60" width="60" onmouseover="showbigthree()"/>


                    <img src="../images/GS10000050s004.jpg"
                         class="small-4" height="60" width="60" onmouseover="showbigfour()"/>

                </div>

            </div>
            <div class="share-connect">
                <div class="share-focus">
                    <a href="">分享</a>
                    <a href="">关注</a>
                    <a href="">收藏</a>
                </div>
                <div class="connect">

                </div>
            </div>
            <div class="goods-detail-right">
                <div class="goods-introduce">
                    【券后价279】高梵2017亮点羽绒服女短款女装
                    条纹拼接透明可视轻薄秋冬棒球服
                </div>
                <div class="goods-active">
                    <div class="goods-chuxiao">
                        <div>活动倒计时还有：5小时25分30秒</div>
                    </div>
                    <div class="goods-cankaojia">参考价：
                        <div><s>￥688.00</s></div>
                    </div>
                    <div class="goods-shijia"> 现价：
                        <div>￥288.00</div>
                    </div>
                    <div class="good-user">会员：
                        <div>再打9.5折</div>
                    </div>
                    <div class="goods-pingjiasu">评价数：21</div>
                </div>
                <div class="send-to">
                    送至：
                    <div>辽宁省沈阳市浑南新区</div>
                </div>
                <div>
                    <ul>
                        <li class="goods-color">
                            <div> 颜色：</div>
                            <div class="color-name"id="ncolorone" onclick="selectcolorone()">
                                <img src="../images/GS10000050s001.jpg"  height="40" width="40"/>
                                <div class="select-color" id="colorone">褐色</div>
                            </div>
                            <div class="color-name" id="ncolortwo" onclick="selectcolortwo()">
                                <img src="../images/GS10000050s002.jpg"  height="40" width="40"/>
                                <div class="select-color" id="colortwo">深红色</div>
                            </div>
                            <div class="color-name" id="ncolorthree" onclick="selectcolorthree()">
                                <img src="../images/GS10000050s003.jpg"  height="40" width="40"/>
                                <div class="select-color" id="colorthree">黑色</div>
                            </div>
                            <div class="color-name" id="ncolorfour" onclick="selectcolorfour()">
                                <img src="../images/GS10000050s004.jpg"  height="40" width="40"/>
                                <div class="select-color" id="colorfour">橘黄色</div>
                            </div>
                        </li>
                        <li class="goods-size">
                            <div>尺码：</div>
                            <div class="size" id="msize" onclick="selectsizem()">M</div>
                            <div class="size" id="lsize" onclick="selectsizel()">L</div>
                            <div class="size" id="xlsize" onclick="selectsizexl()">XL</div>
                            <div class="size" id="xxlsize" onclick="selectsizexxl()">XXL</div>
                            <div class="size" id="xxxlsize" onclick="selectsizexxxl()">XXXL</div>
                        </li>
                        <li class="goods-amount">
                            <div>数量</div>
                            <input type="button" value=" - " class="jian" id="jian" onclick="jian()">
                            <input type="text" class="input-text" value="1" id="amount">
                            <input type="button" value=" + " class="jia" id="jia" onclick="jia()">
                        </li>
                    </ul>
                </div>
                <div>
                    <input type="button" value="立即购买" class="buy">
                    <input type="submit" id="gouwuche" value="加入购物车" class="take-in" onclick="gets()">
                </div>

            </div>
            <div class="commend-rightside-next">
                <div class="commend-rightside-goods">
                    <img src="../images/GS10000015b002.jpg" height="180" width="180"/>
                    <a href="">小棉袄女短款2017新款冬装韩版可爱面包服加厚保暖棉衣冬天外套潮</a>
                </div>
                <div class="commend-rightside-goods">


                    <img src="../images/GS10000016b002.jpg" height="180" width="180"/>
                    <a href="">2017秋冬装新款棉服女短款韩版宽松大翻领chic棉衣外套棉袄潮 </a>
                </div>
                <div class="commend-rightside-goods">


                    <img src="../images/GS10000017b002.jpg" height="180" width="180"/>
                    <a href="">宽松拼接棉衣2017新款可爱翻领羊羔毛外套女冬装百搭短款小棉袄</a>
                </div>

            </div>
            <div class="cansu-feigexian">
                <div class="sp-detail">
                    商品详情
                </div>
                <div class="cs-detail sp-detail" id="xxcs"
                     onmouseover="show1()" onmouseleave="shut()">
                    详细参数
                </div>
                <div class="pj-detail sp-detail"
                     onmouseover="show2()" onmouseleave="shut()">
                    评价
                </div>
                <div class="sh-detail sp-detail"
                     onmouseover="show3()" onmouseleave="shut()">
                    售后保障
                </div>
            </div>
            <div class="lxsj-left" >
                <div class="merchant-name">---Aokiboy商家---</div>
                <div class="conn-merchant">
                    <ul>
                        <li>
                            <div class="xxc">联系商家</div><div class="eec"> %%%&&￥</div>
                        </li>
                        <li>
                            <div class="xxc">联系电话</div><div class="eec">0685-322014</div>
                        </li>
                    </ul>

                </div>
                <hr>
                <div class="come-in">
                    <button>进入店铺</button>
                    <button>收藏店铺</button>
                </div>

            </div>
            <div class="detail-hidden" id="spxx">

            </div>
            <div class="detail-hidden cs" id="cs"
                 onchange="baoliu1()" hidden>

            </div>
            <div class="detail-hidden pj" id="pj"
                 onchange="baoliu2()"hidden>

            </div>
            <div class="detail-hidden sh" id="sh"
                 onchange="baoliu3()" hidden>

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
    <div class="confirm-pay-page">
        <div class="confirm-pay-information">

        </div>
    </div>
</div>

</body>
</html>