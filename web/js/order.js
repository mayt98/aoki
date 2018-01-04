//商品详细参数规格的弹出滑动效果
function show1() {
    document.getElementById("spxx").hidden = true;
    document.getElementById("cs").hidden = false;
    document.getElementById("pj").hidden = true;
    document.getElementById("sh").hidden = true;

}
function shut() {
    document.getElementById("spxx").hidden = false;
    document.getElementById("cs").hidden = true;
    document.getElementById("pj").hidden = true;
    document.getElementById("sh").hidden = true;
}
function show2() {
    document.getElementById("spxx").hidden = true;
    document.getElementById("cs").hidden = true;
    document.getElementById("pj").hidden = false;
    document.getElementById("sh").hidden = true;
}
function show3() {
    document.getElementById("spxx").hidden = true;
    document.getElementById("cs").hidden = true;
    document.getElementById("pj").hidden = true;
    document.getElementById("sh").hidden = false;
}
//order页的商品滑动效果js代码
window.onload =function () {
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


}
function showbigone() {

    one.hidden=false;
    two.hidden=true;
    three.hidden=true;
    four.hidden=true;
}
function showbigtwo() {
    one.hidden=true;
    two.hidden=false;
    three.hidden=true;
    four.hidden=true;
}
function showbigthree() {
    one.hidden=true;
    two.hidden=true;
    three.hidden=false;
    four.hidden=true;
}
function showbigfour() {
    one.hidden=true;
    two.hidden=true;
    three.hidden=true;
    four.hidden=false;
}

//选择颜色
function selectcolorone() {

    ncolorone.style.border="2px solid red";
    ncolortwo.style.border="none";
    ncolorthree.style.border="none";
    ncolorfour.style.border="none";
    color=colorone.innerHTML;



}
function selectcolortwo() {
    ncolorone.style.border="none";
    ncolortwo.style.border="2px solid red";
    ncolorthree.style.border="none";
    ncolorfour.style.border="none";
    color=colortwo.innerHTML;

}
function selectcolorthree() {
    ncolorone.style.border="none";
    ncolortwo.style.border="none";
    ncolorthree.style.border="2px solid red";
    ncolorfour.style.border="none";
    color=colorthree.innerHTML;

}
function selectcolorfour() {
    ncolorone.style.border="none";
    ncolortwo.style.border="none";
    ncolorthree.style.border="none";
    ncolorfour.style.border="2px solid red";
    color=colorfour.innerHTML;

}
//选择尺寸
function selectsizem() {
    msize.style.backgroundColor="#ff5500";
    lsize.style.backgroundColor="black";
    xlsize.style.backgroundColor="black";
    xxlsize.style.backgroundColor="black";
    xxxlsize.style.backgroundColor="black";
    size=msize.innerHTML;

}
function selectsizel() {
    msize.style.backgroundColor="black";
    lsize.style.backgroundColor="#ff5500";
    xlsize.style.backgroundColor="black";
    xxlsize.style.backgroundColor="black";
    xxxlsize.style.backgroundColor="black";
    size=lsize.innerHTML;

}
function selectsizexl() {
    msize.style.backgroundColor="black";
    lsize.style.backgroundColor="black";
    xlsize.style.backgroundColor="#ff5500";
    xxlsize.style.backgroundColor="black";
    xxxlsize.style.backgroundColor="black";
    size=xlsize.innerHTML;

}
function selectsizexxl() {
    msize.style.backgroundColor="black";
    lsize.style.backgroundColor="black";
    xlsize.style.backgroundColor="black";
    xxlsize.style.backgroundColor="#ff5500";
    xxxlsize.style.backgroundColor="black";
    size=xxlsize.innerHTML;

}
function selectsizexxxl() {
    msize.style.backgroundColor="black";
    lsize.style.backgroundColor="black";
    xlsize.style.backgroundColor="black";
    xxlsize.style.backgroundColor="black";
    xxxlsize.style.backgroundColor="#ff5500";
    size=xxxlsize.innerHTML;

}
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
    amount++;
    shu.value=amount;
}

function gets() {
    var shu=document.getElementById("amount");
    console.log("颜色：" +color);
    console.log("尺寸："+size);
    console.log("数量:"+shu.value);
}