<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.lhf.common.DataValidator"%>
<%@page import="com.lhf.common.Utility"%>

<%
	String data = Utility.readCookie(request, "user");

	if (DataValidator.isNullOrEmpty(data)) {
		response.sendRedirect("index.jsp");
	} else {

		Utility.writeCookie(response, "user", data, 0);
		response.sendRedirect("index.jsp");

	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户退出系统</title>
</head>
<body>

</body>
</html>