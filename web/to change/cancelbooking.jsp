<html>
    <head>
        <title>Cancel A Cab</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="cancelbooking.css">
        
        <script src="cancelbooking.js"></script>
        
</head>
    <body>
        
       <jsp:include page="header.jsp"/> 
        
       <br><br>
          
    <center>
        <h2 style="color:blue"> CANCEL YOUR BOOKING</h2>
    </center>
    
    
    
    
    <br><br><br><br><br>
    
       <form action="CancelCabController" method="post">
          <p style="color:red">   <b>Enter Your Booking ID To Cancel Your Request: </b> 
                      
                      <br><br><br>
                      
     <b> Booking ID: &nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="cancel" id="cancel" placeholder="Booking ID"/> </b>
            <span style="color:yellow"  id=span1></span></p>
        
            <br><br><br>  
            
            <center><input type="submit" value="Cancel Booking" onclick="return myfun()" /></center>
            
        </form>
    
    <br><br>
    
    
<jsp:include page="footer.jsp"/> 

    </body>
</html>
