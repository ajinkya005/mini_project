import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class Search extends HttpServlet {  
  
public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
  
int id =  Integer.parseInt(request.getParameter("imgid"));
//String rollno=request.getParameter("roll");  
//int roll=Integer.valueOf(rollno);  
          
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/tour","root","");  
              
PreparedStatement ps=con.prepareStatement("select * from package where p_id=?");  
ps.setInt(1,id);  
              
out.print("<table width=50% border=1>");  
out.print("<caption>Result:</caption>");  
  
ResultSet rs=ps.executeQuery();  
              
/* Printing column names */  
ResultSetMetaData rsmd=rs.getMetaData();  
int total=rsmd.getColumnCount();  
out.print("<tr>");  
for(int i=1;i<=total;i++)  
{  
out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
}  
  
out.print("</tr>");  
              
/* Printing result */  
//  
//while(rs.next())  
//{  
//out.print("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"  
//</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");  
//                  
//}  
  
out.print("</table>");  
              
}catch (Exception e2) {e2.printStackTrace();}  
          
finally{out.close();}  
  
}  
}  