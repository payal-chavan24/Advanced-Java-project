<!DOCTYPE html>
<html>
<head>
    <title>Register</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #ff758c, #ff7eb3);
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
            background: #e67e22;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #d35400;
        }

        .link {
            margin-top: 15px;
        }

        .link a {
            text-decoration: none;
            color: #2980b9;
        }

    </style>
</head>

<body>

<div class="container">

    <div class="card">

        <h2>📝 Register</h2>

        <form action="register" method="post">

            <input type="text" name="name" placeholder="Enter Name" required>

            <input type="email" name="email" placeholder="Enter Email" required>

            <input type="password" name="password" placeholder="Enter Password" required>

            <button type="submit">Register</button>

        </form>

        <div class="link">
            <p>Already have an account? <a href="login.jsp">Login</a></p>
        </div>

    </div>

</div>

</body>
</html>