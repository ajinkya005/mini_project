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
String sql ="select * from package where p_id="+id;
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>



<!DOCTYPE html>
<html>
<body>
<h1>Update data</h1>
<form method="post" action="update_package_3.jsp?id=<%=id%>">
<br>
Package type:<br>
<input type="text" name="p_type" value="<%=resultSet.getString("p_type") %>">
<br>
Package name:<br>
<input type="text" name="p_name" value="<%=resultSet.getString("p_name") %>">
<br>
Days:<br>
<input type="text" name="days" value="<%=resultSet.getInt("days")%>">
<br>
Cost:<br>
<input type="text" name="cost" value="<%=resultSet.getInt("cost")%>">
<br>
Image<br>
<input type="file" name="image" value="<img src=image.jsp?imgid=<%=resultSet.getInt("p_id")%>">
<br>
Number of cities:<br>
<input type="text" name="cities" value="<%=resultSet.getInt("city_count")%>">
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