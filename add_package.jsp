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
      		

      		var Fname = document.forms["add_package"]["p_name"];
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
      		

      		var Fname1 = document.forms["add_package"]["cost"];
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
        </script>
        
        
        
        
        <style>
            label { display: inline-block; width: 210px; text-align: right; }   
        </style>
        <%@include  file="header.jsp" %>
        <form action="add_package2.jsp" method="post" name="add_package">
            <center>   
                <!--                <p>Package ID  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="text" name="p_id" class="form-control" /></label> </p> -->
                </br>    
                <p style="display:inline-block" >Package Type  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label> <select name="type" class="form-control">
                            <option value="domestic">Domestic</option>
                            <option value="international">International</option>
                           
                        </select>
                    </label>
                </p>
                <p>Package Name  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="text" name="p_name" class="form-control" oninput="colour()" ></label> </p> 
                </br>    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <p style="display:inline-block" >No. of Days  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label> <select name="days" class="form-control">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                        </select>
                    </label>
                </p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </br>
                <p style="display:inline-block">No. of Cities : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label><input type="text" name="cityno" class="form-control" /></label>
                </p>   
                </br>
                <p>Cost(per individual)  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="text" name="cost" class="form-control" oninput="colour1()"/></label> </p> 
                </br>    
                <p style="display:inline-block"> Insert Image: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label> <input type="file"  name="photo" size="50px" class="form-control" ></label></p>
                <br><br>
                
                <p>Add Dates:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="text" name="dat" class="form-control"></label> </p> 
                </br>
                  <p>Maximum Seats &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="number" name="seats" class="form-control" /></label> </p> 
                </br>
                <input type="submit" value="Submit" class="btn btn-primary btn-lg" name="user"> 
            </center>
        </form>
              <a href="admin_manipulation.jsp"><button  class="btn btn-primary btn-lg"> Back</button></a>
          <%@include  file="footer.html" %>
    </body>
</html>