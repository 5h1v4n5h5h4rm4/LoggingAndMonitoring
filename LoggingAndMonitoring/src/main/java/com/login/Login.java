package com.login;
import java.util.*;

import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		if(uname.equals("admin")&& pass.equals("password")) 
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("welcome.jsp");
		}
		else 
		{
			//System.out.println(uname);
			Logger logger = LogManager.getLogger(com.login.log4j.class);
	        logger.error(uname);
			//System.out.println(uname);
			response.sendRedirect("loginredirected.jsp");
		}
		
	}

	
}
