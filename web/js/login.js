/**
 * Created by ttc on 18-1-9.
 */



function check(){
    console.log(" check function in use");
    var uname= document.getElementById("uname").value;
    var upass=document.getElementById("upass").value;
    console.log("uname and upass is"+uname+"  "+upass);
    if(uname=="zhangsan"){
        console.log("shi zhangsan");
        return true;
    }else{
        console.log(("not zhangsan"));
    }
    return false;
}