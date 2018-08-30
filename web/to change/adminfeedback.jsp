<%-- 
    Document   : adminfeedback
    Created on : Jun 5, 2016, 8:06:13 AM
    Author     : Raghuram
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.tm.metrocab.util.JDBCUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>adminfeedback</title>
         <jsp:include page="header.jsp"/>
         <link rel="stylesheet" type="text/css" href="adminfeedback.css">
        
        
    </head>
    <body>
         
        
        
                <%
        
        System.out.println("Enter....");
        session=request.getSession(false);
        System.out.println(request.getSession().getId());
      String id1=request.getSession().getId();
        System.out.println(session.isNew());
String id=(String)request.getAttribute("id");
if(id1.equals(id)){ %>
    <center><h2><a style="color: aliceblue"> LOGIN NEEDED</a></h2>
        <a href="adminlogin.jsp" style="text-decoration: none;color: aliceblue"><input type="button" value="LOGIN"/></a>
        </center><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
        <%
        }
        else{
           System.out.println("Enter....");
           if(session.getAttribute("username")!=null && session.getAttribute("password")!=null){
            String user=(String)session.getAttribute("username");
            String pass=(String)session.getAttribute("password");
            System.out.println("Enter....");
            if(user.equalsIgnoreCase("admin") && pass.equals("admin123")){
                
        %>
        <br>
        
        <a href="logout.jsp">
                <button class="button" >  Logout
                </button>
        </a>
        <br><br>
       <center>  <h1><% out.println(request.getParameter("city")); %> feedback details</h1></center>
       <%
Connection connection=JDBCUtil.getConnection();
 PreparedStatement ps=null;
  ps=connection.prepareStatement("select * from feedback where city=? and date=?");
  ps.setString(1, request.getParameter("city"));
  ps.setString(2, request.getParameter("date"));
    ResultSet rs=ps.executeQuery();
   %>
   <br>
        
        
        
        <table border="1">
            <tr>
                <th>Booking Id</th>
                <th>Date</th>
                <th>Feedback</th>
                <th>City</th>
                <th>Car Id</th>
                          </tr>
           
               <%  while(rs.next())
               { %>
                <tr>
                <td> <% out.println(rs.getString(1)); %> </td>
                <td> <% out.println(rs.getString(2)); %> </td>
                <td> <% out.println(rs.getString(3)); %> </td>
                <td> <% out.println(rs.getString(4)); %> </td>
                <td> <% out.println(rs.getString(5)); %> </td>
                
               </tr>
               <% }
     
                  %>
        </table>         
                  
                  <br><br><br>
                  
            <center><h1><% out.println("cab details");%></h1></center>
                     
          
                 <h1><% String abc=(String)request.getParameter("city"); %></h1>
                <br>
                 <%
String qq="select * from metro_"+abc+"_cardetails";
  PreparedStatement ps1=connection.prepareStatement(qq);  
    ResultSet rs2=ps1.executeQuery();
   %>
   
                <table border="1">
            <tr>
                <th>Car Id</th>
                <th>Cab Number</th>
                <th>Driver Name</th>
                <th>Employee Number</th>
                <th>Cab Color</th>
                <th>Driver Mobile Number</th>
                          </tr>
           
               <%  while(rs2.next())
               { %>
                <tr>
                <td> <% out.println(rs2.getString(1)); %> </td>
                <td> <% out.println(rs2.getString(2)); %> </td>
                <td> <% out.println(rs2.getString(3)); %> </td>
                <td> <% out.println(rs2.getString(4)); %> </td>
                <td> <% out.println(rs2.getString(5)); %> </td>
                 <td> <% out.println(rs2.getString(6)); %> </td>
               </tr>
               <% } %>
                
                      
                   
        </table>
               <br>
               
               <a href="admin.jsp"/><div class="button1">Back</div></a>

                <br>
                <%            
            }
            else{%>
        <center><h2>INVALID USER..CANNOT ACCESS</h2>
        <a href="adminlogin.jsp" style="text-decoration: none;color: aliceblue"><input type="button" value="LOGIN"/></a>
        </center><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <% 
                
            } 
            
        }
        else{  %>
        <center><h2><a style="color: aliceblue">LOGIN REQUIRED</a></h2>
        <a href="adminlogin.jsp" style="text-decoration: none;color: aliceblue"><input type="button" value="LOGIN"/></a>
        </center><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <%  }
      }
    %>
                <br><br>
                <br>
                
 <jsp:include page="footer.jsp"/>
                
    </body>
</html>
