<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.lhf.common.MD5"%>
<%@page import="com.lhf.model.UsersInfo"%>
<%@page import="com.lhf.dao.Users"%>
<%@page import="com.lhf.model.BlogInfo"%>
<%@page import="com.lhf.dao.Blog"%>
<%@page import="com.lhf.model.ClassInfo"%>
<%@page import="com.lhf.dao.Class"%>
<%@page import="com.lhf.common.DataValidator"%>
<%@page import="com.lhf.common.Utility"%>

<%
	request.setCharacterEncoding("utf-8");
	String action = request.getParameter("action");
	UsersInfo info = new UsersInfo();
	Users user = new Users();
	if ("reg".equals(action)) {
		if (user.isExistUsersInfo(request.getParameter("txtUserName")))
			out.println("<script>alert('用户已存在');window.location.href('register.jsp');</script>");
		else

		{
			info.setUsername(request.getParameter("txtUserName"));
			info.setPassword(MD5.Encrypt(request.getParameter("txtPassword")));
			info.setEmail(request.getParameter("txtEmail"));
			info.setPower("user");
			user.insert(info);
			out.println("<script>alert('注册成功');window.location.href('index.jsp');</script>");
		}
	}

	//获得博文分类 
	Class cls = new Class();
	List<ClassInfo> clist = cls.getList();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
	<!-- start header -->
	<div id="header">
		<div id="logo">
			<h1><a href="http://www.imooc.com/u/1323320/articles">霜花似雪的博客</a></h1>
		    <h2><a href="link.html">友情链接</a></h2>
		</div>
		<div id="menu">
			<ul>
				<li class="active"><a href="index.jsp" target="_self">首页</a></li>
				<li><a href="about.jsp">关于我</a></li>
			</ul>
		</div>
	</div>
	<!-- end header -->
	<div id="gallery">
		<div id="top-photo">
			<p>
				<a href="#"><img src="images/img08.jpg" alt="" width="830"
					height="300" /> </a>
			</p>
		</div>
	</div>

	<!-- start page -->
	<div id="page">
		<!-- start content -->
		<div id="content">
			<form id="form1" name="form1" method="post"
				action="register.jsp?action=reg">
				<table width="100%" border="0">
					<tr>
						<td>用户名</td>
						<td><input type="text" name="txtUserName" id="txtUserName"
							width="500px" /></td>
					</tr>

					<tr>
						<td>密码</td>
						<td><input type="password" name="txtPassword"
							id="txtPassword" width="500px" /></td>
					</tr>
					<tr>
						<td>确认密码</td>
						<td><input type="password" name="txtPassword2"
							id="txtPassword2" width="500px" /></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input type="text" name="txtEmail" width="500px" /></td>
					</tr>

					<tr>
						<td colspan="2">
						<input type="submit" name="button" id="button" value="注册" /> 
						<input type="reset" name="button2" id="button2" value="重置" /></td>
					</tr>
				</table>
			</form>
		</div>
		<!-- end content -->
		<!-- start sidebar -->
		<div id="sidebar">
			<ul>
				<li>
					<h2>日志分类</h2>
					<ul>
						<%
							for (ClassInfo cinfo : clist) {
						%>
						<li><a href="blog-list.jsp?classId=<%=cinfo.getId()%>"><%=cinfo.getName()%></a>
						</li>
						<%
							}
						%>
					</ul>
				</li>

			</ul>
		</div> 
		<!-- end sidebar -->
	</div>
	<div style="clear: both; height: 30px">&nbsp;</div>
	<!-- end page -->
	<div id="footer">
		<p>
			&copy;2017 All Rights Reserved. &nbsp;&bull;&nbsp; Designed by <a
				href="http://www.freecsstemplates.org/">Free CSS Templates</a>
		</p>
	</div>
</body>
</html>