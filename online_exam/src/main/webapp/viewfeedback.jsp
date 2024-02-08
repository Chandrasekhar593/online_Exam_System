<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Feedback Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        h1 {
            text-align: center;
            color: #007bff;
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        th {
            background-color: #f0f0f0;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #e9e9e9;
        }
        center {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<%@page import="online_exam.User,online_exam.UserDao,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>Feedback Details</h1>
<%
    List<User> list=UserDao.getAllfeedback();
    request.setAttribute("list",list);
%>
<center>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Training</th>
            <th>Trainer</th>
            <th>Expectations</th>
            <th>Rate</th>
            <th>Interactive</th>
            <th>Another</th>
        </tr>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.id}</td>
                <td>${u.training}</td>
                <td>${u.trainer}</td>
                <td>${u.expectations}</td>
                <td>${u.rate}</td>
                <td>${u.interactive}</td>
                <td>${u.another}</td>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>
