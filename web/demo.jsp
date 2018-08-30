<script> 
function myfun(){
    var x3=document.getElementById("validity").value;
    var umon=x3;
    var d=new Date();
    var mon=d.getMonth()+1;
    var year=d.getFullYear();
    var uyear= (umon[0]-'0')*1000+(umon[1]-'0')*100+(umon[2]-'0')*10+(umon[3]-'0');
    var umonth=(umon[5]-'0')*10+(umon[6]-'0');
    var date=year+mon;
    var udate=uyear+umonth;
    
    if(x3.length<1){
    document.getElementById("span3").innerHTML="Validity Cannot be Empty";
    return false;
    }
    if(x3.length>1){
    if((year-uyear)>0){
            document.getElementById("span3").innerHTML="Please Check Your Date";
            return false;
    }
    else if ((year-uyear)==0){
        if((mon-umonth)>0){
            document.getElementById("span3").innerHTML="Please Check Your Date";
            return false;
        }
        else{
        document.getElementById("span3").innerHTML="";
    }
    }
    else{
    document.getElementById("span3").innerHTML="";
    }
    }
   /* 
    document.getElementById("span3").innerHTML=date;
    document.getElementById("span4").innerHTML=date-udate;
    document.getElementById("span5").innerHTML=udate;
    
    if(x3.length<1){
    document.getElementById("span3").innerHTML="Validity Cannot be Empty";
    return false;
}
else if(new Date(date) - new Date(x3) > (0)){
       document.getElementById("span3").innerHTML="Invalid date, please select a date";
        return false;
    }
else{
document.getElementById("span3").innerHTML=new Date(date);
return false;
} */
    
}
</script>

            VALIDITY
            <INPUT type="month" name="validity" id="validity"  />
            
            <br>
<input type="submit" onclick="return myfun()"/>
            <br>
            <span style="color:blue"  id=span3></span>
            <br>
            <span style="color:blue"  id=span4></span>
            <br>
            <span style="color:blue"  id=span5></span>
            <br>