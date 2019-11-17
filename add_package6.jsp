<%-- 
    Document   : add_package6
    Created on : 8 Oct, 2019, 8:44:51 AM
    Author     : ajinkya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
  int id =  Integer.parseInt(request.getParameter("imgid"));
System.out.println(id);
        %>


        <h1>Hello World!</h1>
    </body>
</html>
