<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>slide try</title>
        
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        
        <style>
        .mySlides {display:none;}
        </style>
        
    </head>
    <body>
        <h2 class="w3-center">Automatic Slideshow</h2>

<div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="car3.png" style="width:100%">
  <img class="mySlides" src="car4.png" style="width:100%">
  <img class="mySlides" src="car7.png" style="width:100%">
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

        
    </body>
</html>

