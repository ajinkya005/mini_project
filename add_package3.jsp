<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<b><font color="Blue">
</font></b>

<center>
    <form action="add_package4.jsp" method="post">
        <p>Enter ID of package:</p>
        <input type="number" name="id" />
        </br>
        <p>Add Dates :</p>
        <input type="date" name="dat" />
        </br>
        <p>Max seats :</p>
        <input type="number" name="seats">
        </br>
        <input type="submit" value="submit">        
        </br>
    </form>
</center>