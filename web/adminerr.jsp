<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="bbb.jsp" %>
        <link rel="stylesheet" type="text/css" href="error.css">
        <title>Admin Error Page</title>
    </head>
    <body>

<br><br>
    <h1>
     ${flag}
     <br></h1>
    <br>
   
    <a href="adminlogin.jsp"><input type="submit" value="Back"></a>
     <br><br><br><br><br>
    <%@include file="ccc.jsp" %>
    </body>
</html>