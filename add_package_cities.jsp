<%-- 
    Document   : add_package_cities
    Created on : 6 Oct, 2019, 5:02:55 AM
    Author     : ajinkya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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

    <center>    
        <form action="add_package_cities2.jsp" method="post">   
        
        <div class="form-group">
			<span class="form-label">Day Number:</span>
			<label><select class="form-control" name="dayno">
	
        <option>1</option>
         <option>2</option>
         <option>3</option>
         <option>4</option>
         <option>5</option>
         <option>6</option>
         <option>7</option>
         <option>8</option>
         
                        </select>
	
        </div>            
     
         <div class="form-group">
			<span class="form-label"></span>
			<label><select class="form-control" name="cityname">
		<%
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
                
                Statement stmt=con.createStatement();
    String strQuery = "select city_name from cities";
    
    ResultSet rs1 = stmt.executeQuery(strQuery);
    while(rs1.next()){
%>
         <option><%=rs1.getString("city_name")%></option>
<%
    }
%>   
 		</select>
		</div>
      
           </br>
          
           Package ID:
           <label><input type="number" name="pid" class="form-control"></label>
                
           </br>
           
           <input type="submit" value="save" class="btn btn-primary btn-lg">
           
                
     </form>
       
    </center> 
        <br><br><br><br><br><br><br><br><br>
        <%@include  file="footer.html" %> 
    
    </body>
</html>
