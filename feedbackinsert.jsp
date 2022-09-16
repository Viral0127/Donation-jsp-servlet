<%@page import="com.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="u" class="com.model.FeedbackModel"></jsp:useBean>
    <jsp:setProperty property="*" name="u"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

int status=UserDao.feedback(u);

if(status>0)
{
	//response.sendRedirect("view.jsp");
	response.sendRedirect("home1.jsp");
}
else
{
	//out.print("Error");
	response.sendRedirect("error.jsp");
}

%>

</body>
</html>