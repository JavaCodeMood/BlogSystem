<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.lhf.common.Utility"%>
<%@include file="islogin.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博客后台管理菜单</title>
<style type="text/css">
body {
	background-color: #9AEA87;
	text-align: left;
	font-size:20px;
}
</style>
</head>
<body>
	<table width="256" border="0">
		<tr>
			<td>博客管理系统后台</td>
		</tr>
		<tr>
			<td>欢迎您：<%=Utility.readCookie(request, "user")%> 
			<a href="../logout.jsp" target="_parent">退出</a>
			</td>
		</tr>
		<tr>
			<td>
			<a href="../manager/blog-edit.jsp?action=add"
				target="rightFrame">发布博文</a>
			</td>
		</tr>
		<tr>
			<td><a href="../manager/blog-manage.jsp" target="rightFrame">博文管理</a>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td><a href="../manager/class-edit.jsp?action=add"
				target="rightFrame">添加博文分类</a></td>
		</tr>
		<tr>
			<td><a href="../manager/class-manage.jsp" target="rightFrame">博文分类管理</a>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td><a href="../manager/users-manage.jsp" target="rightFrame">用户管理</a>
			</td>
		</tr>
	</table>
</body>
</html>