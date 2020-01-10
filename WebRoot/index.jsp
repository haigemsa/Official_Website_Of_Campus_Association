<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,minimum-scale=1.0, maximum-scale=2.0" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
 <%-- // <jsp:forward page="Website/index.html" ></jsp:forward>
   --%>
   <%response.sendRedirect("/Zqc/Website/index.html"); %>
   <%--      <form action="AlipayServlet" method="post">
       姓名： <input type="text" name="name" placeholder="请输入姓名" value="${stu.name}"/></br>
      性别：   男&nbsp;<input type="radio" name="sex" value="男" />&nbsp;&nbsp; 女&nbsp;<input type="radio" name="sex"  value="女"/></br>
  学院：<select name="college"> 
   <option value="电子信息学院">电子信息学院</option>
   <option value="商学院">商学院</option>
   <option value="管理学院">管理学院</option>
   <option value="人文艺术学院">人文艺术学院</option>s
  </select></br>
 班级:  <input type="text" name="classes" /></br>
 部门：        <select name="department"> 
   <option value="办公室">办公室</option>
   <option value="文秘部">文秘部</option>
   <option value="行政会务部">行政会务部</option>
   <option value="宣传组织部">宣传组织部</option>
   <option value="礼仪模特部">礼仪模特部</option>
  </select></br>
 QQ: <input type="text" name="qq" /></br>
  联系电话:<input type="text" name="telphone" /></br>
  <input type="submit" value="提交" />
 </form> --%>
  </body>
</html>
