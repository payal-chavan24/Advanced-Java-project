<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            height: 100vh;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 12px;
            width: 320px;
            box-shadow: 0px 5px 20px rgba(0,0,0,0.3);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #27ae60;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #219150;
        }

        .link {
            margin-top: 15px;
        }

        .link a {
            text-decoration: none;
            color: #2980b9;
        }

        .msg {
            color: green;
            margin-bottom: 10px;
        }

    </style>
</head>

<body>

<div class="container">

    <div class="card">

        <h2>🔐 Login</h2>

        <!-- success message after register -->
        <%
            if(request.getParameter("msg") != null) {
        %>
            <p class="msg">Registered Successfully!</p>
        <%
            }
        %>

        <form action="login" method="post">

            <input type="email" name="email" placeholder="Enter Email" required>

            <input type="password" name="password" placeholder="Enter Password" required>

            <button type="submit">Login</button>

        </form>

        <div class="link">
            <p>Don't have an account? <a href="register.jsp">Register</a></p>
        </div>

    </div>

</div>

</body>
</html>