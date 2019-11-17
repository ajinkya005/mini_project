<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<HTML>
    <center>
    
        
 <table border="1">
 <tr><th>HOTEL ID</th><th>HOTEL NAME</th><th>CITY ID</th><th>STD PRICE</th><th>DELUXE PRICE</th><th>IMAGE</th></tr>
   <%
  try{      
      
   
      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
    Statement stmt=con.createStatement();
    String dom= "'domestic'";
    String strQuery = "select * from hotels";
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
       %>
      <tr>
      <td><%=rs.getInt("hotel_id")%></td>
      <td><%=rs.getString("hotel_name")%></td>
      <td><%=rs.getInt("city_id")%></td>
      <td><%=rs.getInt("Standar_Price")%></td>
      <td><%=rs.getInt("Deluxe_Price")%></td>
      
      
      <td align="center">

       <img src="image.jsp?imgid=<%=rs.getInt("hotel_id")%>" width="200" height="200">

          

      </td>
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