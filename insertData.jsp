<%-- 
    Document   : insertData
    Created on : 17 Sep, 2019, 7:49:13 AM
    Author     : ajinkya
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
            
               String name = request.getParameter("name");
               String pass = request.getParameter("password");
        
            try{
            
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour" , "root" , "");
                Statement st = con.createStatement();
                        
                        
                st.executeUpdate("insert into admin(name , password)values('"+name+"', '"+pass+"')");
                
                out.println("Data is inserted");
            
            }catch(Exception e){
            
            out.println(e);
            
            }
        
        
        
        
        %>
        
        
    </body>
</html>
