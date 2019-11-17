
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
        
        
        <script>
            
            
            function colour()
      	{
      		

      		var Fname = document.forms["add_hotels"]["hotel_name"];
      		var char = /^[a-zA-Z\s]+$/;
      		
      		if(!(Fname.value.match(char)))
      		{
      			
      			Fname.style.borderColor="red";
      			Fname.focus();
      		}
      		else
      		{
      			
      			Fname.style.borderColor="green";
      			Fname.focus();
      		
      		}
                
                
               
      	
      	}
        
        
             function colour1()
      	{
      		

      		var Fname1 = document.forms["add_hotels"]["stdprice"];
      		var char1 = /^[0-9]+$/;
      		
      		if(!(Fname1.value.match(char1)))
      		{
      			
      			Fname1.style.borderColor="red";
      			Fname1.focus();
      		}
      		else
      		{
      			
      			Fname1.style.borderColor="green";
      			Fname1.focus();
      		
      		}
                
                
               
      	
      	}
        
              function colour2()
      	{
      		

      		var Fname2 = document.forms["add_hotels"]["delprice"];
      		var char2 = /^[0-9]+$/;
      		
      		if(!(Fname2.value.match(char2)))
      		{
      			
      			Fname2.style.borderColor="red";
      			Fname2.focus();
      		}
      		else
      		{
      			
      			Fname2.style.borderColor="green";
      			Fname2.focus();
      		
      		}
                
                
               
      	
      	}
            
            
            
        </script>
        
        
        
        <style>
            label { display: inline-block; width: 210px; text-align: right; }   
        </style>
        
        
        <%@include  file="header.jsp" %>
        
        <form action="addhotel2.jsp" method="post" name="add_hotels">
            <center>   
                </br>    
                <p>Hotel Name  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="text" name="hotel_name" class="form-control" oninput="colour()" /></label> </p> 
                </br>    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </br>
                
                </br>
        <div class="form-group">
			<span class="form-label">City:</span>
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
<br>
                <p>Standard Price:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="text" name="stdprice" class="form-control" oninput="colour1()"/></label> </p> 
                </br> 
                <p>Deluxe Price:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="text" name="delprice" class="form-control" oninput="colour2()"/></label> </p> 
                </br> 

                <p>Image:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <label> <input type="file"  name="photo" size="50px" class="form-control" ></label></p>
                </br> 
                <input type="submit" value="submit" class="btn btn-primary btn-lg" name="user">   
            </center>
        </form>
        <%@include  file="footer.html" %>
    </body>
</html>
