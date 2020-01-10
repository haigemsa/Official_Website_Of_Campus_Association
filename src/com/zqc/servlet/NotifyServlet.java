package com.zqc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
import com.zqc.config.AlipayConfig;
import com.zqc.impl.StudentDaoImpl;

public class NotifyServlet extends HttpServlet {

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
			System.out.println("异步通知");
			PrintWriter out  = response.getWriter();
			request.setCharacterEncoding("utf-8");//乱码解决，这段代码在出现乱码时使用
			//获取支付宝POST过来反馈信息
			Map<String,String> params = new HashMap<String,String>();
			Map requestParams = request.getParameterMap();
			for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
				String name = (String) iter.next();
				String[] values = (String[]) requestParams.get(name);
				String valueStr = "";
				for (int i = 0; i < values.length; i++) {
					valueStr = (i == values.length - 1) ? valueStr + values[i]
							: valueStr + values[i] + ",";
			}
			params.put(name,valueStr);
			}
			//获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以下仅供参考)//
			//商户订单号

			String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
			System.out.println(out_trade_no);
			//支付宝交易号
			//System.out.println(request.getParameter("buyer_logon_id"));
		//String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");
			//System.out.println(trade_no);
			//交易状态
			String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"),"UTF-8");
			
			//获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以上仅供参考)//
			//计算得出通知验证结果
			//boolean AlipaySignature.rsaCheckV1(Map<String, String> params, String publicKey, String charset, String sign_type)
			boolean verify_result;
			try {
				verify_result = AlipaySignature.rsaCheckV1(params,AlipayConfig.ALIPAY_PUBLIC_KEY, AlipayConfig.CHARSET, "RSA2");
				if(verify_result){//验证成功
					//////////////////////////////////////////////////////////////////////////////////////////
					//请在这里加上商户的业务逻辑程序代码

					//——请根据您的业务逻辑来编写程序（以下代码仅作参考）——
					System.out.println("验证成功");
					if(trade_status.equals("TRADE_FINISHED")){
						//判断该笔订单是否在商户网站中已经做过处理
							//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
							//请务必判断请求时的total_fee、seller_id与通知时获取的total_fee、seller_id为一致的
							//如果有做过处理，不执行商户的业务程序
							
						//注意：
						//如果签约的是可退款协议，退款日期超过可退款期限后（如三个月可退款），支付宝系统发送该交易状态通知
						//如果没有签约可退款协议，那么付款完成后，支付宝系统发送该交易状态通知。
					} else if (trade_status.equals("TRADE_SUCCESS")){
						//判断该笔订单是否在商户网站中已经做过处理
							//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
							//请务必判断请求时的total_fee、seller_id与通知时获取的total_fee、seller_id为一致的
							//如果有做过处理，不执行商户的业务程序
							StudentDaoImpl stuImpl=new StudentDaoImpl();
							stuImpl.reviseStudent(out_trade_no);
						//注意：
						//如果签约的是可退款协议，那么付款完成后，支付宝系统发送该交易状态通知。
					}

					//——请根据您的业务逻辑来编写程序（以上代码仅作参考）——
					out.println("success");	//请不要修改或删除
					//////////////////////////////////////////////////////////////////////////////////////////
				}else{//验证失败
					System.out.println("验证失败");
					out.println("fail");
				}
			} catch (AlipayApiException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	 
}
}
