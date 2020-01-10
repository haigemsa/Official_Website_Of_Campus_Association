<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>登陆</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/page.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>

  </head>
  
 <body>
 	<% request.setCharacterEncoding("utf-8");
 	   response.setCharacterEncoding("utf-8");%>

	<form action="ValidateServlet" method="post">
	<!-- 登录body -->
	<div class="logDiv">
		<img class="logBanner" src="img/logBanner.png" />
		<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip" align="center">
				<p class="p1">团队后台信息管理</p></br></br>
			<!-- 	<p class="p1">登&nbsp;&nbsp;&nbsp;&nbsp;录</p> -->
			</div>
			<!-- 输入框 -->
			<div class="lgD">
		
				<img class="img1" src="img/logName.png" /><input type="text" name="user_Name"
					placeholder="输入用户名" />
			</div>
			<div class="lgD">
				<img class="img1" src="img/logPwd.png" /><input type="password" name="user_Password"
					placeholder="输入用户密码" />
			</div>
			<div class="logC">
				<a target="_self"><button type="submit">登 录</button></a>
			</div>
			
		</div>
	</div>
	<!-- 登录body  end -->
</form>
	<!-- 登录页面底部 -->
	<div class="logFoot">
		<p class="p1">版权所有：湖南信息学院办公室政青春学生团队</p>
		<p class="p2">联系QQ：1952219401</p>
	</div>
	<!-- 登录页面底部end -->

</body>
<script type="text/javascript">
	var flag="${user.mass}";
	if(flag!="")
	alert("${user.mass}");
</script>
<%session.removeAttribute("user"); %>
</html>
