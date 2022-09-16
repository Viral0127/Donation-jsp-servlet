<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up </title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>


	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<%
    
    response.setHeader("cache-control", "no-cache");
    response.setHeader("cache-control", "no-store");
    response.setHeader("pragma", "no-cache");
    response.setDateHeader("Expires", 0);
    
    %>
    
      	<%
    		if(session.getAttribute("viral")==null)
    		{
    	%>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form action="insert.jsp" method="POST" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="username" id="username" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="password" placeholder="Password"/>
                            </div>
     
                            <div class="form-group">
                                <label for="address"><i class="zmdi zmdi-account material-icons-address"></i></label>
                                <input type="text" name="address" id="address" placeholder="Your Address"/>
                            </div>
                            
                               <div class="form-group">
                                <label for="number"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="number" name="mobile" id="mobile" placeholder="Your Mobile"/>
                            </div>
                            
                             <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            
                            <div class="form-group form-button">
                                <input type="submit" name="register" id="register" class="btn btn-primary mr-3 d-none d-lg-block" value="Register"/>
                            </div>
                            <div class="form-group form-button">
                                <a href="login.jsp" class="signup-image-link">I am already member</a>
                            </div>
                        </form>
                    </div>
                   
                </div>
            </div>
        </section>

      

    </div>
    <%
    	}
    	else
    	{
    		response.sendRedirect("login.jsp");
    	}
	%>
    
    <jsp:include page="Footer.jsp"></jsp:include>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
