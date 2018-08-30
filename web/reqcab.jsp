<%@page import="java.util.Random"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

    <head>
                
        <title>Request A Cab</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="requestcab.css">
        <script src="requestcab.js"></script>

 </head>   
 <%! int cid,idx; %>
<%! public int count()
{
   Random randomGenerator = new Random();
        for (idx = 1; idx <= 10; ++idx){
        cid = randomGenerator.nextInt(99999);
}
        return cid;
}  %>


    <body background="mainBG.jpg">

     <header>
            <li> 
                
                <a href="HomePage.html">Home</a>
                                
             </li>
  
                          
            <li> 
                <a href="cabfeatures.html">Cab Features</a>
                
            </li>
  
            <li> 
                <a href="chargedetails.html" >Charge Details</a> 

            </li>
  

        </header>
    
        <br>
    <center><h3>FILL THIS FORM TO REQUEST A CAB</h3></center>
        <br>
        
        <form:form name="login" action="./insert.htm" method="post" commandName="cmdReq" >
           <table border='0'>
                               <tr>
                    
                    <td><input id="bookingId" type="hidden" name="bookingId" value="<%=count() %>" /></td>		   
                </tr>
                <tr>
                    <td>CITY</td>
                    <td>
                        <select id='city' name='city' onclick="mycity()"> 
                            <option></option>
                            <option value="delhi">DELHI</option>
                            <option value="mumbai">MUMBAI</option>
                            <option value="kolkata">KOLKATA</option>
                            <option value="chennai">CHENNAI</option> 
                        </select></td>
			<td><span   id=span1></span>
                    </td>
                </tr>
                <tr>
                    <td>TYPE OF VEHICLE</td>
                    <td>
                        <input id="service1" type="radio" name="service" value="NON A/C"  disabled="disabled"   />NON A/C  
                        <input id="service" type="radio" name="service" value="A/C" disabled="disabled" checked="checked" /> A/C </td>
                 <td><span   id=span2></span></td>
                </tr>
		<tr>
			<td>SERVICES</td>
			<td>
			<input id="urgent" type="radio" name="type" value="URGENT" onclick="changeDate()"  /> URGENT  
                        <input id="normal" type="radio" name="type" value="NORMAL" /> NORMAL	</td>	
			<td><span   id=span3></span>
			</td>
			
		</tr>

                <tr>
                    <td>DATE (Only for Normal Service)</td>
                    <td><input id="date" type="date" name="date" /></td>
		    <td> <span   id=span4></td>
                </tr>
                 <tr>
                    <td>TIME</td>
                    <td><input id="time" type="time" name="time" /></td>
		    <td> <span   id=span5>
		    </td>
                </tr>
                <tr>
                    <td>PICKUP LOCATION</td>
                    <td><select id="pickup" name="pickup" disabled="disabled" >
                           <option value=''>----</option>
                            </select></td>
                    <td> <span   id=span6 > </span>
		    </td>
                </tr>
                <tr>
                    <td>DROP LOCATION</td>
                    <td><select id="drop" name="drop" disabled="disabled">
                          <option value="">----</option>
                        </select></td>
                    <td> <span   id=span7> </span>
                    </td>
                    
                </tr>
                <tr>
                    <td>LANDMARK</td>
                    <td><input id="land" type="text" name="land" placeholder="Landmark (optional)"/></td>
                </tr> 
                <tr>
                    <td>NAME</td>
                    <td><input id="name" type="text" name="name" placeholder="Name"/></td>
 		<td> <span   id=span9></span></td>
                </tr>
                 <tr>
                    <td>CONTACT NUMBER</td>
                    <td><input id="number" type="text" name="number" placeholder="Number" />   </td>
                     <td>    <span   id=span10></span> </td>
                </tr>  
                  <tr>
                    <td>NUMBER OF PERSON</td>
                    <td><input id="person" type="text" name="person" placeholder="No of Persons"/> </td>
                      <td>  <span   id=span11></span></td>
                </tr> 
		<tr>
                    <td>ID CARD TYPE</td>
                    <td><select id="idcardtype" name="idcardtype"  >
                            <option></option>
                            <option value='delhi'>Driving Licence</option>
                            <option value="mumbai">Passport No.</option>
                            <option value="kolkata">Voter ID</option></select></td>
                     <td>  <span   id=span12></span></td>
                </tr> 
                <tr>
                    <td>ID CARD NO.</td>  
                    <td><input type="text" name="idcardno" id="idcardno" placeholder="ID Card No" /></td>
                    <td>  <span   id=span13></span></td>
                    
                </tr>
                 <tr>
                    
                    <td><input id="status" type="hidden" name="status" value="not paid" /></td>		   
                </tr>
               
            </table>
            <br>
            <br>
             <center><input type="reset" value="Reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <input type="submit" value="Submit" onclick="return myfun()" /></center>
             
        </form:form>
       

<ul>

        <a href="aboutus.html"><footer>About Us</footer></a>
        <a href="contactus.html"><footer>Contact Us</footer></a>                                  
        Popular Cars : Mercedes Benz Taxi Cab, Toyota Innova Taxi Cab , 
        Tata Indica Taxi Cab , Chevrolet Tavera 
        
        <div class="ft">Copyright © 2016 Merto Technologies Pvt. Ltd. All rights reserved.
        </div>
        

</ul>



     </body>
    </html>
