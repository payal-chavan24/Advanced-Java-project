<%@ page import="java.sql.*" %>
<%@ page import="com.db.DBConnection" %>

<%
    if(session.getAttribute("userEmail") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String email = (String) session.getAttribute("userEmail");

    Connection con = DBConnection.getConnection();
    String sql = "SELECT * FROM expenses WHERE user_email=?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, email);
    ResultSet rs = ps.executeQuery();
%>

<!DOCTYPE html>
<html>
<head>
    <title>View Expenses</title>

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
            padding: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
        }

        th {
            background: #34495e;
            color: white;
            padding: 12px;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even) {
            background: #f2f2f2;
        }

        tr:hover {
            background: #ddd;
        }

        .back {
            margin-top: 20px;
        }

        .back a {
            text-decoration: none;
            color: #2980b9;
        }
    </style>
</head>

<body>

<div class="navbar">
    <h2>📊 Your Expenses</h2>
</div>

<div class="container">

<table>

<tr>
    <th>Amount</th>
    <th>Category</th>
    <th>Date</th>
    <th>Description</th>
</tr>

<%
while(rs.next()) {
%>

<tr>
    <td><%= rs.getString("amount") %></td>
    <td><%= rs.getString("category") %></td>
    <td><%= rs.getString("date") %></td>
    <td><%= rs.getString("description") %></td>
</tr>

<%
}
%>

</table>

<div class="back">
    <a href="dashboard.jsp">⬅ Back to Dashboard</a>
</div>

</div>

</body>
</html>