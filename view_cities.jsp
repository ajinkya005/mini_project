<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<HTML>
    <center>
    
        
 <table border="1">
 <tr><th>CITY ID</th><th>CITY NAME</th><th>CITY ITINENARY</th><th></tr>
   <%
  try{      
      
   
      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
    Statement stmt=con.createStatement();
    String dom= "'domestic'";
    String strQuery = "select * from cities";
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
       %>
      <tr>
          
      <td><%=rs.getInt("city_id")%></td>
      <td><%=rs.getString("city_name")%></td>
      <td><%=rs.getString("city_iti")%></td>
      
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