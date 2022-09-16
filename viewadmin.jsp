<%@page import="com.dao.UserDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<br>
<div style="text-align: center;">
<h2>User data</h2>
</div>
<%

List list=UserDao.getalldata();
request.setAttribute("list", list);

%>
<div style="margin-left: 35px; margin-right: 35px;">
<table border="5" width="100%" style="border-style: solid;">

<tr><th>Id</th><th>Name</th><th>Email</th><th>Item</th><th>Total item</th><th>Date</th></tr>

<c:forEach items="${list}" var="m">

<tr><td>${m.getId()}</td><td>${m.getName()}</td><td>${m.getEmail()}</td><td>${m.getItems()}</td><td>${m.getTitems()}</td><td>${m.getDate()}</td></tr>

</c:forEach>


</table>
</div>





<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>