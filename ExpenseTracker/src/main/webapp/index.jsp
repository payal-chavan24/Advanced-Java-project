<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Expense Tracker</title>

    <style>
        body {
            font-family: Arial;
            margin: 0;
            padding: 0;

            /* Background Image */
            background-image: url('https://images.unsplash.com/photo-1554224155-8d04cb21cd6c');
            background-size: cover;
            background-position: center;
            height: 100vh;
        }

        .overlay {
            background: rgba(0,0,0,0.6);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            text-align: center;
            color: white;
        }

        h1 {
            font-size: 45px;
            margin-bottom: 10px;
        }

        p {
            font-size: 18px;
            margin-bottom: 30px;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 15px;
            width: 300px;
            margin: auto;
            box-shadow: 0px 5px 20px rgba(0,0,0,0.3);
        }

        a {
            display: block;
            margin: 10px 0;
            padding: 12px;
            text-decoration: none;
            background: #4CAF50;
            color: white;
            border-radius: 8px;
            font-weight: bold;
        }

        a:hover {
            background: #45a049;
        }

        img {
            width: 80px;
            margin-bottom: 10px;
        }
    </style>

</head>

<body>

<div class="overlay">

    <div class="container">

        <h1>💸 Expense Tracker</h1>
        <p>Track your money smartly and save more</p>

        <div class="card">

            <img src="https://cdn-icons-png.flaticon.com/512/2331/2331941.png">

            <a href="login.jsp">🔐 Login</a>
            <a href="register.jsp">📝 Register</a>

        </div>

    </div>

</div>

</body>
</html>