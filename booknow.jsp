<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

    
<%
    String Sessname=(String)session.getAttribute("sessname"); 
    if(Sessname!=null)
    {
%>
 
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Booking Form</title>
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="css/style.css" />
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

</head>

<body  background="images/background.jpg">
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-7 col-md-push-5">
						<div class="booking-cta">
							<h1>Make your booking</h1>
							<p>
								Enter into new world of joy by booking in our travel agency.
							</p>
						</div>
					</div>
					<div class="col-md-4 col-md-pull-7">
						<div class="booking-form">
                                <%    int id =  Integer.parseInt(request.getParameter("imgid"));  %>
                                                    <form action="totalprice.jsp?imgid=<%=id%>" method="post">
										
										<div class="form-group">
											<span class="form-label">Adults</span>
											<select name="adults" class="form-control">
												<option>1</option>
												<option>2</option>
                                                                                	</select>
											<span class="select-arrow"></span>
										</div>
										<div class="form-group">
											<span class="form-label">Children</span>
											<select name="children" class="form-control">
												<option>0</option>
												<option>1</option>
												<option>2</option>
											</select>
											<span class="select-arrow"></span>
										</div>

                                                                                <div>									<div class="form-group">
											<span class="form-label">Dates</span>
											<select name="dat" class="form-control" type="text">
											<%
  try{      

    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
    Statement stmt=con.createStatement();
        String strQuery = "select date from date_availability where p_id="+id;
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
       %>
                                                                                                <option><%=rs.getString("date")%></option>
				
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
                                							</select>
											<span class="select-arrow"></span>
										</div>
                            
                                                                                <div class="form-group">
											<span class="form-label">Room type</span>
											<select name="hot_cat" class="form-control">
												<option>Standard</option>
												<option>Deluxe</option>
											</select>
											<span class="select-arrow"></span>
										</div>
								<div class="form-btn">
                                                                    	<button class="submit-btn">Calculate Price</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

   <%
}   else
%>

<h2>If you haven't logged in you cannot book tour. To Log in click here</h2>
<br><a href="login.jsp">Click Here</a>
