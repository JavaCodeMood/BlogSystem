<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@page import="com.lhf.common.DataValidator"%>
<%@page import="com.lhf.common.Utility"%>
<%@page import="com.lhf.dao.Class"%>
<%@page import="com.lhf.model.ClassInfo"%>

<%
	//获得博文分类 
	Class cls = new Class();
	List<ClassInfo> clist = cls.getList();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>关于我</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link href="default.css" rel="stylesheet" type="text/css"
			media="screen" />
	</head>
	<body>	
     <%@ include file="top.jsp" %>
		<!-- start page -->
		<div id="page">
			<!-- start content -->
			<div id="content">
				这是我的个人博客，主要用于记录一些学习笔记，资料等，欢迎大家浏览与浏览！
			</div>
			<!-- end content -->
			<!-- start sidebar -->
			<div id="sidebar">
				<ul>
					<li>
						<h2>
							日志分类
						</h2>
						<ul>
							<%
								for (ClassInfo cinfo : clist) {
							%>
							<li>
								<a href="blog-list.jsp?classId=<%=cinfo.getId()%>"><%=cinfo.getName()%></a>
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
		<div style="clear: both; height: 30px">
			&nbsp;
		</div>
		<!-- end page -->
		<div id="footer">
			<p>
				&copy;2017 All Rights Reserved. &nbsp;&bull;&nbsp; Designed by
				<a href="http://www.freecsstemplates.org/">Free CSS Templates</a>
			</p>
		</div>
	</body>
</html>