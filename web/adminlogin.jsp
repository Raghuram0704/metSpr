<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
    <head>
        <title>ADMIN LOGIN</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <jsp:include page="header.jsp"/> 
        <link rel="stylesheet" type="text/css" href="adminlogin.css">
        <script src="adminlogin.js"></script>
       
    </head>
    <body>
        
        <br>
        
    <center>
        <h2 style="color:red">ADMIN LOGIN</h2>
    </center>
    
    <br><br><br><br><br>
    
    <form:form action="./admin.htm" method="post" commandName="cmdAdmin">
        
           <p> Username:
               <input type="text" name="username" id="username"/>
           <span style="color:yellow"  id=span1></span>
           </p>
           <br>
           <p> Password:
               <input type="password" name="password" id="password"/>
            <span style="color:yellow"  id=span2></span>
           </p>
           
           <br><br><br><br>
           
        <center>    
            <input type="submit" value="Login" style="color: red" onclick="return myfun()"/>
        </center>
           
        </form:form>
    
           <br>
           
           
    <div class="zoom">      
    <jsp:include page="footer.jsp"/> 
    </div>
    
    </body>
</html>