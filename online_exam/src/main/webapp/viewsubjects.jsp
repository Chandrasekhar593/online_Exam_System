<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* Add your CSS styles here */
table {
    border-collapse: collapse;
    width: 80%;
    margin: auto;
}

th, td {
    border: 1px solid black;
    padding: 8px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}

a {
    text-decoration: none;
    color: blue;
}

a:hover {
    color: red;
}
</style>
</head>
<body>
<%@page import="online_exam.User,online_exam.UserDao,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>Subject Details</h1>
<%
List<User> list=UserDao.getAllSubjects();
request.setAttribute("list",list);

%>
<center>
<table>
<tr>
<th>Name of the Subjects</th>
</tr>
<c:forEach items="${list}" var="u">
<tr>
<td><a href="${u.getSname()}_inst.html">${u.getSname()}</a></td>
</tr>
</c:forEach>
</table>
</center>

</body>
</html>
