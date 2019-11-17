

<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/tour";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
int id =  Integer.parseInt(request.getParameter("id"));
String p_type=request.getParameter("p_type");
String p_name=request.getParameter("p_name");
//int days = request.getParameter("days");
//int cost = request.getParameter("cost");
//int cities = request.getParameter("cities");
int days =  Integer.parseInt(request.getParameter("days"));
int cost =  Integer.parseInt(request.getParameter("cost"));
int cities =  Integer.parseInt(request.getParameter("cities"));
String myloc=request.getParameter("image");

FileInputStream fis;

if(id!=0)
{
Connection con = null;
PreparedStatement ps = null;


try
{
    
    System.out.println("-------------------");
    

Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
File image=new File(myloc);
String sql="update package set p_type=? , p_name=? , days=? , cost=? , images=? , city_count=? where p_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,p_type);
ps.setString(2, p_name);
ps.setInt(3, days);
ps.setInt(4, cost);

 System.out.println("-------------------");

fis=new FileInputStream(image);
ps.setBinaryStream(5, (InputStream)fis, (int)(image.length()));

ps.setInt(6, cities);

int i = ps.executeUpdate();

 System.out.println("-------------------");

if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}



}
catch(SQLException sql)
{
   
    
    
request.setAttribute("error", sql);
out.println(sql);
}
}
else
{
%>

<%=id%>

<h2>cannot be updated</h2>

<%

}
%>