<%-- 
    Document   : verification
    Created on : Jun 2, 2016, 12:10:42 PM
    Author     : techm
--%>

<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="org.springframework.orm.hibernate3.HibernateTemplate"%>
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
        <title>JSP Page</title>
        <jsp:include page="header.jsp"/>
        <link rel="stylesheet" type="text/css" href="admin.css">
        <script src="admin.js"></script>
        <SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
    </head>
    
    <body onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
        
        
        <br><br>
        
        <a href="logout.jsp">
                <button class="button" >  Logout
                </button></a>
        
        <br><br><br><br>
        <h1>welcome ${userName}</h1>
    <sql:setDataSource
            var="myDS"
            driver="org.apache.derby.jdbc.ClientDriver"
            url="jdbc:derby://localhost:1527/sample"
            user="app" password="app"

    />
        <sql:query var="listUsers"   dataSource="${myDS}">
            SELECT * FROM metrocab 
        </sql:query>   
        <table border="1">
            <tr>
                <th>Booking Id</th>
                <th>City</th>
                <th>Service</th>
                <th>Service type</th>
                <th>Book date</th>
                <th>Book time</th>
                <th>Pickup place</th>
                <th>Destination</th>
                <th>Landmark</th>
                <th>Customer Name</th>
                <th>Customer Contact</th>
                <th>Person Travel</th>
                <th>Id Card type</th>
                <th>Id Card Number</th>
                <th>Status</th>
                
            </tr>

            <c:forEach items="${listUsers.rows}" var="listUsers">
                <tr>
                <td>${listUsers.booking_id}</td>
                <td>${listUsers.city}</td>
                <td>${listUsers.service}</td>
                <td>${listUsers.type}</td>
                <td>${listUsers.BOOK_DATE}</td>
                <td>${listUsers.BOOK_TIME}</td>
                <td>${listUsers.PICKUP_LOCATION}</td>
                <td>${listUsers.DROP_LOCATION}</td>
                <td>${listUsers.LANDMARK}</td>
                <td>${listUsers.CUSTOMER_NAME}</td>
                <td>${listUsers.CUSTOMER_NUMBER}</td>
                <td>${listUsers.PERSON_TRAVEL}</td>
                <td>${listUsers.ID_CARD_TYPE}</td>
                <td>${listUsers.ID_CARD_NO}</td>
                <td>${listUsers.status}</td>
                </tr>
               
            </c:forEach>
                   
        </table>
               
               <br><br><br>
               
        <form:form action="./adminUpdate.htm" method="post" commandName="cmdAdu">
                Booking Id:&nbsp;&nbsp;&nbsp;<input type="text" name="bookingId" id="delete"/>
                 <span style="color:yellow"  id=span1></span>
                <br>
                <br>
                <center><input type="submit" value="Delete" id="delete"  onclick="return myfun()"/> </center>   
                
            </form:form>
        
        <br><br><br>
        
        <form:form action="./adminUpdate.htm" method="post" commandName="cmdAdu">
                Booking Id:&nbsp;&nbsp;&nbsp;<input type="text" name="bookingId" id="update"/>
                <span style="color:yellow"  id=span2></span>
                <br>
                <br>
                Status  :
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="status" id="accept" value="approved"/>Accept
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="status" id="decline" value="declined"/>Decline &nbsp;&nbsp;&nbsp;&nbsp; <span style="color:yellow" id="span3" ></span>

                <br>
                <br>
                <center><input type="submit" value="Update" id="update" onclick="return myfun1()" /></center>
             </form:form>
           
                <br><br><br>
                
        <form:form action="./adminFeed.htm" method="post" commandName="cmdFeed">

            City:&nbsp;<select  name="city" id="city"  >
                            <option></option>
                            <option value='mumbai'>Mumbai</option>
                            <option value="delhi">Delhi</option>
                            <option value="kolkata">Kolkata</option>
                             <option value="chennai">Chennai</option>
                      </select> <span  style="color:yellow"  id=span8></span>
    <br>
    <br>
    Date:<input type="date" name="date" id="date" /> <span  style="color:yellow" id=span9></span>
    
    <br><br>

    <center><input type="submit" value="View Feedback" onclick="return myfun2()"/></center>
    </form:form>

      
        <br><br><br>

        <div class="zoom">
<jsp:include page="footer.jsp"/> 
        </div>

    </body>
</html>
