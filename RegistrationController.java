
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserDataServlet
 */
public class RegistrationController extends HttpServlet {

 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  response.setContentType("text/html");
  PrintWriter out = response.getWriter();
  
                 System.out.println("in class block");   
  
                //int p_id = Integer.parseInt(request.getParameter("p_id"));
               //String p_id = request.getParameter("p_id");
               String type = request.getParameter("type");
               String p_name = request.getParameter("p_name");
               String days1 = request.getParameter("days");
               String nights1 = request.getParameter("nights");
               String cost1 = request.getParameter("cost");
             //  int days=Integer.parseInt(request.getParameter("days"));
               //int nights=Integer.parseInt(request.getParameter("nights"));
               //int cost=Integer.parseInt(request.getParameter("cost"));
               
               int days = Integer.parseInt(days1);
               int nights = Integer.parseInt(nights1);
               int cost = Integer.parseInt(cost1);
  
  
  

  // validate given input
  if (type.isEmpty() || p_name.isEmpty()) {
   RequestDispatcher rd = request.getRequestDispatcher("add_package.jsp");
   out.println("<font color=red>Please fill all the fields</font>");
   rd.include(request, response);
  } else {
   // inserting data into mysql database 
   // create a test database and student table before running this to create table
   //create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
   try {
       
    System.out.println("in try block");   
       
    Class.forName("com.mysql.jdbc.Driver");
    // loads mysql driver

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour", "root", ""); 

    String query = "insert into package values(?,?,?,?,?)";
    
    //out.println("query executed");
    
    PreparedStatement ps = con.prepareStatement(query); // generates sql query

    //ps.setString(1, p_id);
    ps.setString(1, type);
    ps.setString(2, p_name);
    ps.setInt(3, days);
    ps.setInt(4, nights);
    ps.setInt(5, cost);
    
    ps.executeUpdate(); // execute it on test database
    System.out.println("successfuly inserted");
    ps.close();
    con.close();
   } catch (ClassNotFoundException | SQLException e) {
    // TODO Auto-generated catch block
       System.out.println("in catch block");   
    e.printStackTrace();
   }
   RequestDispatcher rd = request.getRequestDispatcher("successful_package_addition.jsp");
   rd.forward(request, response);
  }
 }
}
