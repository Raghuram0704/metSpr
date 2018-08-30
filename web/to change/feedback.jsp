<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Feedback</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <jsp:include page="header.jsp"/> 
        
        <link rel="stylesheet" type="text/css" href="feedback.css">
        
        <script src="feedback.js"></script>
        
    </head>
    <body>
        
        <br>
        
    <center>
        <h1 style="color:whitesmoke">Feedback</h1>
    </center>
        
    <br>
    
    <form action="FeedbackController" method="post">
            
            <p>Booking id:&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" id="bookid" name="bookid" placeholder="Booking ID"/>
            <span style="color:yellow"  id=span1></span><br>
            </p>
            <p>Date:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="date" id="date" name="date" />
            <span style="color:yellow"  id=span2></span><br>
            </p>
            <br>
            <br>
            <p >FeedBack:</p> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <textarea rows="8" cols="60" name="feedback" id="feedback" autofocus ></textarea> <span style="color:yellow"  id=span3></span>

            <br>
            <br>
            <br>
            <br>
            <center><input type="submit" name="submit" id="submit" value="Submit" onclick="return myfun()" /></center><br><br><br>
                      
        </form>
    
        <ul>
            <a href="aboutus.jsp"><footer>About Us</footer></a>
            <a href="contactus.jsp"><footer>Contact Us</footer></a>                               
            <b style="color:goldenrod">Popular Cars :</b> Mercedes Benz Taxi Cab, Toyota Innova Taxi Cab , 
            Tata Indica Taxi Cab , Chevrolet Tavera 

            <div class="ft">Copyright © 2016 Metro Technologies Pvt. Ltd. All rights reserved.
            </div>
         </ul>
    
    </body>
</html>
