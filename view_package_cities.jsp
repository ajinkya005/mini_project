<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<HTML>
    <center>
    
        
 <table border="1">
 <tr><th>PACKAGE ID</th><th>CITY ID</th><th>DAY NO</th><th>CITY NAME</th></tr>
   <%
  try{      
      
   
      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
    Statement stmt=con.createStatement();
    String dom= "'domestic'";
    String strQuery = "select * from package_cities";
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
       %>
      <tr>
          
      <td><%=rs.getInt("p_id")%></td>
      <td><%=rs.getInt("city_id")%></td>
      <td><%=rs.getInt("dayNo")%></td>
      <td><%=rs.getString("cityName")%></td>
      
      </tr>
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
 </table>
 
    </CENTER>
 
</HTML>