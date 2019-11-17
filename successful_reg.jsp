<%@ page import ="java.sql.*" %>
<%
    
               //int p_id = Integer.parseInt(request.getParameter("p_id"));
               //Integer p_id = request.getParameter("p_id");
               String name = request.getParameter("name");
               String address = request.getParameter("address");
               String contact = request.getParameter("contact");
               String email = request.getParameter("email");
               String pass = request.getParameter("password");
               //int days = request.getParameter("days");
               //int nights = request.getParameter("nights");
               //integer cost = request.getParameter("cost");
               //int days=Integer.parseInt(request.getParameter("days"));
               //int nights=Integer.parseInt(request.getParameter("nights"));
               //int cost=Integer.parseInt(request.getParameter("cost"));
               
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tour",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into customer(c_name , c_address , c_contact , c_email , password) values ('" + name + "','" + address + "','" + contact + "','" + email + "','" + pass + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("successful_package_addition.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("error_in_insertion.jsp");
    }
%>