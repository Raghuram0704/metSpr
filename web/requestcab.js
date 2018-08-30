

function myfun(){

var x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,i;

x1=document.getElementById("city").value;
x4=document.getElementById("date").value;
x5=document.getElementById("time").value;
x6=document.getElementById("pickup").value;
x7=document.getElementById("drop").value;
x9=document.getElementById("name").value;
x10=document.getElementById("number").value;
x11=document.getElementById("person").value;
x12=document.getElementById("idcardtype").value;
x13=document.getElementById("idcardno").value;
var name= /^[A-Za-z\s]+$/;
var space=/^[\s]+$/;
var number=/^[0-9]+$/;
var sym = /^[!@#$%^&*()]+$/; 
var namecount=0;

//for date
var diff =new Date() - new Date(date);

//for time
var utime=document.getElementById("time").value;;
var d = new Date();
var time = d.toString();
var uhr= (utime[1]-'0')+(utime[0]-'0')*10;
var umin= (utime[4]-'0')+(utime[3]-'0')*10;
var shr= (time[17]-'0')+(time[16]-'0')*10;
var smin= (time[20]-'0')+(time[19]-'0')*10;



//to check city 
if(x1.length<1){
document.getElementById("span1").innerHTML="Location Cant be Empty";
return false;
}
else{
document.getElementById("span1").innerHTML="";
}

//to check a/c or non a/c
if(document.getElementById("service1").checked==false && document.getElementById
("service").checked==false ){
document.getElementById("span2").innerHTML="Please Select Tupe of Vehicle";
return false;
}
else{
document.getElementById("span2").innerHTML="";
}


//to check urgent or normal
if(document.getElementById("urgent").checked==false && document.getElementById
("normal").checked==false ){
document.getElementById("span3").innerHTML="Please Select Your Service";
return false;
}
else{
document.getElementById("span3").innerHTML="";
}

//to check date only when its normal and to keep current date when its urgent
//var today=new Date();

if(document.getElementById("urgent").checked==true){
     
        if(new Date() - new Date(x4) > (99999999)){
               document.getElementById("span4").innerHTML="Invalid date, please select Today";
                return false;
        }  
        else if(new Date() - new Date(x4) < (0)){
            document.getElementById("span4").innerHTML="Invalid date, please select Today";
            return false;
        }    
        else{
        document.getElementById("span4").innerHTML="";
        }
}
else if(x4==""){
    document.getElementById("span4").innerHTML="Please select the date";
    return false;
}  
else if(new Date() - new Date(x4) > (99999999)){
       document.getElementById("span4").innerHTML="Invalid date, please select a date";
        return false;
    }
else{
document.getElementById("span4").innerHTML="";
}




//to check time
if(x5==""){
document.getElementById("span5").innerHTML="Please Select a Time";
return false;
}
else if(uhr>shr){
document.getElementById("span5").innerHTML = "";
}
else if (uhr == shr && umin >= smin){
document.getElementById("span5").innerHTML = "";
}
else{
document.getElementById("span5").innerHTML = " Invalid Time, Please select a Time ";
return false;
}

//to check drop location

if(x7.match(x6)){
   document.getElementById("span7").innerHTML="Matched with Pickup Loaction,Please Change Loaction"; 
   return false;
}
else if(x7==""){
document.getElementById("span7").innerHTML="Location Cant be Empty";
return false;
}
else{
document.getElementById("span7").innerHTML="";
}


//to check name

if(x9==""){
document.getElementById("span9").innerHTML="Name Cant be empty";
return false;
}
else if(x9.match(space)){
        namecount=namecount+1;
        document.getElementById("span9").innerHTML="Please dont use space ";
        return false;
}
else if(x9.length>0){
if(!x9.match(name)){
document.getElementById("span9").innerHTML="Please provide only alphabates";
return false;
}
}
if(namecount>1){
    document.getElementById("span9").innerHTML="Please use only one space";
    return false;
}
else{
    document.getElementById("span9").innerHTML="";
}



//to check mobile no.

if(x10==""){
document.getElementById("span10").innerHTML="Mobile Number Cannot be Empty";
return false;
}
else if(x10.length<10){
 if(x10[0]==0){
document.getElementById("span10").innerHTML="Do not Start with Zero";
return false;
}
else if(x10.match(space)){
        namecount=namecount+1;
        document.getElementById("span10").innerHTML="Please dont use space ";
        return false;
}
else if(!x10.match(number)){
document.getElementById("span10").innerHTML="Please provide only Numbers";
return false;
}
}
else if(namecount>1){
    document.getElementById("span10").innerHTML="Please use only one space";
    return false;
}
else if (x10.length>10){
        document.getElementById("span10").innerHTML="Please enter 10 digit Mobile No.";
        return false;
}
else{
document.getElementById("span10").innerHTML="";
}



//to check max no is 4
{
if(x11.length<1){
document.getElementById("span11").innerHTML="Number of Persons cannot be Empty";
return false;
}
else{
document.getElementById("span11").innerHTML="";
}
}
if(x11.length>0){
if(x11=="0"){
document.getElementById("span11").innerHTML=" Number of Persons cannot be Zero";
return false;
}
else if(x11>"4"){
document.getElementById("span11").innerHTML="Max Number of Persons is 4";
return false;
}
}
if(x11.length>1){
document.getElementById("span11").innerHTML=" Max Number of Persons is 4";
return false;
}

//to check id type
if(x12==""){
document.getElementById("span12").innerHTML="ID CARD TYPE cannot be Empty";
return false;
}
else{
document.getElementById("span12").innerHTML="";
}

//to check IDCARD NO.
if(x13==""){
document.getElementById("span13").innerHTML="ID Number Cant be Empty";
return false;
}
else if(x13.length<7){
    document.getElementById("span13").innerHTML="Enter a valid ID Number";
    return false;
}
else if(x13.length>1){
for(i=0;i<x13.length;i++){
if(x13[0]==0){
document.getElementById("span13").innerHTML="Do not start with Zero";
return false;
}
else{
document.getElementById("span13").innerHTML="";
return true;
}
}
}


}

//to toggle date between urgent and normal

function changeDate() {
if(document.getElementById("urgent").checked==true){
        var d = new Date();
        var d1=  d.toDateString();
        var year=d.getFullYear();
        var mth=d.getMonth();
        var month=mth+1;
        var day=d.getDate();
        var date;
        if(month>=10){
            date=year+"-"+month+"-"+day;
        }else{
            date=year+"-0"+month+"-"+day;
        }
        document.getElementById("date").value = date;
        
    }
}


   

//dropdown combo
function mycity(){
    
	var selbox= document.login.pickup;
	var selbox1= document.login.drop;
        selbox.options.length=0;
        selbox1.options.length=0;
        
	if(document.login.city.options[document.login.city.selectedIndex].value == "delhi")
	{
		document.login.service[1].disabled=false;
		document.login.service[0].disabled=false;
		
		selbox.disabled=false;
                selbox1.disabled=false;
		selbox.options[selbox.options.length]=new Option('qutb minar','qutb minar');
		selbox.options[selbox.options.length]=new Option('red fort','red fort');
		selbox.options[selbox.options.length]=new Option('lotus temple','lotus temple');
               selbox.options[selbox.options.length]=new Option('dwarka','dwarka');
               selbox1.options[selbox1.options.length]=new Option('qutb minar','qutb minar');
		selbox1.options[selbox1.options.length]=new Option('red fort','red fort');
		selbox1.options[selbox1.options.length]=new Option('lotus temple','lotus temple');
                selbox1.options[selbox1.options.length]=new Option('dwarka','dwarka');
	}
	else if(document.login.city.options[document.login.city.selectedIndex].value == 'mumbai')
	{
		document.login.service[1].disabled=false;
		document.login.service[0].disabled=true;
                
                selbox.disabled=false;
                selbox1.disabled=false;
		selbox.options[selbox.options.length]=new Option('gateway of india','gateway of india');
		selbox.options[selbox.options.length]=new Option('high court','high court');
		selbox.options[selbox.options.length]=new Option('crawfort market','crawfort market');
                selbox.options[selbox.options.length]=new Option('bandra','bandra');
                selbox1.options[selbox1.options.length]=new Option('gateway of india','gateway of india');
		selbox1.options[selbox1.options.length]=new Option('high court','high court');
		selbox1.options[selbox1.options.length]=new Option('crawfort market','crawfort market');
                selbox1.options[selbox1.options.length]=new Option('bandra','bandra');
	}
	else if(document.login.city.options[document.login.city.selectedIndex].value == 'kolkata')
	{
		document.login.service[1].disabled=false;
		document.login.service[0].disabled=true;
                
                selbox.disabled=false;
                selbox1.disabled=false;
		selbox.options[selbox.options.length]=new Option('bidhan nagar','bidhan nagar');
		selbox.options[selbox.options.length]=new Option('howrah','howrah');
		selbox.options[selbox.options.length]=new Option('new town','new town');
                selbox.options[selbox.options.length]=new Option('barrackpore','barrackpore');
                selbox1.options[selbox1.options.length]=new Option('bidhan nagar','bidhan nagar');
		selbox1.options[selbox1.options.length]=new Option('howrah','howrah');
		selbox1.options[selbox1.options.length]=new Option('new town','new town');
                selbox1.options[selbox1.options.length]=new Option('barrackpore','barrackpore');
	}
        else if(document.login.city.options[document.login.city.selectedIndex].value == 'chennai')
        {
                document.login.service[1].disabled=false;
		document.login.service[0].disabled=true;
                
                selbox.disabled=false;
                selbox1.disabled=false;
		selbox.options[selbox.options.length]=new Option('t.nagar','t.nagar');
		selbox.options[selbox.options.length]=new Option('egmore','egmore');
		selbox.options[selbox.options.length]=new Option('thambaram','thambaram');
                selbox.options[selbox.options.length]=new Option('sholinganallur','sholinganallur');
                selbox1.options[selbox1.options.length]=new Option('t.nagar','t.nagar');
		selbox1.options[selbox1.options.length]=new Option('egmore','egmore');
		selbox1.options[selbox1.options.length]=new Option('thambaram','thambaram');
                selbox1.options[selbox1.options.length]=new Option('sholinganallur','sholinganallur');
        }
        else
        {
                document.login.service[1].disabled=true;
		document.login.service[0].disabled=true;
                
                selbox.disabled="disabled";
                selbox1.disabled="disabled";
         }
        
        
}
