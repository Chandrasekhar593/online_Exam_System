<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Online Exam</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        nav {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Add shadow for depth */
        }

        h1 {
            margin: 0;
            font-size: 24px; /* Increase font size for better visibility */
        }

        button {
            padding: 10px 20px; /* Increase padding for better clickability */
            background-color: #4caf50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        a {
            display: block;
            padding: 10px;
            margin: 5px;
            text-decoration: none;
            color: #333;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: background-color 0.3s;
            animation: slideIn 0.5s ease forwards; /* Animate slide in */
        }

        a:hover {
            background-color: #f0f0f0;
        }

        /* Hide navigation links by default */
        .hidden {
            display: none;
        }

        /* Animation keyframes */
        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(-10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
    <script>
        function toggleNav() {
            var navLinks = document.getElementById("nav-links");
            navLinks.classList.toggle("hidden");
        }
    </script>
</head>
<body>
    <nav>
        <!--<img src="img/sincerely-media-JMUIJaZllUs-unsplash.jpg" alt="Logo" width="100">-->
        <h1>Welcome to Online Exam</h1>
        <button onclick="toggleNav()">OPEN IT</button>
        <div id="nav-links" class="hidden">
            <a href="#">Home</a>
            <a href="studentlogin.html">Student Login</a>
            <a href="teacherlogin.html">Teacher Login</a>
            <a href="adminlogin.html">Admin Login</a>
            <a href="contact.html">Contact Us</a>
            <a href="about.html">About Us</a>
            <a href="feedback.jsp">FeedBack</a>
        </div>
    </nav>
    <img src="img/sincerely-media-JMUIJaZllUs-unsplash.jpg" alt="Logo" width="100%" height="750">
</body>
</html>
