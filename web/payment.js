
function myfun(){


var x1=document.getElementById("cardno").value;
var num= /^[0-9]+$/;
var nam= /^[a-zA-Z ]+$/; 
var x2=document.getElementById("cardname").value;
var x3=document.getElementById("validity").value;
var x4=document.getElementById("cvv").value;
var x5=document.getElementById("bankname").value;
var x6=document.getElementById("bookid").value;
var name= /^[A-Za-z\s]+$/;
var space=/^[\s]+$/;
var number=/^[0-9]+$/;
var sym = /^[!@#$%^&*()]+$/; 
var namecount=0;

// for payment date val
var umon=x3;
var d=new Date();
var mon=d.getMonth()+1;
var year=d.getFullYear();
var uyear= (umon[0]-'0')*1000+(umon[1]-'0')*100+(umon[2]-'0')*10+(umon[3]-'0');
var umonth=(umon[5]-'0')*10+(umon[6]-'0');
var date=year+mon;
var udate=uyear+umonth;
    


       //validate bankname
        if(x5.length<1){
        document.getElementById("span5").innerHTML="Bank Name Cannot be Empty";
        return false;
        }
        else if(x5.length>1){
        if(!x5.match(nam)){
        document.getElementById("span5").innerHTML="Please do not type Numbers";
        return false;
        }
        else{
            document.getElementById("span5").innerHTML="";

        }
        }


       //validate bookid
        if(x6.length<1){
        document.getElementById("span6").innerHTML="Booking ID Cannot be Empty";
        return false;
        }
        else if(x6.length>5){
            document.getElementById("span6").innerHTML="Max Size of Booking ID is 5";
            return false;
        }
        else if(x6.length<6){
        if(!x6.match(num)){
        document.getElementById("span6").innerHTML="Please provide only Numbers";
        return false;
        }
        else{
            document.getElementById("span6").innerHTML="";
            
        }
        }

//validate card no.
if(x1.length<16){
    document.getElementById("span1").innerHTML="Size of Cardno is 16";
      return false;
}
else if(x1.length<1){
document.getElementById("span1").innerHTML="Cardno Cannot be Empty";
return false;
}
else if(x1.length>16){
    document.getElementById("span1").innerHTML="Max Size of Cardno is 16";
      return false;
}
else if(x1.length<17){
if(!x1.match(num)){
document.getElementById("span1").innerHTML="Please provide only Numbers";
return false;
}
else{
    document.getElementById("span1").innerHTML="";
    
}
}

//card name
if(x2==""){
document.getElementById("span2").innerHTML="Name Cant be empty";
return false;
}
else if(x2.match(space)){
        namecount=namecount+1;
        document.getElementById("span2").innerHTML="Please dont use space ";
        return false;
}
else if(x2.length>0){
if(!x2.match(name)){
document.getElementById("span2").innerHTML="Please provide only alphabates";
return false;
}
}
if(namecount>1){
    document.getElementById("span2").innerHTML="Please use only one space";
    return false;
}
else{
    document.getElementById("span2").innerHTML="";
}

//validity

if(x3.length<1){
    document.getElementById("span3").innerHTML="Validity Cannot be Empty";
    return false;
    }
    if(x3.length>1){
    if((year-uyear)>0){
            document.getElementById("span3").innerHTML="Please Check Your  Validity";
            return false;
    }
    else if ((year-uyear)==0){
        if((mon-umonth)>0){
            document.getElementById("span3").innerHTML="Please Check Your Validity";
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


//cvv
{
if(x4.length<3){
    document.getElementById("span4").innerHTML="Size of CVV is 3";
      return false;
}
}
if(x4.length<1){
document.getElementById("span4").innerHTML="CVV Cannot be empty";
return false;
}
if(x4.length>3){
    document.getElementById("span4").innerHTML="Max Size of CVV is 3";
      return false;
}
else if(x4.length<4){
if(!x4.match(num)){
document.getElementById("span4").innerHTML="Please provide only Numbers";
return false;
}
else{
    document.getElementById("span4").innerHTML="";
    return true;
}
}


}           