<%@page import="com.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<%try
 {
 %>

	<%!User s; %>
	<%
 
 s=(User)session.getAttribute("viral");
 
 %>

	<%
    
    response.setHeader("cache-control", "no-cache");
    response.setHeader("cache-control", "no-store");
    response.setHeader("pragma", "no-cache");
    response.setDateHeader("Expires", 0);
    
    %>
	<%!String fname; %>
	<%
 
 if(session!=null)
 {
     if(session.getAttribute("viral")!=null)
	 {
		 fname = session.getAttribute("viral").toString();
	
 %>

	<div align="right" margin="25%">
		<p style="padding-right: 40px;">
		<p style="padding-right: 40px;">

			<img class="img-fluid" src="img/profile.jpg" alt="Image"
				style="width: 100px; height: 100px">

		</p>

		<h4 style="padding-right: 40px;">
			Hello
			<%=s.getUsername() %>
		</h4>

		<p style="padding-right: 40px;">
			Username:
			<%=s.getUsername() %>
		</p>

		<p style="padding-right: 40px;">
			Email:
			<%=s.getEmail() %>
		</p>

		<p style="padding-right: 40px;">
			Address:
			<%=s.getAddress() %>
		</p>

		</p>


		<a href="logout.jsp" style="padding-right: 140px;">
			<button type="submit" class="btn btn-primary mr-3 d-none d-lg-block">Log
				out</button>
		</a>

	</div>
	<%
	 }
	 else
	 {
		 response.sendRedirect("login.jsp");
	 }
 }
 else
 {
	 response.sendRedirect("login.jsp");
 }
%>



	<%
 }
 catch(Exception e)
 {
	 e.printStackTrace();
 }
 %>

	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>