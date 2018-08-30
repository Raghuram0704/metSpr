<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
        <jsp:include page="header.jsp"/> 
        <link rel="stylesheet" type="text/css" href="feedback.css">
        <script src="feedback.js"></script>
        
        <br>
        
    <center>
        <h1 style="color:whitesmoke">Feedback</h1>
    </center>
        
    <br>
    
    
    <form:form action="./feedback.htm" method="post" commandName="">
            
            <p>Booking id:
                <input type="text" id="bookid" name="bookingId" placeholder="Booking ID"/>
            <span style="color:yellow"  id=span1></span><br>
            </p>
            <p>Date:
                <input type="date" id="date" name="date" />
            <span style="color:yellow"  id=span2></span><br>
            </p>
            <br>
            
            <p >FeedBack:</p> 
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            &nbsp&nbsp&nbsp&nbsp
            <textarea rows="8" cols="60" name="feedback" id="feedback" autofocus ></textarea> <span style="color:yellow"  id=span3></span>

            <br>
            <br>
            <br>
            <br>
            <center><input type="submit" name="submit" id="submit" value="Submit" onclick="return myfun()" /></center><br><br><br>
                      
        </form:form>
    
            <jsp:include page="footer.jsp"/> 
    
    </body>
</html>
