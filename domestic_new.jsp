<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<title>Domestic</title>
<head>
	<style>
		h1 {
			text-shadow: 2px 2px black;
			font-size:60px;
			color:#ecf542;
			
       }
	   
	   h2{
	   text-shadow: 2px 2px black;
			font-size:30px;
			color:#ecf542;
	   }
	   
	   ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
			background-color:#ecf542;
			text-shadow: 2px 2px white;
			display:flex;
			font-size:20px;
			
			
		}

	

	li:last-child {
			border-right: none;
		}

	li a {
	
		display: block;
		color: black;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none;
		border: dashed white;
		
		
		}

	li a:hover:not(.active) {
		background-color: white;
		}

	.active {
		background-color:#ecf542;
			}
			
	fieldset{
		float:left;
		width:50%;
		margin:100;
		padding:30;
		box-sizing:border-box;
		}
	
	
	.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.desc {
  padding: 15px;
  text-align: center;
}
	
			
	.button1 {font-size: 10px;}

		.button {
  background-color: #ecf542;
  border: none;
  color: black;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
}

p{
 font:bold;
 font-family:Comic Sans MS;
}

img{
border-radius:25px;
}
</head>
	</style>



</head>


<body>
    		<center><h1>Domestic Packages</h1> </center>
		<br>
		<br>
		<br>
		<ul>
			<li style="float:right"><a  href="#home"><b>Domestic Tours</b></a></li>
			<li style="float:right"><a href="international.html"><b>International Tours</b></a></li>
			<li style="float:right"><a href="home.jsp"><b>Home</b></a></li>
		</ul>	
		<br>
		<hr>
<h1>Click On Image to get details</h1>
                <%
  try{      
      
      
       System.out.println("_____________________--------------");

      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
    Statement stmt=con.createStatement();
    String dom= "'domestic'";
    String strQuery = "select * from package where p_type="+dom;
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
       %>
		<fieldset style="border:dashed; border-color:#ecf542;width:450px;height:550px;">
		<legend><h2><%=rs.getString("p_name")%></h2></legend>
                <a href="itinerary.jsp?imgid=<%=rs.getInt("p_id")%>"><img src="image.jsp?imgid=<%=rs.getInt("p_id")%>" width="400" height="400" align="left"></a>
                </fieldset>
      <%
    }
    
    rs.close();
    con.close();
    stmt.close();
  }
  catch(Exception e)
  {
    e.getMessage();
  }
  %>          
    		<link href="footer.html">
    </body>
</html>