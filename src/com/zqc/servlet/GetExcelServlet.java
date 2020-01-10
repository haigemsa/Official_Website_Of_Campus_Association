package com.zqc.servlet;

import java.io.IOException;


import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zqc.util.WriteExcel;


public class GetExcelServlet extends HttpServlet {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
			}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	//新生报名信息表.xls
		ServletContext application = this.getServletContext();
		String path=application.getRealPath("admin/excelFile/FreshmanInformation.xls");	
		//System.out.println(path);
		WriteExcel.writeDbtoExcel("student",path);
		request.getRequestDispatcher("admin/Excel.jsp").forward(request, response);
	}

}
