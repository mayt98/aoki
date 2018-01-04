<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 18-1-3
  Time: 上午9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>购物车页面</title>
    <link rel="stylesheet" href="../aoki_css/shopping_trolley.css">
    <script language="JavaScript" type="text/javascript">
        window.onload=function() {



//            点击结算时打开订单表单
            document.getElementById("jieSuan").onclick = function () {

                document.getElementById("confirmPayPage").style.visibility = "visible";
                document.getElementById("shouldPay").innerHTML = document.getElementById("totalMoney").innerHTML;
                //把表单外的值赋给表单中的隐藏值

                document.getElementById("formGoodsAmount").value=document.getElementById("goodsAmount").innerHTML;
                console.log("goodsAmount s value "+document.getElementById("goodsAmount").innerHTML);
                console.log("formGoodsAmount s value "+document.getElementById("formGoodsAmount").value);
            }
            //点击取消订单时隐藏订单表单
            document.getElementById("cancleSubmit").onclick = function () {
                document.getElementById("confirmPayPage").style.visibility = "hidden";
            }
            document.getElementById("selectAll").onclick = function () {
                if (document.getElementById("selectAll").checked) {
                    document.getElementById("checkbox1").checked = "checked";
                    document.getElementById("checkbox2").checked = "checked";
                } else {
                    document.getElementById("checkbox1").checked = false;
                    document.getElementById("checkbox2").checked = false;
                }
            }


            document.getElementById("oneReduce").onclick = function () {
                var a = document.getElementById("goodsAmount").innerHTML;
                document.getElementById("goodsAmount").innerHTML = Number(a) - 1;
                document.getElementById("oneMoney").innerHTML = 688 * (Number(a) - 1);
                //接收两个复选框的值 尝试着把这两句放在外面 结果是选中状态不再变化 影响判断
                var oneIsChecked = document.getElementById("checkbox1").checked;
                var twoIsChecked = document.getElementById("checkbox2").checked;

                if (oneIsChecked && twoIsChecked) {
                    document.getElementById("totalMoney").innerHTML = Number(document.getElementById("oneMoney").innerHTML) +
                            Number(document.getElementById("twoMoney").innerHTML);
                    console.log("one and two is checked" + oneIsChecked.innerText);
                } else if (!oneIsChecked && !twoIsChecked) {
                    document.getElementById("totalMoney").innerHTML = 0;
                } else if (oneIsChecked && !twoIsChecked) {
                    document.getElementById("totalMoney").innerHTML = Number(document.getElementById("oneMoney").innerHTML);
                } else {
                    document.getElementById("totalMoney").innerHTML = Number(document.getElementById("twoMoney").innerHTML);
                }

            }
            document.getElementById("onePlus").onclick = function () {
                var a = document.getElementById("goodsAmount").innerHTML;
                document.getElementById("goodsAmount").innerHTML = Number(a) + 1;
                document.getElementById("oneMoney").innerHTML = 688 * (Number(a) + 1);

                //接收两个复选框的值 尝试着把这两句放在外面 结果是选中状态不再变化 影响判断
                var oneIsChecked = document.getElementById("checkbox1").checked;
                var twoIsChecked = document.getElementById("checkbox2").checked;
                if (oneIsChecked && twoIsChecked) {
                    document.getElementById("totalMoney").innerHTML = Number(document.getElementById("oneMoney").innerHTML) +
                            Number(document.getElementById("twoMoney").innerHTML);
                    console.log("one and two is checked" + oneIsChecked.innerText);
                } else if (!oneIsChecked && !twoIsChecked) {
                    document.getElementById("totalMoney").innerHTML = 0;
                } else if (oneIsChecked && !twoIsChecked) {
                    document.getElementById("totalMoney").innerHTML = Number(document.getElementById("oneMoney").innerHTML);
                } else {
                    document.getElementById("totalMoney").innerHTML = Number(document.getElementById("twoMoney").innerHTML);
                }
            }
            document.getElementById("twoReduce").onclick = function () {
                var a = document.getElementById("twoAmount").innerHTML;
                document.getElementById("twoAmount").innerHTML = Number(a) - 1;
                document.getElementById("twoMoney").innerHTML = 688 * (Number(a) - 1);
                //接收两个复选框的值 尝试着把这两句放在外面 结果是选中状态不再变化 影响判断
                var oneIsChecked = document.getElementById("checkbox1").checked;
                var twoIsChecked = document.getElementById("checkbox2").checked;
                if (oneIsChecked && twoIsChecked) {
                    document.getElementById("totalMoney").innerHTML = Number(document.getElementById("oneMoney").innerHTML) +
                            Number(document.getElementById("twoMoney").innerHTML);
                    console.log("one and two is checked" + oneIsChecked.innerText);
                } else if (!oneIsChecked && !twoIsChecked) {
                    document.getElementById("totalMoney").innerHTML = 0;
                } else if (oneIsChecked && !twoIsChecked) {
                    document.getElementById("totalMoney").innerHTML = Number(document.getElementById("oneMoney").innerHTML);
                } else {
                    document.getElementById("totalMoney").innerHTML = Number(document.getElementById("twoMoney").innerHTML);
                }
            }
            document.getElementById("twoPlus").onclick = function () {
                var a = document.getElementById("twoAmount").innerHTML;
                document.getElementById("twoAmount").innerHTML = Number(a) + 1;
                document.getElementById("twoMoney").innerHTML = 688 * (Number(a) + 1);
                //接收两个复选框的值 尝试着把这两句放在外面 结果是选中状态不再变化 影响判断
                var oneIsChecked = document.getElementById("checkbox1").checked;
                var twoIsChecked = document.getElementById("checkbox2").checked;
                if (oneIsChecked && twoIsChecked) {
                    document.getElementById("totalMoney").innerHTML = Number(document.getElementById("oneMoney").innerHTML) +
                            Number(document.getElementById("twoMoney").innerHTML);
                    console.log("one and two is checked" + oneIsChecked.innerText);
                } else if (!oneIsChecked && !twoIsChecked) {
                    document.getElementById("totalMoney").innerHTML = 0;
                } else if (oneIsChecked && !twoIsChecked) {
                    document.getElementById("totalMoney").innerHTML = Number(document.getElementById("oneMoney").innerHTML);
                } else {
                    document.getElementById("totalMoney").innerHTML = Number(document.getElementById("twoMoney").innerHTML);
                }
            }

//联动
            //定义了城市的二维数组，里面的顺序跟省份的顺序是相同的。通过selectedIndex获得省份的下标值来得到相应的城市数组
            var city = [
                ["北京", "天津", "上海", "重庆"],
                ["南京", "苏州", "南通", "常州"],
                ["福州", "福安", "龙岩", "南平"],
                ["广州", "潮阳", "潮州", "澄海"],
                ["兰州", "白银", "定西", "敦煌"]
            ];

            function getCity() {
                //获得省份下拉框的对象
                var sltProvince = document.form1.province;
                //获得城市下拉框的对象
                var sltCity = document.form1.city;
                //得到对应省份的城市数组
                var provinceCity = city[sltProvince.selectedIndex - 1];

                //清空城市下拉框，仅留提示选项
                sltCity.length = 1;

                //将城市数组中的值填充到城市下拉框中
                for (var i = 0; i < provinceCity.length; i++) {
                    sltCity[i + 1] = new Option(provinceCity[i], provinceCity[i]);
                }
            }
        }

    </script>

</head>
<body>
<div class="cover" id="confirmPayPage" >
    <div class="confirm-pay-page">
    </div>

    <div class="confirm-pay-information" >
        <div class="order-pay-title">订单信息</div>
        <div class="information-left">
            <div class="ttu">收货信息:</div>
            <hr>
            <form action="/ServletOrder" method="post"  name="form1" >
                <span class="cla-span">收件人:</span> <input name="receiver" type="text" class="receiver" placeholder="收件人姓名"><br>

                <span class="cla-span">手机号:</span><input name="phone" type="text" class="phone" placeholder="输入手机号"><br><br>

                <span class="cla-span">收件地址:<input type="text" name="sendAddress"> </span>

                <%--<SELECT NAME="province" onChange="getCity()">--%>
                    <%--       <OPTION VALUE="0">请选择所在省份 </OPTION>--%>
                    <%--       <OPTION VALUE="直辖市">直辖市 </OPTION>--%>
                    <%--       <OPTION VALUE="江苏省">江苏省 </OPTION>--%>
                    <%--       <OPTION VALUE="福建省">福建省 </OPTION>--%>
                    <%--       <OPTION VALUE="广东省">广东省 </OPTION>--%>
                    <%--       <OPTION VALUE="甘肃省">甘肃省 </OPTION>--%>
                    <%--     </SELECT>--%>
                <%--     <SELECT NAME="city">--%>
                <%--       <OPTION VALUE="0">请选择所在城市 </OPTION>--%>
                <%--     </SELECT>--%>

                <br>
                  <div class="ying-pay">应支付:
                    <div><span id="shouldPay">666</span></div>
                </div>
                <span class="cla-span">请支付</span> <input name="goodsPrice" id="goodsPrice" type="text" class="pay" >
                <br>
                <input  name="formGoodsAmount" id="formGoodsAmount" readonly="readonly" >
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
        <div><a href="" class="loginbutton">请登录？</a></div>
        <div><a href="" class="registerbutton">注册有礼</a></div>

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
            <input type="checkbox" id="selectAll">全选
            <div class="detail">商品信息</div>
            <div class="detail">规格</div>
            <div class="detail">单价（元）</div>
            <div class="detail" >数量</div>
            <div class="detail">小计（元）</div>
            <div class="detail">操作</div>
        </div>
        <div class="goods">
            <input type="checkbox" id="checkbox1">
            <div class="goods-image">
                <img src="../aoki_images/0070170677-000000010052305428_1.jpg" height="60" width="60"/>

            </div>
            <div class="goods-info">商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息</div>
            <div class="goods-size">
                <div>颜色:
                    <div>红色</div>
                </div>
                <div>尺寸:
                    <div>XL</div>
                </div>
            </div>
            <div class="goods-price">￥688.00</div>
            <div class="goods-amount">
                <input type="button" value=" - " class="jian" id="oneReduce">
                <span id="goodsAmount">1</span>
                <%--<input type="number" class="amount"  id="oneAmount">--%>
                <input type="button" value=" + " class="jia" id="onePlus">
            </div>
            <div class="goods-account"><span id="oneMoney">688</span></div>
            <div class="goods-option">
                <input type="button" value="收藏"><br>
                <input type="button" value="删除">

            </div>
        </div>

        <div class="goods">
            <input type="checkbox" id="checkbox2">
            <div class="goods-image">
                <img src="../aoki_images/0070170677-000000010052305428_1.jpg" height="60" width="60"/>

            </div>
            <div class="goods-info">商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息商品信息</div>
            <div class="goods-size">
                <div>颜色:
                    <div>红色</div>
                </div>
                <div>尺寸:
                    <div>XL</div>
                </div>
            </div>
            <div class="goods-price">￥688.00</div>
            <div class="goods-amount">
                <input type="button" value=" - " class="jian" id="twoReduce">
                <span id="twoAmount">1</span>
                <input type="button" value=" + " class="jia" id="twoPlus">
            </div>
            <div class="goods-account"><span id="twoMoney">688</span></div>
            <div class="goods-option">
                <input type="button" value="收藏"><br>
                <input type="button" value="删除">

            </div>
        </div>

        <div class="close-account">
            <input type="checkbox">全选
            <div class="total">总价：
                <div><span id="totalMoney">688</span></div>
            </div>
            <div class="total-button">
                <input type="submit" value="结算" id="jieSuan">
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
                                <img src="../aoki_images/0070119648-000000000774162821_1_220x220.jpg" height="220"
                                     width="220"/>
                                <div class="a-lianjie"><a href="">点击链接到对应的订单页面点击链接到对应的订单页面点击链接到对应的订单页面</a></div>
                            </div>
                            <div class="goods-recommend">

                                <img src="../aoki_images/0070154332-000000000826208138_1_220x220.jpg" height="220"
                                     width="220"/>
                                <a href="">点击链接到对应的订单页面点击链接到对应的订单页面点击链接到对应的订单页面</a>
                            </div>
                            <div class="goods-recommend">

                                <img src="../aoki_images/0070159286-000000010009788149_1_220x220.jpg" height="220"
                                     width="220"/>
                                <a href="">点击链接到对应的订单页面点击链接到对应的订单页面点击链接到对应的订单页面</a>
                            </div>


                            <div class="goods-recommend">
                                <img src="../aoki_images/0070160106-000000000685824760_1_220x220.jpg" height="220"
                                     width="220"/>
                                <a href="">点击链接到对应的订单页面点击链接到对应的订单页面点击链接到对应的订单页面</a>
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
