package com.servlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.db.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Connection con = DBConnection.getConnection();
            String query = "SELECT * FROM users WHERE email='" + email + "' AND password='" + password + "'";

            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery(query);
//            String sql = "SELECT * FROM users WHERE email=? AND password=?";
//            PreparedStatement ps = con.prepareStatement(sql);
//
//            ps.setString(1, email);
//            ps.setString(2, password);

            //ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // login success → create session
                HttpSession session = request.getSession();
                session.setAttribute("userEmail", email);

                response.sendRedirect("dashboard.jsp");
            } else {
                response.getWriter().println("Invalid Email or Password");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}