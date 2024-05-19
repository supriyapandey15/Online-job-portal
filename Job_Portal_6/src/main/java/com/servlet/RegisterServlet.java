package com.servlet;

import java.io.IOException;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String name=req.getParameter("name");
			String qual=req.getParameter("qual");
			String em=req.getParameter("em");
			String psw=req.getParameter("psw");
			
			UserDAO dao=new	UserDAO(DBConnect.getConn());
			
			User u= new User(name,em,psw,qual,"User");
			boolean f=dao.addUser(u);
			
			HttpSession session=req.getSession();
			
			if(f=true) 
			{
				session.setAttribute("succMsg", "Registration Successfully");
				resp.sendRedirect("signup.jsp");
			}else 
			{
				session.setAttribute("succMsg", "Something went wrong on Server");
				resp.sendRedirect("signup.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
