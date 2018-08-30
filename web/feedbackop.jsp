<%-- 
    Document   : verification
    Created on : Jun 2, 2016, 12:10:42 PM
    Author     : techm
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/sql" prefix="query" %>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>



<html>
    <head> 
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FeedBack</title>
        <jsp:include page="header.jsp"/> 
        <link rel="stylesheet" type="text/css" href="feedbacklist.css">
        <script src="feedbacklist.js"></script>
        
        
    </head>
    <body>
        
        
 <br><br>
 
   <a href="logout.jsp">
                <button class="button" >  Logout
                </button><br>
        </a>
 
        <br><br><br><br>
        
        <form:form commandName="cmdFeed">
         <sql:setDataSource
            var="myDS"
            driver="org.apache.derby.jdbc.ClientDriver"
            url="jdbc:derby://localhost:1527/sample"
            user="app" password="app"

          />
         
        <sql:query var="listUsers"   dataSource="${myDS}">
select f.booking_id,f.feedback,f.car_id,m.driver_name,m.employee_number,m.driver_mobile_number from feedback f,metro_${cmdFeed.city}_cardetails m where f.CAR_ID=m.CAR_ID and f.city='${cmdFeed.city}' and f.date='${cmdFeed.date}'

        </sql:query>   
        <table border="1">
            <tr>
                <th>Booking Id</th>
                <th>Feedback</th>
                <th>Car Id</th>
                <th>Driver Name</th>
                <th>Employee Number</th>
                 <th>Driver Mobile Number</th>
                               
            </tr>

            <c:forEach items="${listUsers.rows}" var="listUsers">
                <tr>
                <td>${listUsers.booking_id}</td>
                <td>${listUsers.feedback}</td>
                <td>${listUsers.car_id}</td>
                <td>${listUsers.driver_name}</td>
                <td>${listUsers.employee_number}</td>
                <td>${listUsers.driver_mobile_number}</td>
                </tr>
               
            </c:forEach>
        </table>
                </form:form>
               
<br><br><br><br><br>
            <a href="admin.jsp"><input type="submit" value="Back"></a>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<div class="zoom">      
    <jsp:include page="footer.jsp"/> 
    </div>
            
    </body>
</html>
