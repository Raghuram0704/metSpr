<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Book A Cab</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"/> 
        <link rel="stylesheet" type="text/css" href="bookcab.css">
        <script src="bookcab.js"></script>
   </head>
    
   <body style="color:brown">
    
         
        
        <br>
        
        
        
        
    <center>  <h1 style="color:greenyellow"> PAYMENT PORTAL </h1> </center><br>
    <br>
        <br>
        <br>
        
    
        <form:form action="./bookcab.htm" method="post" commandName="cmdBook">
        YOUR BOOKING ID: &nbsp;&nbsp;&nbsp;<input type="text" name="bookingId" id="bookid"/>
        &nbsp;&nbsp;<span style="color:yellow"  id=span1></span>
        
    <br>
            
        <br>
        <br>
        BANK NAME: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <select name="bankName" id="bankname" >
                        <option></option>
                        <option value="HDFC BANK">HDFC BANK</option>
                        <option value="AXIS BANK">AXIS BANK</option>
                        <option value="ICICI BANK">ICICI BANK</option>                         
                        </select>&nbsp;&nbsp;<span style="color:yellow"  id=span2></span>
    <br>
            <br><br>
        MODE OF PAYMENT:&nbsp;&nbsp;<input id="cc" type="radio" name="card" value="CREDIT CARD"/>CREDIT CARD <br><br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input id="dc" type="radio" name="card"  value="DEBIT CARD" /> DEBIT CARD 
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:yellow"  id=span3></span>                         
   
   <br>
        
        
   <BR>
   <BR>
   <center><input type="reset" value="Reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="submit" value="Submit" onclick="return myfun()" /></center><br>
    </form:form>
    
   <br>
   
   <div class="zoom">
  <jsp:include page="footer.jsp"/> 
   </div>
    
    
    </body>
</html>
