<%-- 
    Document   : add_package
    Created on : 20 Sep, 2019, 1:23:20 PM
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        
    </head>
    <body>
        <style>
            label { display: inline-block; width: 210px; text-align: right; }   
        </style>
        <%@include  file="header.jsp" %>
        <form action="cities_added.jsp" method="post">
            <center>   
                <!--                <p>Package ID  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="text" name="p_id" class="form-control" /></label> </p> -->
                </br>    
                 <p>City Name  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="text" name="cityname" class="form-control" /></label> </p> 
                </br>
               <p>Itininery
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label> <textarea name="itininery" style="font-family:sans-serif; width:500px; height:100px " class="form-control"  ></textarea>
                </p>   
                </br>
                <br><br>
                <input type="submit" value="submit" class="btn btn-primary btn-lg" name="user">   
            </center>
        </form>

        <%@include  file="footer.html" %>
     </body>
</html>
