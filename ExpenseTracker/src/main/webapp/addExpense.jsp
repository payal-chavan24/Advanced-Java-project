<%
    if(session.getAttribute("userEmail") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Expense</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
            background: #f4f6f9;
        }

        .navbar {
            background: #2c3e50;
            color: white;
            padding: 15px 30px;
        }

        .container {
            display: flex;
            justify-content: center;
            margin-top: 50px;
        }

        .form-card {
            background: white;
            padding: 30px;
            border-radius: 12px;
            width: 350px;
            box-shadow: 0px 5px 15px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
        }

        input, select {
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

        .back {
            text-align: center;
            margin-top: 15px;
        }

        .back a {
            text-decoration: none;
            color: #2980b9;
        }

    </style>
</head>

<body>

<div class="navbar">
    <h2>➕ Add Expense</h2>
</div>

<div class="container">

    <div class="form-card">

        <form action="addExpense" method="post">

            <input type="number" name="amount" placeholder="Enter Amount" required>

            <select name="category">
                <option>Food</option>
                <option>Travel</option>
                <option>Shopping</option>
                <option>Other</option>
            </select>

            <input type="date" name="date" required>

            <input type="text" name="description" placeholder="Description">

            <button type="submit">Save Expense</button>

        </form>

        <div class="back">
            <a href="dashboard.jsp">⬅ Back to Dashboard</a>
        </div>

    </div>

</div>

</body>
</html>