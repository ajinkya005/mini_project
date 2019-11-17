<%-- 
    Document   : insertData
    Created on : 17 Sep, 2019, 7:49:13 AM
    Author     : ajinkya
--%>

<%@page import="java.io.FileOutputStream"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <%
            
               String type = request.getParameter("type");
               String name = request.getParameter("p_name");
               int days=Integer.parseInt(request.getParameter("days"));
               String itinery = request.getParameter("itinery");
              // int nights=Integer.parseInt(request.getParameter("nights"));
               int cost=Integer.parseInt(request.getParameter("cost"));
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour" , "root" , "");
                Statement st = con.createStatement();
                st.executeUpdate("insert into package (p_type , p_name , days , itinery , cost) values ('"+type+"', '"+name+"' , '"+days+"' , '"+itinery+"' , '"+cost+"')");
                
                out.println("Data is inserted");
            
            }catch(Exception e){
            
            out.println(e);
            
            }
        
        
        
        
        %>
        
        
    </body>
</html>
