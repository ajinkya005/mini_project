<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    
    <%      
        String hot_cat=request.getParameter("hot_cat");
        int id =  Integer.parseInt(request.getParameter("imgid"));  
    int adults=Integer.parseInt(request.getParameter("adults"));
     int children=Integer.parseInt(request.getParameter("children"));
     int tot = adults + children;
             double price=0;
            int id1 =  Integer.parseInt(request.getParameter("imgid"));  
            Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
            Statement stmt7=con2.createStatement();
            String strQuery5 = "select * from date_availability where p_id="+id1;
            ResultSet rs3 = stmt7.executeQuery(strQuery5);
            rs3.next();
            int seat=rs3.getInt("seats");
           
            if(seat <= 0)
            {
       %>
            
       <h1>seats not available try for another date</h1>
       
       <%
            }
            else
            {    
              
       %>
    
        
        <h1>Total Price:</h1>
 <%
    
     
    
     
     Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
    Statement stmt2=con.createStatement();
    String strQuery2 = "select * from package where p_id="+id;
    ResultSet rs2 = stmt2.executeQuery(strQuery2);
    rs2.next();
    int basic_price=rs2.getInt("cost");
    Statement stmt=con.createStatement();
    String strQuery = "select * from hotels where( city_id in (select city_id from package_cities where p_id="+ id +"))";
    ResultSet rs = stmt.executeQuery(strQuery);
    price=price+adults*basic_price;
    price=price+children*0.8*basic_price;
    System.out.println(hot_cat);
     
    while(rs.next())
    {
        System.out.println(rs.getInt("Standar_Price"));
        if(hot_cat.equals("Standard"))
        {
          int hot_price= rs.getInt("Standar_Price");
          price=price+hot_price;
        }
        else if(hot_cat.equals("Deluxe"))
        {
          int hot_price= rs.getInt("Deluxe_Price");
          price=price+hot_price;
        }
    }
    price=price+(0.05 * price);
    System.out.println(price);
    
    String Sessname=(String)session.getAttribute("sessname"); 
  %>
  <%=price%>
<br>

        
       <%
           // String name = "'"Sessname"'";
            Connection con6=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
            Statement stmt6=con.createStatement();
            String strQuery6 = "select * from customer where c_name=" + "'"+Sessname+"'";
            ResultSet rs6 = stmt6.executeQuery(strQuery6);
            rs6.next();      
       %> 
        
        
 <%
    String date = request.getParameter("dat");
    Statement stmt3=con.createStatement();
    System.out.println(date);
    String strQuery3 = "update date_availability set seats=(seats-"+tot+") where date=" + "'"+date+"'";
    int i = stmt3.executeUpdate(strQuery3); 
%>       
  
<%
    Statement stmt4=con.createStatement();
    String strQuery4 = "insert into customer_booking(c_id , p_id , price , date , adults , children, hotel_type)"+"values(?,?,?,?,?,?,?)";
    PreparedStatement psmt=null;
    psmt=con.prepareStatement(strQuery4);
    psmt.setInt(1, rs6.getInt("c_id"));
    psmt.setInt(2, id);
    psmt.setDouble(3, price);
    psmt.setString(4, date);
    psmt.setInt(5, adults);
    psmt.setInt(6, children);
    psmt.setString(7, hot_cat);    
    int s = psmt.executeUpdate();
    
    System.out.println("--===");
    int cid1 = rs6.getInt("c_id");
        System.out.println(cid1);
           System.out.println("--===");       
        
        
        HttpSession session1 = request.getSession();
        session1.setAttribute("p_id" , String.valueOf(id));
        
        HttpSession session2 = request.getSession();
        session2.setAttribute("c_id" , String.valueOf(cid1));
        
        
%>

<center>
    
    <form action="generate_receipt.jsp">
        <h2>CLICK BELOW TO GENERATE RECEIPT</h2>
        <input type="submit" value="generate receipt">
    </form>
    
</center>

<%
       




            }
%>

 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <%@include  file="footer.html" %> 
   