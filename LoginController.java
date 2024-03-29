

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("a_email");
		String pw=request.getParameter("a_psw");
		
		// Connect to mysql and verify username password
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour", "root", ""); // gets a new connection
 
		PreparedStatement ps = c.prepareStatement("select name,password from admin where name=? and password=?");
		ps.setString(1, un);
		ps.setString(2, pw);
 
                
		ResultSet rs = ps.executeQuery();
 
		while (rs.next()) {
			response.sendRedirect("admin_after_login.jsp");
			return;
		}
		response.sendRedirect("error.jsp");
		return;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
