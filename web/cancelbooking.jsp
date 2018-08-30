<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
    <head>
        <title>Cancel A Cab</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <jsp:include page="header.jsp"/> 
        <link rel="stylesheet" type="text/css" href="cancelbooking.css">
        <script src="cancelbooking.js"></script>
        
</head>
<body>
        
     
        
     <br><br>
          
    <center>
        <h2 style="color:blue"> CANCEL YOUR BOOKING</h2>
    </center>
    
    
    
    
    <br>
    <br><br><br>  
    <br>
    <br>
    <form:form action="./cancel.htm" method="post" commandName="cmdCancel">
          <p style="color:red">   <b>Enter Your Booking ID To Cancel Your Request: </b><br><br>
        <br>
     <b> Booking ID: <input type="text" name="bookingId" id="cancel" placeholder="Booking ID"/> </b>
           <span style="color:yellow"  id=span1></span>
            </p>
        
            <br><br><br>   
            
            <center> <input type="submit" value="Cancel Booking" onclick="return myfun()" /> </center>
            
        </form:form>
            
    <br><br><br><br><br><br><br><br>
    
    
<jsp:include page="footer.jsp"/> 
    
    </body>
</html>
