
function myfun(){



var x10=document.getElementById("cancel").value;
var num= /^[0-9]+$/;

//validate book id
if(x10.length<1){
document.getElementById("span1").innerHTML="Booking ID Cannot be empty";
return false;
}
else if(x10.length>5){
    document.getElementById("span1").innerHTML="Max Size of Booking ID is 5";
    return false;
}
else if(x10.length<6){
if(!x10.match(num)){
document.getElementById("span1").innerHTML="Please provide only Numbers";
return false;
}
else{
    document.getElementById("span1").innerHTML="";
    return true;
}
}



}
