<%-- 
    Document   : admin_manipulation
    Created on : 20 Sep, 2019, 12:03:59 PM
    Author     : ajinkya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="css/admin_manipulation.css"%>
        <%@include file="css/home.css"%>
    </head>
    
        <%@include  file="header.jsp" %>
        
        </br></br>
        
      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        
        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
            <div class="hovereffect">
                <img class="img-responsive" src="images/add_package.png" alt="" width="300" height="300">
                <div class="overlay">
                    <!--           <h2>Hover effect 1</h2>-->
                    <a class="info" href="retrieve_package.jsp">view Package</a>
                </div>
            </div>
        </div>
       
       
       
        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
            <div class="hovereffect">
                <img class="img-responsive" src="images/update_package.jpg" alt="" width="300" height="300">
                <div class="overlay">
                    <!--           <h2>Hover effect 1</h2>-->
                    <a class="info" href="view_hotels.jsp">View Hotels</a>
                </div>
            </div>
        </div>
        
       
        
        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
            <div class="hovereffect">
                <img class="img-responsive" src="images/delete_package.png" alt="" width="300" height="300">
                <div class="overlay">
                    <!--           <h2>Hover effect 1</h2>-->
                    <a class="info" href="view_cities.jsp">View Cities</a>
                </div>
            </div>
        </div>
        
        
         
        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
            <div class="hovereffect">
                <img class="img-responsive" src="images/delete_package.png" alt="" width="300" height="300">
                <div class="overlay">
                    <!--           <h2>Hover effect 1</h2>-->
                    <a class="info" href="view_package_cities.jsp">View Package Cities</a>
                </div>
            </div>
        </div>
        
       
         <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
            <div class="hovereffect">
                <img class="img-responsive" src="images/delete_package.png" alt="" width="300" height="300">
                <div class="overlay">
                    <!--           <h2>Hover effect 1</h2>-->
                    <a class="info" href="view_date_availability.jsp">View Date Availability</a>
                </div>
            </div>
        </div>
       
        
       
        </br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
        </br></br></br></br></br></br></br></br></br></br></br></br>
        <%@include  file="footer.html" %> 
    
</html>
