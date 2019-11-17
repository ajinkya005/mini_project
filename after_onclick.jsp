<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<HTML>
    <center>
    
        
 <table border="1">
 <tr><th>ID</th><th>TYPE</th><th>NAME</th><th>DAYS</th><th>ITINERY</th><th>COST</th><th>IMAGE</th></tr>
   <%
  try{      
      
    int id =  Integer.parseInt(request.getParameter("imgid"));  
    
    System.out.println(id);
    
    //System.out.println(imgid);
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
    Statement stmt=con.createStatement();
    String strQuery = "select * from package where p_id="+id;
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
       %>
      <tr>
      <td><%=rs.getInt("p_id")%></td>
      <td><%=rs.getString("p_type")%></td>
      <td><%=rs.getString("p_name")%></td>
      <td><%=rs.getInt("days")%></td>
      <td><%=rs.getString("itinery")%></td>
      <td><%=rs.getInt("cost")%></td>
      
      
      <td align="center">

          <img src="image.jsp?imgid=<%=rs.getInt("p_id")%>" width="200" height="200">

          

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