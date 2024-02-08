<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Online Exam</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .question-container {
            margin-bottom: 20px;
        }
        .question-container p {
            font-weight: bold;
            margin-bottom: 5px;
        }
        .options label {
            display: block;
            margin-bottom: 5px;
        }
        button[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: #0056b3;
        }
          #t{
position: absolute;
            top: 5px;
            right: 10px;
            font-size: 20px;
}
    #timer {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 50px;
        }
    </style>
    <script>
        window.onload = function() {
            var timeLeft = 1800; // 30 minutes in seconds
            var timerElement = document.getElementById("timer");

            function updateTimer() {
                var minutes = Math.floor(timeLeft / 60);
                var seconds = timeLeft % 60;
                timerElement.innerText = pad(minutes) + ":" + pad(seconds);
                timeLeft--;
                if (timeLeft < 0) {
                    clearInterval(timerInterval);
                    submitExam();
                }
            }

            function pad(value) {
                return value < 10 ? "0" + value : value;
            }

            var timerInterval = setInterval(updateTimer, 1000);

            function submitExam() {
                // Submit the exam automatically
                document.forms["examForm"].submit();
            }
        };
    </script>
</head>
<body>
    <%@page import="online_exam.UserDao,online_exam.User,java.util.*"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

    <h1>Aptitude Exam</h1>    
    <div id="t"><h2>Remaining Time</h2></div>
<div id="timer"></div>
    <%  
        List<User> list=UserDao.getAllRecordsApt();  
        request.setAttribute("list",list);  
    %>  

    <c:if test="${not empty list}">
        <form action="submit_examap.jsp" method="post"> 
            <c:forEach var="user" items="${list}" varStatus="loop">
                <div class="question-container">
                    <p>Question ${loop.index + 1}: ${user.qname}</p>
                    <div class="options">
                        <label>
                            <input type="radio" name="q${loop.index + 1}" value="A">
                            Option A: ${user.aop}
                        </label>
                        <label>
                            <input type="radio" name="q${loop.index + 1}" value="B">
                            Option B: ${user.bop}
                        </label>
                        <label>
                            <input type="radio" name="q${loop.index + 1}" value="C">
                            Option C: ${user.cop}
                        </label>
                        <label>
                            <input type="radio" name="q${loop.index + 1}" value="D">
                            Option D: ${user.dop}
                        </label>
                    </div>
                    <div class="hidden-answer">
                        <input type="hidden" name="correctAnswer${loop.index + 1}" value="${user.rop}">
                    </div>
                </div>
            </c:forEach>
            <button type="submit">Submit</button>
        </form>
    </c:if>
</body>
</html>
