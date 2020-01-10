<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body>
 
     <form action="AdminOperationServlet?method=department" method="post">
    &nbsp;&nbsp;&nbsp;&nbsp;      查询的部门:&nbsp;   &nbsp;   &nbsp;   
      <select name="department">
       <option value="办公室">办公室</option>
       <option value="文秘部">文秘部</option>
        <option value="行政会务部">行政会务部</option>
         <option value="宣传组织部">宣传组织部</option>
          <option value="礼仪模特部">礼仪模特部</option>
      </select>&nbsp;<input type="submit" value="查询"> </form>
      <form action="AdminOperationServlet?method=name" method="post">
       请输入查询的姓名:
    <input type="text" name="name"  style="width:90px;">&nbsp;<input type="submit" value="查询"> </form>
    
     <form action="AdminOperationServlet?method=delete" method="post">
      删除所有数据，请输入重置密码:
    <input type="text" name="password"  style="width:90px;">&nbsp;<input type="submit" value="重置"> </form><a class="cks" href="GetExcelServlet">获取Excel表</a>
    
    
    <table border="1px" width="100%" height="5%" align="center">
    <tr align="center">
   <td >序号</td><td >姓名</td><td >性别</td><td >学院</td>
    <td >班级</td><td >意向部门</td><td >QQ</td><td >电话号码</td><td >报名时间</td>
    <td width="10%">报名状态</tr>
    <%int i=0; %>
     <c:forEach var="stu" items="${list}">
            <tr align="center">
             <td> <c:out value="<%=i++ %>"></c:out></td>
            <td> <c:out value="${stu.name}"></c:out></td>
            <td><c:out value="${stu.sex}"></c:out></td>
            <td><c:out value="${stu.college}"></c:out></td>
            <td><c:out value="${stu.classes}"></c:out></td>
            <td><c:out value="${stu.department}"></c:out></td>
            <td><c:out value="${stu.qq}"></c:out></td>
            <td><c:out value="${stu.telphone}"></c:out></td>
             <td><c:out value="${stu.datetime}"></c:out></td>
           	<c:if test="${stu.status1=='已报名'}">
            <td><font color="green"><c:out value="已缴费"></c:out></font></td>
           </c:if>
            <c:if test="${stu.status1=='未报名'}">
            <td><font color="red"><c:out value="未缴费"></c:out></font></td>
           </c:if>
            </tr>
             </c:forEach>         
    </table>
  </body>
</html>
