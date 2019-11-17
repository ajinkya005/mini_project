<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="css/home.css"%>
        <%@include file="css/login.css"%>
    </head>
    <body>
        <%@include  file="header.jsp" %>
        <div class="bg-mg">   
            <center>
                </br></br></br></br></br></br></br></br></br></br></br>   
                <form action="LoginCustomerController" style="display:inline-block" method="post">
                    <h1> Customer Login</h1></br>
                    <label><b>Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
                    <input type="text" placeholder="Enter Email" name="c_email" required>
                    <br/><br/>
                    <label><b>Password :&nbsp;&nbsp;&nbsp;</b></label>
                    <input type="password" placeholder="Enter Password" name="c_psw" required>
                    <br/><br/>
                                        
                    <button type="submit" value="Login">Login</button>
                    
                    
                </form>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <form action="LoginController" style="display:inline-block" method="post">
                    <h1> Admin Login</h1>
                    </br>
                    <label><b>Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
                    <input type="text" placeholder="Enter Email" name="a_email" required>
                    <br/><br/>
                    <label><b>Password :&nbsp;&nbsp;&nbsp;</b></label>
                    <input type="password" placeholder="Enter Password" name="a_psw" required>
                    <br/><br/>
                    <button type="submit" value="Login">Login</button>
                </form>
            </center>    
            <center>
                <p style="display:inline-block">New User??<a href="registration.jsp">&nbsp;&nbsp;&nbsp; Register Here</a></p>
            </center>   
        </div>
    </body>
</html>