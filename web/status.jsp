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
        
        <br><br><br>
        
    <center>
        <h2 style="color:whitesmoke">CHECK YOUR CAB STATUS</h2>
    </center>
    
    <br><br><br>
    
    <form action="./status.htm" method="post">
            
            <p>Booking ID:<input type="text" id="status" name="bookingId"/>
            <span style="color:yellow"  id=span1></span>
            </p>
            
            <br><br><br>
            
            <center><input type="submit" name="check" id="check" value="CHECK STATUS" onclick="return myfun()" /></center>
            
    </form>
    
    <br><br><br><br><br><br><br><br><br>
      
    
    <div class="zoom">
         <jsp:include page="footer.jsp"/> 
    </div>
    
    </body>
</html>
