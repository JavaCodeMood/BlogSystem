<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="islogin.jsp"%>
<%@page import="com.lhf.model.UsersInfo"%>
<%@page import="com.lhf.dao.Users"%>
<%
	request.setCharacterEncoding("utf-8");
	Users user = new Users(); //创建com.lhf.model.Users的对象,命名为user
	String keyword = request.getParameter("keyword");
	List<UsersInfo> list = user.getList();//通过user对象调用方法getList()获取学生列表信息,该方法返回一个List集合
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
</head>
<body>
	<p>当前位置：用户管理</p>
	<table width="98%" border="1">
		<tr>
			<td>用户名</td>
			<td>Email</td>
			<td>身份</td>
			<td>操作</td>
		</tr>
		<%
			for (UsersInfo info : list) { //遍历输出list集合中的数据
		%>
		<tr>
			<td><%=info.getUsername()%></td>
			<td><%=info.getEmail()%></td>
			<td><%=info.getPower()%></td>
			<td>
			<a href="users-edit.jsp?username=<%=info.getUsername()%>&action=edit">编辑</a>| 
			<a href="users-delete.jsp?username=<%=info.getUsername()%>">删除</a>
			</td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>