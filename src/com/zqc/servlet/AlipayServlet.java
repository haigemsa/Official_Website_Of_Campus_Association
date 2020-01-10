package com.zqc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradeWapPayRequest;
import com.zqc.config.AlipayConfig;
import com.zqc.entity.Students;
import com.zqc.impl.StudentDaoImpl;
import com.zqc.util.*;

public class AlipayServlet extends HttpServlet {

	
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
		PrintWriter out=response.getWriter();;
		HttpSession session=request.getSession();
		session.setMaxInactiveInterval(2);
		int flag=0;
		StudentDaoImpl stuImpl=new StudentDaoImpl();
		Students stu=new Students();
		stu.setOrderNumber(OrderNumber.getNumber());
		stu.setName(request.getParameter("name"));
		//System.out.println(stu.getName());
		stu.setSex(request.getParameter("sex"));
		//System.out.println(stu.getSex());
		stu.setCollege(request.getParameter("college"));
		//System.out.println(stu.getCollege());
		stu.setClasses(request.getParameter("classes"));
	//	System.out.println(stu.getClasses());
		stu.setDepartment(request.getParameter("department"));
	//	System.out.println(stu.getDepartment());
		stu.setQq(request.getParameter("qq"));
		//System.out.println(stu.getQq());
		stu.setTelphone(request.getParameter("telphone"));
		//System.out.println(stu.getTelphone());
		stu.setStatus1("未报名");
		 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		 String datetime=df.format(new Date());
		 stu.setDatetime(datetime);
		flag=stuImpl.insertStudent(stu);
		if(flag==0)
		{
			session.setAttribute("stuapp", stu);
			out.println("<script> alert('您已报名或者填写错误，请重新填写！'); window.location.href='/Zqc/Website/sign.jsp' </script>");//
			return;
		}
		String subject=stu.getName()+"+政青春学生团队报名费";
		
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.URL, AlipayConfig.APPID,
		AlipayConfig.RSA_PRIVATE_KEY,AlipayConfig.FORMAT,AlipayConfig.CHARSET, AlipayConfig.ALIPAY_PUBLIC_KEY,AlipayConfig.SIGNTYPE); 
		AlipayTradeWapPayRequest alipayRequest = new AlipayTradeWapPayRequest();
		alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
		alipayRequest.setReturnUrl(AlipayConfig.return_url);
	    alipayRequest.setBizContent("{" +
	    		"    \"out_trade_no\":\""+stu.getOrderNumber()+"\","+
	    		"    \"total_amount\":5,"+
	    		"    \"subject\":\""+subject+"\"," +
	    		"    \"product_code\":\"QUICK_WAP_WAY\"" +
	    		"  }");//填充业务参数
	    String form;
		try {
			form = alipayClient.pageExecute(alipayRequest).getBody();
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write(form);//直接将完整的表单html输出到页面
			response.getWriter().flush();
			} catch (AlipayApiException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} //调用SDK生成表单	
	}
}
