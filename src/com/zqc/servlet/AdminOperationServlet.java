package com.zqc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zqc.entity.Students;
import com.zqc.impl.StudentDaoImpl;

public class AdminOperationServlet extends HttpServlet {

	
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
			String method=request.getParameter("method");
		if("all".equals(method)){
			QueryAll(request,response);
		}
		if("name".equals(method)){
			QueryByName(request,response);
		}
		if("department".equals(method)){
			QueryByDepartment(request,response);
		}
		if("delete".equals(method)){
			deleteAll(request,response);
		}
	}


	private void deleteAll(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		 StudentDaoImpl stuImpl=new StudentDaoImpl();
		String password=request.getParameter("password");
		if("admin".equals(password)){
			stuImpl.deleteStudent();
			out.println("<script> alert('删除成功！'); window.location.href='/Zqc/admin/Query.jsp' </script>");//
		}else{
			out.println("<script> alert('密码错误，请重新输入！'); window.location.href='AdminOperationServlet?method=all' </script>");//
		}
	}


	private void QueryByName(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		  StudentDaoImpl stuImpl=new StudentDaoImpl();
		    List<Students> list =new ArrayList<Students>();
		   list= stuImpl.QueryByName(name);
		   request.setAttribute("list", list);
		   request.getRequestDispatcher("admin/Query.jsp").forward(request, response);
		
	}
	private void QueryByDepartment(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String department=request.getParameter("department");
		  StudentDaoImpl stuImpl=new StudentDaoImpl();
		    List<Students> list =new ArrayList<Students>();
		   list= stuImpl.QueryByDepartment(department);
		   request.setAttribute("list", list);
		   request.getRequestDispatcher("admin/Query.jsp").forward(request, response);
	}


	private void QueryAll(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  StudentDaoImpl stuImpl=new StudentDaoImpl();
		    List<Students> list =new ArrayList<Students>();
		   list= stuImpl.QueryStudent();
		   request.setAttribute("list", list);
		   request.getRequestDispatcher("admin/Query.jsp").forward(request, response);
	}

}
