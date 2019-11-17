<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<HTML>
    <center>
    
        
 <table border="1">
 <tr><th>ID</th><th>TYPE</th><th>NAME</th><th>DAYS</th><th>ITINERY</th><th>COST</th></tr>
   <%
  try{      
      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
    Statement stmt=con.createStatement();
    String dom= "'domestic'";
    String strQuery = "select * from package";
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
       %>
      <tr>
      <td><%=rs.getInt("p_id")%></td>
      <td><%=rs.getString("p_type")%></td>
      <td><%=rs.getString("p_name")%></td>
      <td><%=rs.getInt("days")%></td>
      <td><%=rs.getInt("cost")%></td>
      
      
      <td align="center">

          <a href="itinerary.jsp?imgid=<%=rs.getInt("p_id")%>"><img src="image.jsp?imgid=<%=rs.getInt("p_id")%>" width="200" height="200"></a>

          

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