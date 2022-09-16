<%@page import="com.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="s" class="com.model.User"></jsp:useBean>
	<jsp:setProperty property="*" name="s"/> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

input{

border: em;
outline: none;
display: inline-block;
box-sizing: border-box;
position: relative;
width: auto;
border-radius: 10px;
}
input[type=submit] {
  width: 20%;
  background-color: #228B22;
  color: white;
  padding: 14px 20px;
  margin: 6px 0;
  border: none;
  border-radius: 10px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}



div{
font-size: 100%;
}
</style>
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



<form action="DonationRegister.jsp" method="post">
<fieldset style="margin-left:30%; margin-right: 30%;">
<h2>Donation Details</h2>

Name:<input type="text" name="name" id="name" ><br><br>

Email:<input type="email" name="email" id="email" ><br><br>

What do you want to donate?<br><br>

<input type="checkbox" name="items" id="food"><label>food</label><br>
<input type="checkbox" name="items" id="clothing"><label>clothing</label><br>
<input type="checkbox" name="items" id="toys"><label>toys</label><br>
<input type="checkbox" name="items" id="books"><label>books</label><br>
<input type="checkbox" name="items" id="kitchenware"><label>kitchenware</label><br>
<input type="checkbox" name="items" id="furniture"><label>furniture</label><br><br>


Total items:<input type="number" name="titems" id="items"><br><br>

Pick-up date and time:<input type="datetime-local" name="date" id="date"><br><br>
<input type="Submit" value="submit">
</p>
</fieldset>
</form>


<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>