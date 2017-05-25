<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="islogin.jsp"%>
<%@page import="com.lhf.common.DataConverter"%>
<%@page import="com.lhf.dao.Users"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除用户</title>
</head>
<body>
<%
	Users user = new Users(); //创建对象
	int result = 0;
	result = user.delete(request.getParameter("username"));
	if (result == 1) {
		out.println("<script>alert('用户删除成功');window.location.href('users-manage.jsp');</script>");
	} else {
		out.println("<script>alert('用户删除失败');window.location.href('users-manage.jsp');</script>");
	}
%>
</body>
</html>