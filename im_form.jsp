<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<HTML>
    <center>
    
        <form action="after_onclick.jsp" method="post">
 
   <%
  try{      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
    Statement stmt=con.createStatement();
    String strQuery = "select * from package";
    ResultSet rs = stmt.executeQuery(strQuery);
    
  //  session.setAttribute("id", );
    
    
    while(rs.next()){
       %>
      
      <p><%=rs.getInt("p_id")%></p>
      <p><%=rs.getString("p_type")%></p>
      <p><%=rs.getString("p_name")%></p>
      <p><%=rs.getInt("days")%></p>
      <p><%=rs.getString("itinery")%></p>
      <p><%=rs.getInt("cost")%></p>
      
      
     

          <a href="after_onclick.jsp"><img src="image.jsp?imgid=<%=rs.getInt("p_id")%>" width="200" height="200"></a>

<!--            <a href="after_onclick.jsp"><img src="image.jsp?imgid=${p_id}" width="200" height="200"></a>-->
     
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
 </form>
 
    </CENTER>
 
</HTML>