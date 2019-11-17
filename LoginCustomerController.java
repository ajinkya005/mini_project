

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
public class LoginCustomerController extends HttpServlet {

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("c_email");
		String pw=request.getParameter("c_psw");
		
		// Connect to mysql and verify username password
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour", "root", ""); // gets a new connection
 
		PreparedStatement ps = c.prepareStatement("select c_name,password from customer where c_name=? and password=?");
		ps.setString(1, un);
		ps.setString(2, pw);

                HttpSession session = request.getSession();
                session.setAttribute("sessname" , un);

		ResultSet rs = ps.executeQuery();
 
		while (rs.next()) {
			response.sendRedirect("package.html");
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
