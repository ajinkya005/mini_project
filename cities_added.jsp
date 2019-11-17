<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%
     String  cityname = request.getParameter("cityname");
     String itininery = request.getParameter("itininery");
Connection con=null;
ResultSet rs=null;
PreparedStatement psmt=null;
FileInputStream fis;
String url="jdbc:mysql://localhost:3306/tour";
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
con=DriverManager.getConnection(url,"root","");
psmt=con.prepareStatement("insert into cities(city_name , city_iti)"+"values(?,?)");
psmt.setString(1, cityname);
psmt.setString(2, itininery);
int s = psmt.executeUpdate();
if(s>0) {
%>
<b><font color="Blue">
<% out.println("Data Uploaded successfully !"); %>

<h2>To Add Cities To Package <a href="add_package_cities.jsp">Click Here</a></h2>
</br></br></br>    
<h2>To Add Hotels To cities <a href="add_hotels.jsp">Click Here</a></h2>

</font></b>
<h3><a href="admin_manipulation.jsp">Go Back <----</a></h3>
<%
}
else {
out.println("unsucessfull to upload Data.");
}
con.close();
psmt.close();
}catch(Exception ex){
out.println("Error in connection : "+ex);
}
%>