<%-- 
    Document   : delete_package
    Created on : 24 Sep, 2019, 11:23:03 AM
    Author     : ajinkya
--%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*;" %>
<%@ page import="java.util.*;" %>
<%@ page import="java.io.PrintWriter;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Delete Data</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        
        
    </head>
    <body>
        </br></br></br></br></br></br></br></br></br></br></br></br>
        <center>
        <form action="delete_package.jsp">
            
                    
            <h2 style="display:inline-block"> Enter the Package ID  <input type="text" name="id"/></h2>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <input type="submit" value="Delete" style="display:inline-block" class="btn btn-primary btn-lg"/>
               
            
        </form>
            
         </center>   
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/tour";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
    
     
String id = request.getParameter("id");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql2 = "select * from package where p_id="+personID;
String sql = "DELETE FROM package WHERE p_id="+personID;
ps = con.prepareStatement(sql);
int i = ps.executeUpdate();
if(i > 0)
{%>

<jsp:forward page="/successful_deletion.jsp"/>
<% 
}
else
%>
<jsp:forward page="/failure_deletion.jsp"/>
<%
}
catch(SQLException sqe)
{
request.setAttribute("error", sqe);
out.println(sqe);
}
}
%><br>
<center>  <a href="after_admin_manipulation_delete.jsp"><button  class="btn btn-primary btn-lg"> Back</button></a> </center>
</body>
</html>