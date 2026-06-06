package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.db.DBConnection;

@WebServlet("/addExpense")
public class AddExpenseServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String amount = request.getParameter("amount");
		String category = request.getParameter("category");
		String date = request.getParameter("date");
		String description = request.getParameter("description");

		try {
			// get logged-in user
			HttpSession session = request.getSession(false);
			String email = (String) session.getAttribute("userEmail");

			Connection con = DBConnection.getConnection();

			String sql = "INSERT INTO expenses(user_email, amount, category, date, description) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, email);
			ps.setString(2, amount);
			ps.setString(3, category);
			ps.setString(4, date);
			ps.setString(5, description);

			ps.executeUpdate();

			response.setContentType("text/html");
			response.getWriter().println("Expense Added Successfully!");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}