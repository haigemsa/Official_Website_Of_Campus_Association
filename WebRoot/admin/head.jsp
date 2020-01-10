<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
   
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<link rel="stylesheet" type="text/css" href="../css/public.css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/public.js"></script>
  </head>
  
  <body>
  <!-- 头部 -->
	 <div class="head">
		  <div class="headL">
			<img class="headLogo" height="60%" width="60%" src="img/logo2.png"/> 
		</div> 
		<div class="headR">
			<span class="p1" style="color:#FFF">欢迎：${user.user_Name} <a href="/Zqc/Website/index.html" target="_parent">【退出】</a></span>	
		</div> 
	</div> 
  </body>
</html>
