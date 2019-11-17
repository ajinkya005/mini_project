<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%
    int id =  Integer.parseInt(request.getParameter("pid"));
    int dayno =  Integer.parseInt(request.getParameter("dayno"));
    String cityname = request.getParameter("cityname"); 
Connection con=null;
ResultSet rs=null;
PreparedStatement psmt=null;
FileInputStream fis;
String url="jdbc:mysql://localhost:3306/tour";
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
con=DriverManager.getConnection(url,"root","");
psmt=con.prepareStatement("insert into package_cities(p_id ,city_id,dayNo,cityName)"+"values(?,?,?,?)");
    Statement stmt=con.createStatement();
    String strQuery = "select * from cities where city_name = '"+cityname+"'";
    ResultSet rs1 = stmt.executeQuery(strQuery);
    rs1.next();
psmt.setInt(1, id);
psmt.setInt(2, rs1.getInt("city_id") );
psmt.setInt(3, dayno);
psmt.setString(4, cityname);
int s = psmt.executeUpdate();
if(s>0) {
%>

<b><font color="Blue">
<% out.println("Data Uploaded successfully !"); %>
</font></b>
        <center>    
        <form action="add_package_cities.jsp" method="post">   
           </br>
           <p>TO add next day click here</p>
           <input type="submit" value="save">
        </form>    
    </center> 
        



<%

}


con.close();

psmt.close();

}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>