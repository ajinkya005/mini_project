

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
String hotel_name=request.getParameter("hotel_name");
//String p_name=request.getParameter("");
//int days = request.getParameter("days");
//int cost = request.getParameter("cost");
//int cities = request.getParameter("cities");
int city_id =  Integer.parseInt(request.getParameter("city_id"));
int std_price =  Integer.parseInt(request.getParameter("std_price"));
int del_price =  Integer.parseInt(request.getParameter("del_price"));
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
String sql="update hotels set hotel_name=? , city_id=? , Standar_Price=? , Deluxe_Price=? , hotel_image=? where hotel_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,hotel_name);
ps.setInt(2, city_id);
ps.setInt(3, std_price);
ps.setInt(4, del_price);

 System.out.println("-------------------");

fis=new FileInputStream(image);
ps.setBinaryStream(5, (InputStream)fis, (int)(image.length()));


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