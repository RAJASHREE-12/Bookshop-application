package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.DbConnect;
import com.dao.ContactDAo;
import com.entity.Contact;

import jakarta.servlet.http.HttpSession;

@WebServlet("/addContact")
public class AddContact extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int userId=Integer.parseInt(req.getParameter("userid"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phno=req.getParameter("phno");
		String about=req.getParameter("about");
		
		Contact c=new Contact(name,email,phno,about,userId);
		ContactDAo dao=new ContactDAo(DbConnect.getConn());
		
		 javax.servlet.http.HttpSession session = req.getSession();
		boolean f=dao.saveContact(c);
		if(f)
		{
			session.setAttribute("succMsg", "Your Contact Saved..");
			resp.sendRedirect("addContact.jsp");
		}
		else {
			session.setAttribute("failedMsg", "Something wrong on server..");
			resp.sendRedirect("addContact.jsp");
		}

	}
	
	

}
