<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

  <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

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

	<jsp:include page="header.jsp"></jsp:include>

        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-form">
                        <h2 class="form-title">Sign In</h2>
                        <form action="Logincontroller" method="post" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="email" name="email" class="login__input" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" class="login__input" placeholder=" Your Password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="btn btn-primary mr-3 d-none d-lg-block" value="Log in"/>
                            </div>
                             <div class="form-group form-button">
                               don't have accoount?<a href="Register.jsp" class="signup-image-link">Register</a>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </section>
    <%
    	}
    	else
    		response.sendRedirect("home1.jsp");
	%>

<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>