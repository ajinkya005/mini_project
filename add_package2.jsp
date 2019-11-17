


<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%

             int cities =  Integer.parseInt(request.getParameter("cityno"));
     String type = request.getParameter("type");
               String name = request.getParameter("p_name");
               int day=Integer.parseInt(request.getParameter("days"));
               String itinery = request.getParameter("itinery");
               int cost=Integer.parseInt(request.getParameter("cost"));
               String myloc=request.getParameter("photo");
               String date = request.getParameter("dat"); 
               int seats=Integer.parseInt(request.getParameter("seats"));  
Connection con=null;
ResultSet rs=null;
PreparedStatement psmt=null;
FileInputStream fis;
String url="jdbc:mysql://localhost:3306/tour";
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
con=DriverManager.getConnection(url,"root","");
File image=new File(myloc);
psmt=con.prepareStatement("insert into package(p_type , p_name , days , cost , images , city_count)"+"values(?,?,?,?,?,?)");
psmt.setString(1, type);
psmt.setString(2, name);
psmt.setInt(3, day);
psmt.setInt(4, cost);
fis=new FileInputStream(image);
psmt.setBinaryStream(5, (InputStream)fis, (int)(image.length()));
psmt.setInt(6, cities);
PreparedStatement psmt2=null;
Statement stmt3=con.createStatement();
int s = psmt.executeUpdate();
String strQuery2 = "select * from package where p_name='"+name+"'";
    ResultSet rs2 = stmt3.executeQuery(strQuery2);
    rs2.next();
psmt2=con.prepareStatement("insert into date_availability(p_id , date , seats)"+"values(?,?,?)");
psmt2.setInt(1, rs2.getInt("p_id"));
psmt2.setString(2, date);
psmt2.setInt(3, seats);
int s1 = psmt2.executeUpdate();
if(s>0 && s1>0) {
%>
<form action="add_package6.jsp?imgid=<%=rs2.getInt("p_id")%>">
<center>
<b><font color="Blue">

<% out.println("Data Uploaded successfully !"); 
%>
            


<%
    }
    con.close();
    psmt.close();
    
}
catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
<br>
If you want to add more dates click here:
<br>
<input type="submit" value="add dates">
</form>
</center>        
</font></b>
<h3><a href="add_package.jsp">Go Back <----</a></h3>
