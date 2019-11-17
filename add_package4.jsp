<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%
    int id =  Integer.parseInt(request.getParameter("id"));
               String date = request.getParameter("dat"); 
               int seats=Integer.parseInt(request.getParameter("seats"));  
//String startDateStr = request.getParameter("dat");
//SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
//Date startDate = sdf.parse(startDateStr);  
                Connection con=null;
ResultSet rs=null;
PreparedStatement psmt=null;
FileInputStream fis;
String url="jdbc:mysql://localhost:3306/tour";
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
con=DriverManager.getConnection(url,"root","");
psmt=con.prepareStatement("insert into date_availability(p_id , date , seats)"+"values(?,?,?)");
psmt.setInt(1, id);
psmt.setString(2, date);
psmt.setInt(3, seats);
psmt.setInt(3, seats);
int s = psmt.executeUpdate();
if(s>0) {
%>

<b><font color="Blue">

<% out.println("Data Uploaded successfully !"); %>

</font></b>
<h3><a href="add_package.jsp">Go Back <----</a></h3>
  <form action="admin_manipulation.jsp">      
        <p>If you Dont Want to Add Click Here :</p> 
        <br>
<input type="submit" value="Here" />
    </form>
  
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