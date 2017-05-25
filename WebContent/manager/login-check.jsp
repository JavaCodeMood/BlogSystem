<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="com.lhf.dao.Users"%>
<%@page import="com.lhf.model.UsersInfo" %>
<%@page import="com.lhf.common.DataValidator" %>
<%@page import="com.lhf.common.Utility" %>
<%@page import="com.lhf.common.MD5" %>

<%
	Users users = new Users();
	String username = request.getParameter("AdminName");
	String password = MD5.Encrypt(request.getParameter("Password"));
	if (users.idExist(username, password)) {
		Utility.writeCookie(response, "admin", username);
		response.sendRedirect("index.html");
	} else {
		out.println(" <script>alert('用户名密码有误');window.location.href('login.jsp');</script>");
	}
%>