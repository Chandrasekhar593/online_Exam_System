<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Sign In Success</title>
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
            padding: 10px;
            text-align: center;
            animation: fadeInDown 1s ease forwards; /* Apply fade-in animation */
        }

        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h6 {
            margin: 0;
            color: #888;
            font-size: 18px;
            margin-bottom: 5px;
        }

        h1 {
            margin: 0;
            font-size: 32px;
            color: #fff;
        }

        .ad {
            text-align: center;
            animation: slideInUp 1s ease forwards; /* Apply slide-in animation */
        }

        @keyframes slideInUp {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            margin: 10px 0;
            font-size: 24px;
        }

        a {
            text-decoration: none;
            color: #333;
            background-color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
            display: inline-block;
        }

        a:hover {
            background-color: #f0f0f0;
        }

        img {
            display: block;
            margin: 20px auto;
            max-width: 100%;
            height: auto;
            animation: fadeIn 1s ease forwards; /* Apply fade-in animation */
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <nav>
        <h6>Sign in success</h6>
        <h1>Welcome to Teachers page</h1>
    </nav>
    <div class='ad'>
        <h2><a href="#">Home</a></h2>
        <h2><a href="add-questions.html">Subjects</a></h2>
        <h2><a href="contact.html">Contact Us</a></h2>
        <h2><a href="about.html">About Us</a></h2>
        <h2><a href="teacherlogin.html">Log Out</a></h2>
    </div>
    
    <img src="img/thisisengineering-raeng-h6gCRTCxM7o-unsplash.jpg" alt="Placeholder Image" />
</body>
</html>
