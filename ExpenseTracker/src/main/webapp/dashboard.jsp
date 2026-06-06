<%
    if(session.getAttribute("userEmail") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String email = (String) session.getAttribute("userEmail");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #f4f6f9;
        }

        /* Navbar */
        .navbar {
            background: #2c3e50;
            color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
        }

        .navbar h2 {
            margin: 0;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        /* Container */
        .container {
            padding: 40px;
        }

        .welcome {
            margin-bottom: 30px;
        }

        /* Cards */
        .cards {
            display: flex;
            gap: 20px;
        }

        .card {
            flex: 1;
            padding: 25px;
            border-radius: 12px;
            color: white;
            text-align: center;
            cursor: pointer;
            transition: 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .add {
            background: #27ae60;
        }

        .view {
            background: #2980b9;
        }

        .logout {
            background: #c0392b;
        }

        .card a {
            text-decoration: none;
            color: white;
            display: block;
        }

        .card h3 {
            margin: 10px 0;
        }

    </style>
</head>

<body>

<!-- Navbar -->
<div class="navbar">
    <h2>💸 Expense Tracker</h2>
    <div>
        <span><%= email %></span>
        <a href="logout">Logout</a>
    </div>
</div>

<!-- Main Content -->
<div class="container">

    <div class="welcome">
        <h2>Welcome back 👋</h2>
        <p>Manage your expenses efficiently</p>
    </div>

    <div class="cards">

        <div class="card add">
            <a href="addExpense.jsp">
                <h3>➕ Add Expense</h3>
                <p>Add new spending</p>
            </a>
        </div>

        <div class="card view">
            <a href="viewExpense.jsp">
                <h3>📊 View Expenses</h3>
                <p>Check all records</p>
            </a>
        </div>

        <div class="card logout">
            <a href="logout">
                <h3>🚪 Logout</h3>
                <p>Sign out</p>
            </a>
        </div>

    </div>

</div>

</body>
</html>