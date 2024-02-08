<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        line-height: 1.6;
    }

    h1 {
        color: #333;
        text-align: center;
        margin-top: 20px;
        font-size: 32px;
        margin-bottom: 30px;
    }

    h2 {
        color: #555;
        font-size: 24px;
        margin-top: 20px;
    }

    a {
        display: block;
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
        padding: 15px 20px;
        border-radius: 5px;
        margin-bottom: 10px;
        background-color: #fff;
        border: 1px solid #007BFF;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
        animation: fadeIn 0.5s ease;
    }

    a:hover {
        background-color: #007BFF;
        color: #fff;
        transform: translateY(-3px);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    #dateTime {
        text-align: center;
        margin-top: 20px;
        color: #777;
        font-size: 16px;
        margin-bottom: 20px;
    }

    #dateTime span {
        color: #333;
        font-weight: bold;
    }

    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: box-shadow 0.3s ease;
        animation: fadeInUp 0.5s ease;
    }

    .container:hover {
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
<script>
    function displayDateTime() {
        var currentDate = new Date();
        var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
        var dateTimeString = currentDate.toLocaleDateString('en-US', options) + " " + currentDate.toLocaleTimeString();
        document.getElementById("dateTime").innerHTML = "Current Date & Time: <span>" + dateTimeString + "</span>";
    }
</script>
</head>
<body onload="displayDateTime()">
<div class="container">
    <h1>Welcome To Admin Page</h1>
    <h2>Navigation</h2>
    <a href="viewstudents.jsp">Student Details</a>
    <a href="viewteachers.jsp">Teachers Details</a>
    <a href="viewsubjects.jsp">Subjects</a>
    <a href="viewfeedback.jsp">Feedbacks</a>
    <a href="adminlogin.html">LogOut</a>
    <div id="dateTime"></div>
</div>
</body>
</html>
