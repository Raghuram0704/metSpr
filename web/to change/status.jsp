<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Status Check</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
         <link rel="stylesheet" type="text/css" href="status.css">
    
        
    <script src="status.js"></script>
    
    </head>
    <body>
        
        <jsp:include page="header.jsp"/> 
        
        
        <br>
        
        <form action="StatusCheckController" method="post">
        
             <h2 style="color:whitesmoke"> IF ALREADY BOOKED KNOW YOUR CAB DETAILS </h2>
             
             <p>Booking id:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" id="details" name="details"/>
             <span style="color:yellow"  id=span2></span>
             </p>
             <br>
             
             <input type="submit" id="getcar" name="getcar" value="GET CAR DETAILS" onclick="return myfun1()" />
             <br>
             <br>
        </form>
        
    <br>
    <br>
    
    
        <form action="StatusCheckController" method="post">
            
            <h2 style="color:whitesmoke">CHECK YOUR CAB STATUS</h2>
            
            <p>Booking id:&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" id="status" name="status"/>
            <span style="color:yellow"  id=span1></span>
            </p>
            <br>
            
            <input type="submit" name="check" id="check" value="CHECK STATUS" onclick="return myfun()" />
            
            <br>
            <br>
            <br>
                      
        </form>
    
   
        
    
    
         <ul>
              <a href="aboutus.jsp"><footer>About Us</footer></a>
              <a href="contactus.jsp"><footer>Contact Us</footer></a>                                  
              <b>Popular Cars :</b> Mercedes Benz Taxi Cab, Toyota Innova Taxi Cab , 
              Tata Indica Taxi Cab , Chevrolet Tavera 

              <div class="ft">Copyright © 2016 Metro Technologies Pvt. Ltd. All rights reserved.
              </div>
         </ul>
    
    </body>
</html>
