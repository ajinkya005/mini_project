<%-- 
    Document   : registration
    Created on : 20 Sep, 2019, 5:17:03 PM
    Author     : ajinkya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    
        <%@include file="css/registration_form.css"%>
        <%@include file="css/home.css"%>
    
    </head>
    <body>
        
         <%@include  file="header.jsp" %>
        
        <style>
label { display: inline-block; width: 210px; text-align: right; }
</style>
      <div class="bg-reg">  
    <center>
        <h1 style="background-color:skyblue">  Registration Form </h1>    
    </center>

        <form action="successful_reg.jsp" method="post">
            
            </br></br></br></br></br>
            
            <center>
                <p>Name  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="text" name="name" class="form-control" /></label> </p> 
                </br>
               
                <p>Address.  &nbsp;&nbsp;<label><input type="text" name="address" class="form-control" /></label>  </p> 
                </br>
                
                <p>Contact No.  &nbsp;&nbsp;<label><input type="text" name="contact" class="form-control" /></label>  </p> 
                </br>
               
                <p>Email  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="text" name="email" class="form-control" /></label> </p> 
                </br>
                
                <p>Password  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<label><input type="password" name="password" class="form-control" /></label></p>           
                </br>
                
                <input type="submit" value="Submit" class="btn btn-primary btn-lg">
            
            </center>
            
            
            
        </form>
        
        
      </div>
        
       <%@include  file="footer.html" %> 
        
    </body>
</html>
