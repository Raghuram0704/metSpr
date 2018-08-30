<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="bbb.jsp" %>
        <link rel="stylesheet" type="text/css" href="error.css">
        <title>Request Error Page</title>
    </head>
    <body>

    <h1>PLEASE NOTE YOUR BOOKING ID<BR><BR><BR>
     BOOKING ID:${cmdReq.bookingId}<br>    
     STATUS:${flag}
    <br></h1>
   
    <a href="reqcab.jsp"><input type="submit" value="Back"></a>
     <br><br><br><br><br>
     <%@include file="ccc.jsp" %>
    </body>
</html>
