package com.zqc.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zqc.entity.User;
import com.zqc.impl.UserValidate;




public class ValidateServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	   doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session =request.getSession();
		User user =new User();
		user.setUser_Name(request.getParameter("user_Name"));
		user.setUser_Password(request.getParameter("user_Password"));
	
		UserValidate validate =new UserValidate();
		
		int flag =validate.Useryz(user);
		session.setAttribute("user", user);
		if(flag==1){
			request.getRequestDispatcher("admin/index.html").forward(request, response);
			
		}
		else {
			response.sendRedirect("Login.jsp");
		}
	}

	public void init() throws ServletException {
	
	}

}
