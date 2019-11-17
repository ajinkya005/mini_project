<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<HTML>
    <center>
    
        
 <table border="1">
 <tr><th>BOOKING ID</th><th>CUSTOMER ID</th><th>PACKAGE ID</th><th>PRICE</th><th>DATE</th><th>ADULTS</th><th>CHILDREN</th><th>HOTEL TYPE</th></tr>
   <%
  try{      
      
   
      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
    Statement stmt=con.createStatement();
    String dom= "'domestic'";
    String strQuery = "select * from customer_booking";
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
       %>
      <tr>
          
      <td><%=rs.getInt("b_id")%></td>
      <td><%=rs.getInt("c_id")%></td>
      <td><%=rs.getInt("p_id")%></td>
      <td><%=rs.getInt("price")%></td>
      <td><%=rs.getString("date")%></td>
      <td><%=rs.getInt("adults")%></td>
      <td><%=rs.getInt("children")%></td>
      <td><%=rs.getString("hotel_type")%></td>
      
      
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