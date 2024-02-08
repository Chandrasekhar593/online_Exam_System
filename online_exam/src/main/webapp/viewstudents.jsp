<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    
    h1 {
        text-align: center;
        margin-top: 20px;
        color: #333;
    }
    
    form {
        text-align: center;
        margin-bottom: 20px;
    }
    
    table {
        width: 80%;
        margin: 0 auto;
        border-collapse: collapse;
        border: 1px solid #ccc;
        background-color: #fff;
    }
    
    th, td {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: left;
    }
    
    th {
        background-color: #007bff;
        color: #fff;
    }
    
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    
    tr:hover {
        background-color: #ddd;
    }
    
    a {
        text-decoration: none;
        color: #007bff;
    }
    
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<%@page import="online_exam.User,online_exam.UserDao,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>Students Details</h1>
<%
List<User> list=UserDao.getAllStudents();
request.setAttribute("list",list);
%>
<form action="search.jsp" method="post">
    <table>
        <tr>
            <td>Search By Email:</td>
            <td><input type="text" name="ssname"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Search"></td>
        </tr>
    </table>
</form>
<center>
    <table>
        <tr>
            <th>Name of the Students</th>
        </tr>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.getSname()}</td>
                <td><a href="deletestudent.jsp?sname=${u.getSname()}">Delete</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td></td>
        </tr>
    </table>
</center>
</body>
</html>
