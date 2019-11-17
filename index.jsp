<%-- 
    Document   : index
    Created on : 17 Sep, 2019, 7:42:59 AM
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
        
        <h1>Add admin</h1>
        
        <form action="insertData.jsp">
          <pre>
         
            <input type="text" name="name" placeholder="username" />

            <input type="password" name="password" placeholder="password" />

            <input type="submit" value="submit" />
         
          </pre>
        
        </form>    
        
    </body>
</html>
