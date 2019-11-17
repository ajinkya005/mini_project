<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
 int id=Integer.parseInt(request.getParameter("id"));
try {
    Class.forName("com.mysql.jdbc.Driver").newInstance();
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");
statement=connection.createStatement();
String sql ="select * from hotels where hotel_id="+id;
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>



<!DOCTYPE html>
<html>
<body>
<h1>Update data</h1>
<form method="post" action="update_hotels_3.jsp?id=<%=id%>">
<br>
hotel name<br>
<input type="text" name="hotel_name" value="<%=resultSet.getString("hotel_name") %>">
<br>
city id:<br>
<input type="text" name="city_id" value="<%=resultSet.getString("city_id") %>">
<br>
standard price:<br>
<input type="text" name="std_price" value="<%=resultSet.getInt("Standar_Price")%>">
<br>
deluxe price:<br>
<input type="text" name="del_price" value="<%=resultSet.getInt("Deluxe_Price")%>">
<br>
Image<br>
<input type="file" name="image" value="<img src=image.jsp?imgid=<%=resultSet.getInt("hotel_id")%>">


<br><br>
<input type="submit" value="submit">
</form>

<%=id%>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>