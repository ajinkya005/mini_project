<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    
<body> 
<% 
    
    
    System.out.println("--===");
   String Sessname2=(String)session.getAttribute("p_id"); 
   String Sessname3=(String)session.getAttribute("c_id"); 
   int pid=Integer.parseInt(Sessname2); 
   int cid=Integer.parseInt(Sessname3); 
   Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
    Statement stmt8=con.createStatement();
    String strQuery8 = "select * from customer_booking where p_id="+pid+" and c_id="+cid+";";
    ResultSet rs8 = stmt8.executeQuery(strQuery8);
    rs8.next();
    int adults=rs8.getInt("adults");
    int children=rs8.getInt("children");
    int cost=rs8.getInt("price");
    int bid=rs8.getInt("b_id");
    String date=rs8.getString("date");
    String type=rs8.getString("hotel_type");
 
  %>
  
   
  <center>
  
  <p>booking id       :<%=bid%></p>
      <p>customer id  :<%=cid%></p>
      <p>package id   :<%=pid%></p>
      <p>price        :<%=cost%></p>
      <p>date         :<%=date%></p>
      <p>adults       :<%=adults%></p>
      <p>children     :<%=children%></p>
      <>hotel type    :<%=type%></p>
      
  </center>   
      
      
   
      
 
  


<center>    
    <form action="#">
        <h2>CLICK BELOW TO GENERATE RECEIPT</h2>
        <input type="submit" value="generate receipt">
    </form>
    
</center>


 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <%@include  file="footer.html" %> 
    
</body>    

