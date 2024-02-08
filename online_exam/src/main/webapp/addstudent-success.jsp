<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
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
            animation: fadeInDown 1s ease forwards;
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

        h1 {
            margin: 0;
            font-size: 24px;
            animation: slideInLeft 1s ease forwards;
        }

        @keyframes slideInLeft {
            from {
                opacity: 0;
                transform: translateX(-50px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        h2 {
            margin: 10px 0;
            font-size: 18px;
            animation: fadeInUp 1s ease forwards;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        a {
            text-decoration: none;
            color: #333;
            display: block;
            padding: 10px;
            transition: background-color 0.3s;
            animation: fadeInRight 1s ease forwards;
        }

        a:hover {
            background-color: #ccc;
        }

        @keyframes fadeInRight {
            from {
                opacity: 0;
                transform: translateX(50px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        img {
            width: 100%;
            height: auto;
            display: block;
            animation: fadeIn 1s ease forwards;
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
        <h1 id="welcomeMessage">Welcome Student!</h1>
    </nav>
    <h2><a href="#">Home</a></h2>
    <h2><a href="viewsubjects.jsp">Subjects</a></h2>
    <h2><a href="contact.html">Contact Us</a></h2>
    <h2><a href="about.html">About Us</a></h2>
    <h2><a href="feedback.jsp">FeedBack</a></h2>
    <form action="logout" method="post">
    <h2><a href="studentlogin.html">Log Out</a></h2>
    </form>
    <img src="img/stanley-dai-73OZYNjVoNI-unsplash.jpg" alt="Placeholder Image">

    <script>
        // Assuming the user's name is stored in a variable called userName
        var userName = "To Student's Page"; // You can replace this with the actual user's name
        document.getElementById("welcomeMessage").innerText = "Welcome, " + userName + "!";
        
        (function (global) {

            if(typeof (global) === "undefined") {
                throw new Error("window is undefined");
            }

            var _hash = "!";
            var noBackPlease = function () {
                global.location.href += "#";

                // Making sure we have the fruit available for juice (^__^)
                global.setTimeout(function () {
                    global.location.href += "!";
                }, 50);
            };

            global.onhashchange = function () {
                if (global.location.hash !== _hash) {
                    global.location.hash = _hash;
                }
            };

            global.onload = function () {
                noBackPlease();

                // Disables backspace on page except on input fields and textarea..
                document.body.onkeydown = function (e) {
                    var elm = e.target.nodeName.toLowerCase();
                    if (e.which === 8 && (elm !== 'input' && elm  !== 'textarea')) {
                        e.preventDefault();
                    }
                    // Stopping the event bubbling up the DOM tree...
                    e.stopPropagation();
                };
            }
        })(window);
    </script>
</body>
</html>
