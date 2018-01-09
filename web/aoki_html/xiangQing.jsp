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
    <style>
        .confirm-pay-page{
            position: absolute;
            width: 1520px;
            height: 1333px;
            background-color: black;
            opacity:0.5;
            z-index: 51;

        }
        .confirm-pay-information{
            width: 350px;
            height: 550px;
            background-color: white;
            top: 150px;
            left: 550px;
            position: absolute;
            opacity:1;
            z-index: 52;
        }
        .order-pay-title{
            width: 350px;
            height: 50px;
            background-color: #9d2c00;
            color: white;
            font-size: larger;
            font-weight: 600;
            line-height: 50px;
            text-align: center;
        }
        /*.show-left{*/
        /*width: 100px;*/
        /*height: 500px;*/
        /*background-color: #005aa0;*/
        /*position: absolute;*/
        /*}*/
        /*.show-right{*/
        /*width: 98px;*/
        /*height: 500px;*/
        /*margin-left: 452px;*/
        /*margin-top: -502px;*/
        /*background-color: #2dd536;*/
        /*position: absolute;*/
        /*}*/
        .information-left{
            width: 350px;
            height: 500px;
            border: 1px solid black;
        }
        .ttu{
            color: #005aa0;
            margin-left: 20px;
        }
        .receiver {
            border-bottom: 1px solid #d51825;
            border-right: none;
            border-left: none;
            border-top:none;
            height: 15px;
            outline: none;
            padding-left: 10px;
            margin-left: 18px;
            margin-top: 20px;
            font-size: small;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        .receiver:hover{
            background-color: #d51825;
            color: white;
        }
        .phone {
            border-bottom: 1px solid #ff3be2;
            border-right: none;
            border-left: none;
            border-top:none;
            height: 15px;
            outline: none;
            padding-left: 10px;
            margin-left: 25px;
            margin-top: 20px;
            font-size: small;
            padding-top: 10px;
            padding-bottom: 10px;

        }
        .phone:hover{
            background-color: #ff3be2;
            color: white;
        }
        .send-to{
            margin-top: 20px;
        }
        .loc-detail{
            border-bottom: 1px solid #2dd536;
            border-right: none;
            border-left: none;
            border-top:none;
            height: 15px;
            outline: none;
            padding-left: 10px;
            margin-left: 10px;
            margin-top: 20px;
            font-size: small;

        }
        .sheng,.shi ,.qu{
            height: 20px;
            border: none;
            outline: none;
        }
        .ying-pay{
            margin: 50px;
            display: flex;
            align-items: center;
            color: #6e1508;
            font-weight: bold;
            margin-left: 30px;
        }
        .ying-pay div{
            color: red;
            margin-left: 50px;
        }
        .cla-span{
            margin-left: 30px;
            font-weight: bold;
            color: #6e1508;
        }
        .pay{
            width: 100px;
            height: 40px;
            border-radius: 23px;
            border: 1px solid black;
            margin-left: 30px;
            padding-left: 10px;
            outline: none;
            background-color: #663200;
            color: white;
            font-size: large;
        }
        .submit{
            margin-top: 20px;
            width: 350px;
            height: 50px;
            background-color: #ff5500;
            color: white;
            border: none;
        }
    </style>
    <script src="../js/xiangQing.js"></script>
    <script>
        window.onload=function () {

            console.log("user is"+"${u.uname}");
            if("${u.uname}"!=""){
                document.getElementById("isLogin").style.visibility="hidden";
                document.getElementById("isRegister").innerHTML="${u.uname}";
            }

            document.getElementById("confirmPayPage").style.visibility = "hidden";
            document.getElementById("buyNow").onclick=function () {

                document.getElementById("confirmPayPage").style.visibility = "visible";
                document.getElementById("formGoodsAmount").value=document.getElementById("amount").value;
                document.getElementById("sendAddress").value=document.getElementById("sendAddress1").value;
                document.getElementById("shouldPay").value=document.getElementById("goodsPrice1").value*document.getElementById("amount").value;
            }
            document.getElementById("cancleSubmit").onclick = function () {
                document.getElementById("confirmPayPage").style.visibility = "hidden";
            }

            document.getElementById("big1").src="${goodsInfo.bigImage1}";
            document.getElementById("big2").src="${goodsInfo.bigImage2}";
            document.getElementById("big3").src="${goodsInfo.bigImage3}";
            document.getElementById("big4").src="${goodsInfo.bigImage4}";
            document.getElementById("small1").src="${goodsInfo.smallImage1}";
            document.getElementById("small2").src="${goodsInfo.smallImage2}";
            document.getElementById("small3").src="${goodsInfo.smallImage3}";
            document.getElementById("small4").src="${goodsInfo.smallImage4}";

            console.log("big1 src"+ document.getElementById("big1").src);
            document.getElementById("imgForColor1").src="${goodsInfo.smallImage1}";
            document.getElementById("imgForColor2").src="${goodsInfo.smallImage2}";
            document.getElementById("imgForColor3").src="${goodsInfo.smallImage3}";
            document.getElementById("imgForColor4").src="${goodsInfo.smallImage4}";
            document.getElementById("colorone").innerHTML="${goodsInfo.color1}";
            document.getElementById("colortwo").innerHTML="${goodsInfo.color2}";
            document.getElementById("colorthree").innerHTML="${goodsInfo.color3}";
            document.getElementById("colorfour").innerHTML="${goodsInfo.color4}";

            window.setInterval(function(){
                var myDate = new Date();
                // console.log("shijian:"+(23-myDate.getHours())+(60-myDate.getMinutes())+(60-myDate.getSeconds()));
                // console.log("colorone"+document.getElementById("colorone").innerHTML);
                document.getElementById("hour").innerHTML=String(23-myDate.getHours());
                document.getElementById("minute").innerHTML=String(60-myDate.getMinutes());
                document.getElementById("seconds").innerHTML=String(60-myDate.getSeconds());
            },10);




            //把图片id 赋给goodsId 注意goodsId是隐藏的
            console.log("document.getElementById('big1').src:"+document.getElementById("big1").src.substr(29,10));
            document.getElementById("goodsId").value=document.getElementById("big1").src.substr(29,10);

            one=document.getElementById("bigone");
            two=document.getElementById("bigtwo");
            three=document.getElementById("bigthree");
            four=document.getElementById("bigfour");

            ncolorone= document.getElementById("ncolorone");
            ncolortwo= document.getElementById("ncolortwo");
            ncolorthree= document.getElementById("ncolorthree");
            ncolorfour= document.getElementById("ncolorfour");
            colorone= document.getElementById("colorone");
            colortwo= document.getElementById("colortwo");
            colorthree= document.getElementById("colorthree");
            colorfour= document.getElementById("colorfour");
            msize=document.getElementById("msize");
            lsize=document.getElementById("lsize");
            xlsize=document.getElementById("xlsize");
            xxlsize=document.getElementById("xxlsize");
            xxxlsize=document.getElementById("xxxlsize");

//加减数量
            function jian() {

                var shu=document.getElementById("amount");
                var amount=shu.value;
                amount--;
                shu.value=amount;
            }
            function jia() {
                var shu=document.getElementById("amount");
                var amount=shu.value;
                console.log("shu and amount is" +shu +" "+amount);
                amount++;
                shu.value=amount;
            }

            function gets() {
                var shu=document.getElementById("amount");
                console.log("颜色：" +color);
                console.log("尺寸："+size);
                console.log("数量:"+shu.value);
            }
        }
        function check(){
            console.log("check run");
            var pay1=document.getElementById("shouldPay").value;
            var pay2=document.getElementById("goodsPrice").value;
            console.log("pay1 and pay2 is "+pay1+" "+pay2);
            if(pay1!=pay2){
                return false;
            }
            var phone=document.getElementById("phone").value;
            console.log("phone is "+phone);
            if(phone==""){
                return false;
            }
            return true;
        }
    </script>

</head>
<body>
<div class="cover" id="confirmPayPage" id="confirmPayPage" >
    <div class="confirm-pay-page">
    </div>

    <div class="confirm-pay-information" >
        <div class="order-pay-title">订单信息</div>
        <div class="information-left">
            <div class="ttu">收货信息:</div>
            <hr>
            <form action="/ServletGouMai" method="post" id="form1" name="form1" onSubmit="return check()" >
                <span class="cla-span">收件人:</span> <input name="receiver" type="text" class="receiver" placeholder="收件人姓名"><br>

                <span class="cla-span">手机号:</span><input id="phone" name="phone" type="text" class="phone" placeholder="输入手机号"><br><br>

                <span class="cla-span">收件地址:<input style="border-style: none;" type="text" name="sendAddress" id="sendAddress">
                </span>

                <br>
                <div class="ying-pay">应支付:
                    <div><input id="shouldPay" value="6678" readonly="readOnly" style="border-style: none;"></div>
                </div>
                <span class="cla-span">请支付</span> <input name="goodsPrice" id="goodsPrice" type="text" class="pay" >
                <br>
                <input  name="formGoodsAmount" id="formGoodsAmount" readonly="readonly" hidden>

                <input type="submit" class="submit" id="submit" value="提交订单">
                <input type="button" class="submit" id="cancleSubmit" value="取消提交">
            </form>
        </div>
    </div>
</div>
<header>
    <div class="top">
        <div class="web-map">网站导航</div>
        <div class="account-service">客户服务</div>
        <div><a href="/aoki_html/login1.jsp" class="loginbutton" id="isLogin">请登录？</a></div>
        <div><a href="" class="registerbutton" id="isRegister">注册有礼</a></div>
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
            <form action="/ServletXiangQing" method="post">
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


                    <img  height="400" width="400"
                         class="big-1" id="big1" />
                    <input id="goodsId" name="goodsId" hidden>

                    <img  height="400" width="400"
                         height="400" width="400" class="big-2"  id="big2" hidden/>


                    <img  height="400" width="400"
                         height="400" width="400" id="big3" hidden/>


                    <img  height="400" width="400"
                         height="400" width="400" id="big4" hidden/>
                </div>
                <div class="small-image-show" >

                    <img
                         height="60" width="60" class="small-1" id="small1"  onmouseover="showbigone()"/>


                    <img
                         height="60" width="60" class="small-2" id="small2" onmouseover="showbigtwo()"/>


                    <img id="small3"
                         class="small-3" height="60" width="60" onmouseover="showbigthree()"/>


                    <img id="small4"
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
                <div class="goods-introduce" name="goods-introduce" id="goods-introduce">
                <input style="width:100%;border-style: none;" name="goodsIntroduce" value="${goodsInfo.goodsIntroduce}">

                </div>
                <div class="goods-active">
                    <div class="goods-chuxiao">
                        <div>活动倒计时还有：<span id="hour"></span>小时<span id="minute"></span>分<span id="seconds"></span>秒</div>
                    </div>
                    <div class="goods-cankaojia">参考价：
                        <div><s>￥688.00</s></div>
                    </div>
                    <div class="goods-shijia"> 现价：
                        <div><input id="goodsPrice1" name="goodsPrice" value="${goodsInfo.goodsPrice}" readonly="readonly" style="border-style: none;background-color: transparent;"></div>
                    </div>
                    <div class="good-user">会员：
                        <div>再打9.5折</div>
                    </div>
                    <div class="goods-pingjiasu">评价数：21</div>
                </div>
                <div class="send-to">
                    送至：
                    <div><input name="sendAddress" id="sendAddress1" value="辽宁省沈阳市浑南新区" style="border-style: none;"></div>
                </div>
                <div>
                    <ul>
                        <li class="goods-color">
                            <div> 颜色：</div>
                            <%--这个隐藏的input表示哪个颜色是被选中的--%>
                            <input name="colorSelected" id="colorSelected" hidden>
                            <div class="color-name"id="ncolorone" onclick="selectcolorone()">
                                <img id="imgForColor1"  height="40" width="40"/>
                                <div class="select-color" id="colorone">褐色</div>
                            </div>
                            <div class="color-name" id="ncolortwo" onclick="selectcolortwo()">
                                <img id="imgForColor2"  height="40" width="40"/>
                                <div class="select-color" id="colortwo">深红色</div>
                            </div>
                            <div class="color-name" id="ncolorthree" onclick="selectcolorthree()">
                                <img id="imgForColor3"  height="40" width="40"/>
                                <div class="select-color" id="colorthree">黑色</div>
                            </div>
                            <div class="color-name" id="ncolorfour" onclick="selectcolorfour()">
                                <img id="imgForColor4"  height="40" width="40"/>
                                <div class="select-color" id="colorfour">橘黄色</div>
                            </div>
                        </li>
                        <li class="goods-size">
                            <input name="sizeSelected" id="sizeSelected" hidden>
                            <div>尺码：</div>
                            <div class="size" id="msize" onclick="selectsizem()">M</div>
                            <div class="size" id="lsize" onclick="selectsizel()">L</div>
                            <div class="size" id="xlsize" onclick="selectsizexl()">XL</div>
                            <div class="size" id="xxlsize" onclick="selectsizexxl()">XXL</div>
                            <div class="size" id="xxxlsize" onclick="selectsizexxxl()">XXXL</div>
                        </li>
                        <li class="goods-amount">
                            <div>数量</div>
                            <input type="button" value=" - " class="jian" id="jian" onclick="jianFunc()">
                            <input type="text" class="input-text" value="1" id="amount" name="goodsAmount">
                            <input type="button" value=" + " class="jia" id="jia" onclick="jiaFunc()">
                        </li>
                    </ul>
                </div>
                <div>
                    <input id="buyNow" type="button" value="立即购买" class="buy">
                    <input type="submit" id="gouwuche" value="加入购物车" class="take-in" >
                </div>

            </div>
            </form>
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