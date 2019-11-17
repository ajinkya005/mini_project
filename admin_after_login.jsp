<%-- 
    Document   : admin_after_login
    Created on : 23 Sep, 2019, 12:35:25 PM
    Author     : ajinkya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
        <%@include  file="header.jsp" %>
        
        </br></br></br></br></br></br>
        
        <center>
        <div style="display:inline-block">
            <a href="admin_manipulation.jsp">  <img src="images/tour_packages.png">
            <h3 style="font:italic">Package Manipulation</h3> </a>          
        </div>
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <div style="display:inline-block">
            <img src="images/customer.png">
            <h3 style="font:italic">Customer Manipulation</h3>           
        </div>
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <div style="display:inline-block">
            <img src="images/history.png">
            <h3 style="font:italic">Log Manipulation</h3>           
        </div>
        
        </center>
            
        <%@include  file="footer.html" %>
        
    </body>
</html>
