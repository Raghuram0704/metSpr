<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>About Us</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="aboutus.css">
   </head>
   
   <body>
       <%@include file="header.jsp" %>
       
        <br>
        <br>
        <div class="box2">
                    <h1>About Us</h1>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="box1">
            <div class="w3-content w3-section" >
                   
                    <img class="mySlides" src="car4.png" alt="car" style="width:100%">
                    <img class="mySlides" src="car3.png" style="width:100%">
                    <img class="mySlides" src="car7.png" style="width:100%">
                    
            </div>
        </div>
        <script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <p style="font-size:150%">MetroCab is a taxi service providers in Metro cities Delhi , Mumbai , Kolkata and Chennai. 
        We Operate 24X7 with 10 AC cabs in each city except Delhi.Number of cabs in Delhi is 20 out of 10 is non AC.<br> 
        May be in future they may increase number of cab in each city and non ac cab available in all cities.
        We provide prepaid Cab Travelling service within city.<br>
        <br>
        No Need of registration to book a Cab. You can directly search for a cab by mentioning date, time, pickup place etc. Then you can proceed to Book through online payment and
        you can cancel the Cab before one hour of start time of journey, normal request from requested start time Otherwise you can’t. We are trying to give 100% safe journey and punctuality in pickup and drop. 
        But we cannot give guarantee for pickup and drop time due to traffic in metro cities.</p>
        
        
        
        
        
        
     
       
       <%@include file="footer.jsp" %>
    </body>
</html>
