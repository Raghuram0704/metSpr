<%-- 
    Document   : bbb
    Created on : Jun 16, 2016, 8:34:32 AM
    Author     : techm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
    </head>
            <link rel="stylesheet" type="text/css" href="homecss.css">
            <%--comment --%>
        <style>
        
            input[type=text],[type=date],select {
                
                width: 30%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                color: aliceblue;
            }
            
            input[type=submit] {
                
                width: 25%;
                padding: 12px 20px;
                border: 1px solid #ccc;
                background-color: #99ff99;
            }
            
            body {
                
                background-image: url(ab4.jpg);
                -moz-background-size: cover;
                -webkit-background-size: cover;
                background-size: cover;
                background-position: top center !important;
                background-repeat: no-repeat !important;
                background-attachment: fixed;
                
            }
            
            table {
                            border-collapse: collapse;
                            width: 100%;
                        }

                        th{
                            padding: 8px;
                            text-align: left;
                            border-bottom: 1px solid #ddd;
                            background-color: greenyellow;
                            color:white ;
                            
                        }
                        tr{
                            color:whitesmoke;
                        }
                        td {
                            padding: 8px;
                            text-align: left;
                            border-bottom: 1px solid #ddd;
                        }

                        tr:hover{
                            background-color:whitesmoke;
                            color:black;
                        } 
                        
                        form{
                            color:whitesmoke;
                            font-size: 18px;
                        }
                        
                        .button {
                            background-color: green;
                            border: none;
                            color: white;
                            padding: 10px 10px;
                            text-align: center;
                            text-decoration: none;
                            display: inline-block;
                            font-size: 16px;
                            cursor: pointer;
                            width: 150px;
                            float: right;
                            border-radius: 0%;
                        }

                        .button:hover {
                            background-color: red;
                            color: whitesmoke;
                        }
                        p{
    font-size: 20px;color:aliceblue;
}
h1{
     color:aliceblue;
}
        </style>
    <body>
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
    </body>
</html>
