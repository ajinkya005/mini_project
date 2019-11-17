<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
	<title>Kashmir</title>
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
	   	.container {
  position: relative;
  text-align: center;
  color: black;
  
  font-family:Comic Sans MS
}


.bottom-left {
  position: absolute;
  bottom: 8px;
  left: 16px;
}
.top-left {
  position: absolute;
  top: 8px;
  left: 16px;
}
.bottom-right {
  position: absolute;
  bottom: 8px;
  right: 16px;
}

		

/* The navbar */
.topnav {
  overflow: hidden;
  background-color:#ecf542;
}

/* Navbar links */
.topnav a {
  float: left;
  color:black ;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 20px;
}

.topnav a:hover {
  background-color:;
  color: white;
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
</

		</style>
		
	</head>
     <body>
     <%
  try{      
    int id =  Integer.parseInt(request.getParameter("imgid"));
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
    Statement stmt=con.createStatement();
    String strQuery = "select * from package where p_id="+id;
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
       %>
     <center><h1></h1> </center>
		<hr>
		
		<div class="container">
                    <img src="image.jsp?imgid=<%=rs.getInt("p_id")%>" width="1320" height="500" style="border:#ecf542 dashed;Opacity:0.75;"  >
		 
		 
		 <div class="bottom-left"><p style="font-size:50px; font-family:Comic Sans MS;">Group Tour::<%=rs.getString("p_name")%></p></div>
		 <div class="bottom-right"><p style="font-size:50px; font-family:Comic Sans MS;"> Days:<%=rs.getString("days")%></p></div>
		
		 </div>
		 
		 <div class="topnav">
      <a href="#tour">Tour Details</a>
      <a href="#iternary">Iternary </a>
	  <a href="#h">Hotels</a>
      <a href="#in">Inclusions</a>
      <a href="#ex">Exclusions</a>
    </div>
		 <hr>
<%
Statement stmt2=con.createStatement();   
String strQuery2 = "select * from package_cities where p_id="+id+" order by dayNo";
ResultSet rs2 = stmt2.executeQuery(strQuery2);
%>	

		<a name="tour"><div id="tour"> <h2>Tour Details</2></div></a>
		<hr>
		<p style="font-size:20px; font-family:Comic Sans MS;"></p>
		<hr>
                <a name="iternary"><div id="iternary"> <h2>Iternary</2></div></a>
		 <p style="font-size:20px; font-family:Comic Sans MS;"><br>
                 <%
                    while(rs2.next()){
                 %>
                  <br>  Day <%=rs2.getInt("dayNo")%>:
                  <br> City: <%=rs2.getString("cityName")%>

                 <%
                 int cid=0;
                 out.println(cid);
                 cid=rs2.getInt("city_id");
                 Statement stmt3=con.createStatement();
                 String strQuery3 = "select * from cities where city_id="+cid;
                 ResultSet rs3 = stmt3.executeQuery(strQuery3);
                 rs3.next();
                  %>	
                  <br> Day outings: <%=rs3.getString("city_iti")%>
                 <%
                    }
                 %>
                 <a name="cost"><div id="cost"> <h2>Cost</2></div></a>
		 <p style="font-size:20px; font-family:Comic Sans MS;">
                 <%=rs.getInt("cost")%>
                 rupees
                 
                 <a name="h"><div id="h"> <h2>Hotels</2></div></a>
<%
                rs2 = stmt2.executeQuery(strQuery2);
                  while(rs2.next()){
                int cid1=0;
                 cid1=rs2.getInt("city_id");
                 
           System.out.println(cid1);
                 Statement stmt4=con.createStatement();   
                 String strQuery4 = "select * from hotels where city_id="+cid1;
                 ResultSet rs4 = stmt4.executeQuery(strQuery4);
                 while(rs4.next()){
%>	
            
                 <p style="font-size:20px; font-family:Comic Sans MS;">Hotel (<%=rs2.getString("cityName")%>):: <%=rs4.getString("hotel_name")%></p>
                 <img src="image.jsp?imgid=<%=rs4.getInt("hotel_id")%>" width="200" height="200">
                 <br>
                 <%
                    }
                 }
                 %>
                 <a name="in"><div id="in"> <h2>Inclusions</2></div></a>
		 <p style="font-size:20px; font-family:Comic Sans MS;">Tour Manager Services from Day 01 Meeting point till the dropping point on last day<br>Travel by comfortable A/c or Non A/c coach / Vehicle as per the tour itinerary<br>Entrance fees of all sightseeing places to be visited from inside<br>Accommodation in comfortable and convenient hotels<br>All Meals ? Breakfast, Lunch, Dinner (set menu) as mentioned in the itinerary<br>All Tips ? Guide, Driver & Restaurants1 Lt. Water Bottle per person per day</p>
		 <hr>
		 <a name="ex"><div id="ex"> <h2>Exclusions</2></div></a>
		 <p style="font-size:20px; font-family:Comic Sans MS;">Govt Tax of 5.00% over and above the Tour Cost mentioned<br>Any upgradation in hotel room category<br>Cost of InsuranceCost of Pre/Post tour hotel accommodation<br>Any extra expense such as route change, Date change, Accommodation facilities, etc incurred due to the unforeseen, unavoidable forced majeure circumstances during the tour</p>
		 <hr>
                 <center><img src="images/Heart.gif">
		 <p style="font-size:20px; font-family:Comic Sans MS;">Let?s stitch travel dreams together!</p></center>
		 <center><a href="booknow.jsp?imgid=<%=id%>"><button class="button button1" style="font-size:15px; "><b>Book Now</b></button></a></center>
	
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
	</body>
	
</html>