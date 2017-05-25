<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lhf.common.Utility" %>
<%@ page import="com.lhf.common.DataValidator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登录</title>
</head>
<body>
<%
  String data=Utility.readCookie(request, "admin");
  if(DataValidator.isNullOrEmpty(data)){
	  response.sendRedirect("login.jsp");   //重定向
  }
%>
</body>
</html>