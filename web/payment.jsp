
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="payment.css">
        <script src="payment.js"></script>
        
    </head>
    <body>
        
        
    <center>
            <h1>WELCOME TO ${bank} ONLINE PORTAL</h1>
    </center>
    
        <BR>
        <BR>
        
        <form:form action="./payment.htm" method="post" commandName="cmdPayment">  
            
            <table>
            
            <tr>
            <td>BANK NAME</td>
            <td><input type="text" name="bankName" id="bankname" value="${cmdBook.bankName}" readonly=""/></td>
            <td><span style="color:blue"  id=span5></span></td>
            </tr> 
            
            <tr>
            <td>YOUR BOOKING ID</td>
            <td><input type="text" name="bookingId" id="bookid" value="${cmdBook.bookingId}" readonly=""/><br></td>
            <td><span style="color:blue"  id=span6></span></td>
            </tr>
                
            <tr>
            <td>CARD NUMBER</td>
            <td><input type="text" name="cardNo" id="cardno"  placeholder="Card Number " /></td>
            <td><span style="color:blue"  id=span1></span></td>
            </tr>
                
            <tr>
            <td>CARD HOLDER NAME</td>
            <td><input type="text" name="cardName" id="cardname" placeholder="Your name"/></td>
            <td><span style="color:blue"  id=span2></span></td>
            </tr>
                
            <tr>
            <td>VALIDITY</td>
            <td><INPUT type="month" name="validity" id="validity"  /></td>
            <td><span style="color:blue"  id=span3></span></td>
            </tr>
                
            <tr>
            <td>CVV</td>
            <td><input type="text" name="cvv"  id="cvv" placeholder="CVV"/><br></td>
            <td><span style="color:blue"  id=span4></span></td>
            </tr>
            <tr>
          
            <td><INPUT type="hidden" name="status" value="paid"/></td>
           
            </tr>
            
            </table>
            
            <center><input type="submit" value="Submit" onclick="return myfun()"/></center>
            
       </form:form>
    </body>
</html>
