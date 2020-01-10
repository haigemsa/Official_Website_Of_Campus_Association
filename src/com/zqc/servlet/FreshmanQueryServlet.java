package com.zqc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zqc.entity.Students;
import com.zqc.impl.StudentDaoImpl;

public class FreshmanQueryServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
doPost(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String telphone=request.getParameter("telphone");
		StudentDaoImpl studentDaoImpl=new StudentDaoImpl();
		Students stu =new Students();
		stu=studentDaoImpl.QueryStudentByTelphone(telphone);
		HttpSession session=request.getSession();
		session.setAttribute("stu", stu);
		response.sendRedirect("/Zqc/Website/contact.jsp");
		
	}

}
