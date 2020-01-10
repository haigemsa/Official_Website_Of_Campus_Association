package com.zqc.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EncodingFilter implements Filter {
	String encoding=null;

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		HttpServletRequest request =(HttpServletRequest)arg0;
		HttpServletResponse response =(HttpServletResponse)arg1;
		request.setCharacterEncoding(encoding);
		response.setCharacterEncoding(encoding);
		arg1.setContentType("text/html;charset="+encoding);
		arg2.doFilter(request, response);

		
		
		
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		encoding=arg0.getInitParameter("Encoding");

	}

}
