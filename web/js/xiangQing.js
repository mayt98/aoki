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



}
function showbigone() {
    one=document.getElementById("bigone");
    two=document.getElementById("bigtwo");
    three=document.getElementById("bigthree");
    four=document.getElementById("bigfour");
    one.hidden=false;
    two.hidden=true;
    three.hidden=true;
    four.hidden=true;
}
function showbigtwo() {
    one=document.getElementById("bigone");
    two=document.getElementById("bigtwo");
    three=document.getElementById("bigthree");
    four=document.getElementById("bigfour");
    one.hidden=true;
    two.hidden=false;
    three.hidden=true;
    four.hidden=true;
}
function showbigthree() {
    one=document.getElementById("bigone");
    two=document.getElementById("bigtwo");
    three=document.getElementById("bigthree");
    four=document.getElementById("bigfour");
    one.hidden=true;
    two.hidden=true;
    three.hidden=false;
    four.hidden=true;
}
function showbigfour() {
    one=document.getElementById("bigone");
    two=document.getElementById("bigtwo");
    three=document.getElementById("bigthree");
    four=document.getElementById("bigfour");
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

    document.getElementById("colorSelected").value=color;
    console.log("the color selected is "+document.getElementById("colorSelected").value);


}
function selectcolortwo() {
    ncolorone.style.border="none";
    ncolortwo.style.border="2px solid red";
    ncolorthree.style.border="none";
    ncolorfour.style.border="none";
    color=colortwo.innerHTML;

    document.getElementById("colorSelected").value=color;
    console.log("the color selected is "+document.getElementById("colorSelected").value);
}
function selectcolorthree() {
    ncolorone.style.border="none";
    ncolortwo.style.border="none";
    ncolorthree.style.border="2px solid red";
    ncolorfour.style.border="none";
    color=colorthree.innerHTML;

    document.getElementById("colorSelected").value=color;
    console.log("the color selected is "+document.getElementById("colorSelected").value);
}
function selectcolorfour() {
    ncolorone.style.border="none";
    ncolortwo.style.border="none";
    ncolorthree.style.border="none";
    ncolorfour.style.border="2px solid red";
    color=colorfour.innerHTML;

    document.getElementById("colorSelected").value=color;
    console.log("the color selected is "+document.getElementById("colorSelected").value);

}
//选择尺寸
function selectsizem() {
    msize.style.backgroundColor="#ff5500";
    lsize.style.backgroundColor="black";
    xlsize.style.backgroundColor="black";
    xxlsize.style.backgroundColor="black";
    xxxlsize.style.backgroundColor="black";
    size=msize.innerHTML;

    document.getElementById("sizeSelected").value=size;
    console.log("the size selected is"+document.getElementById("sizeSelected").value);

}
function selectsizel() {
    msize.style.backgroundColor="black";
    lsize.style.backgroundColor="#ff5500";
    xlsize.style.backgroundColor="black";
    xxlsize.style.backgroundColor="black";
    xxxlsize.style.backgroundColor="black";
    size=lsize.innerHTML;
    document.getElementById("sizeSelected").value=size;
    console.log("the size selected is"+document.getElementById("sizeSelected").value);


}
function selectsizexl() {
    msize.style.backgroundColor="black";
    lsize.style.backgroundColor="black";
    xlsize.style.backgroundColor="#ff5500";
    xxlsize.style.backgroundColor="black";
    xxxlsize.style.backgroundColor="black";
    size=xlsize.innerHTML;
    document.getElementById("sizeSelected").value=size;
    console.log("the size selected is"+document.getElementById("sizeSelected").value);

}
function selectsizexxl() {
    msize.style.backgroundColor="black";
    lsize.style.backgroundColor="black";
    xlsize.style.backgroundColor="black";
    xxlsize.style.backgroundColor="#ff5500";
    xxxlsize.style.backgroundColor="black";
    size=xxlsize.innerHTML;
    document.getElementById("sizeSelected").value=size;
    console.log("the size selected is"+document.getElementById("sizeSelected").value);

}
function selectsizexxxl() {
    msize.style.backgroundColor="black";
    lsize.style.backgroundColor="black";
    xlsize.style.backgroundColor="black";
    xxlsize.style.backgroundColor="black";
    xxxlsize.style.backgroundColor="#ff5500";
    size=xxxlsize.innerHTML;
    document.getElementById("sizeSelected").value=size;
    console.log("the size selected is"+document.getElementById("sizeSelected").value);

}
