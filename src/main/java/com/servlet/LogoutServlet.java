package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jakarta.servlet.http.HttpSession;
import com.mysql.cj.Session;
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		javax.servlet.http.HttpSession session = req.getSession();
		session.getAttribute("user");
		
		session.removeAttribute("user");
		
		javax.servlet.http.HttpSession session2 = req.getSession();
		session2.setAttribute("logMsg", "Logout Sucessfully..");

		resp.sendRedirect("login.jsp");
	}
	
}
