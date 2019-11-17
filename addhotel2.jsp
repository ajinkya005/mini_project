
<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%

               String h_name = request.getParameter("hotel_name");
               String city = request.getParameter("cityname");
               int stdprice=Integer.parseInt(request.getParameter("stdprice"));
               int delprice=Integer.parseInt(request.getParameter("delprice"));
               int cityno = 501;
               String myloc=request.getParameter("photo");
    
Connection con=null;

ResultSet rs=null;

PreparedStatement psmt=null;

FileInputStream fis;

String url="jdbc:mysql://localhost:3306/tour";

try{

Class.forName("com.mysql.jdbc.Driver").newInstance();

con=DriverManager.getConnection(url,"root","");
File image=new File(myloc);
    Statement stmt=con.createStatement();
    String strQuery = "select * from cities where city_name = '"+city+"'";
    ResultSet rs1 = stmt.executeQuery(strQuery);
    rs1.next();
    

psmt=con.prepareStatement("insert into hotels(hotel_name , city_id , Standar_Price , Deluxe_Price,hotel_image)"+"values(?,?,?,?,?)");

psmt.setString(1, h_name);
psmt.setInt(2, rs1.getInt("city_id"));
psmt.setInt(3, stdprice);
psmt.setInt(4, delprice);
fis=new FileInputStream(image);
psmt.setBinaryStream(5, (InputStream)fis, (int)(image.length()));
int s = psmt.executeUpdate();

if(s>0) {

%>

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
</font></b>
<h3><a href="admin_manipulation.jsp">Go Back <----</a></h3>

