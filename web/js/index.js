/**
 * Created by ttc on 18-1-7.
 */
function esearch(s) {
    var id=s.className.substring(0,10);
    var xml=new XMLHttpRequest();
    xml.open("post","/ServletIndex");
    xml.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    xml.send("id="+id);

    xml.onreadystatechange=function () {
        if (xml.status==200&&xml.readyState==4)
        {
            var path=xml.responseText;

            window.location.href=path;
        }
    }

}



