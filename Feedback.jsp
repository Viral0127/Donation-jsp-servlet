<%@page import="com.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

textarea {
	border: em;
outline: none;
display: inline-block;
box-sizing: border-box;
position: relative;
width: auto;
border-radius: 10px;
	
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

<form action="feedbackinsert.jsp" method="post">
<fieldset style="margin-left:30%; margin-right: 30%;">
<h2>Feedback</h2>

<input type="text" name="name" id="name" placeholder="Your Name" value="<%=s.getUsername()%>"><br><br>

<input type="email" name="email" id="email" placeholder="Your email" value=" <%=s.getEmail()%>"><br><br>


 <textarea rows="4" cols="50" placeholder="Your Feedback" name="feedback"></textarea><br><br>

<div class="form-group form-button">
 <input type="submit" name="feedback" id="feedback" class="btn btn-primary mr-3 d-none d-lg-block" value="submit"/>
</div>
</p>
</fieldset>
</form>

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