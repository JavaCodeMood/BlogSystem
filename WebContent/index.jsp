<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="music.jsp" %>
<%@page import="com.lhf.model.BlogInfo" %>
<%@page import="com.lhf.dao.Blog" %>
<%@page import="com.lhf.model.ClassInfo" %>
<%@page import="com.lhf.dao.Class" %>
<%@page import="com.lhf.common.DataValidator" %>
<%@page import="com.lhf.common.Utility" %>
<%
Blog blog = new Blog();
List<BlogInfo> list = blog.getList(null);
//获得博文分类 
Class cls = new Class();
List<ClassInfo> clist = cls.getList();
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>博客首页</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<!-- start header -->
<%@ include file="top.jsp" %>
<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
    <%
				for (BlogInfo info : list) { //遍历输出list集合中的数据
			%>
		<div class="post">
			<h1 class="title"><a href="blog-information.jsp?id=<%=info.getId()%>"><%=info.getTitle()%></a></h1>
			<p class="byline"><small><%=info.getCreatedtime()%> </small></p>
			<div class="entry">
				<p><%=Utility.Substring(DataValidator.removeHtml(info.getContext()),300) %></p>
			</div>
			<p class="meta">
			<a href="#" class="more">分类：<%=info.getClassName()%></a> &nbsp;&nbsp;&nbsp;
			<a href="blog-information.jsp?id=<%=info.getId()%>" class="more">详情</a> &nbsp;&nbsp;&nbsp; 
			<a href="blog-information.jsp?id=<%=info.getId()%>#comment" class="comments">我要评论</a></p>
		</div>
	<%
				}
			%>	
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	<div id="sidebar">
		<ul>
			<li>
				<h2>日志分类</h2>
				<ul>
				<%for (ClassInfo cinfo : clist) {%>
					<li><a href="blog-list.jsp?classId=<%=cinfo.getId()%>"><%=cinfo.getName()%></a></li>
				<%}%>
				</ul>
			</li>
			<li><a href="/BlogSystem/manager/login.jsp">后台管理</a></li>
			
		</ul>
	</div>
	<!-- end sidebar -->
</div>
<div style="clear: both; height: 30px">&nbsp;</div>
<!-- end page -->
<div id="footer">
	<p>&copy;2017 All Rights Reserved. &nbsp;&bull;&nbsp; Designed by <a href="http://www.freecsstemplates.org/">Free CSS Templates</a></p>
</div>
</body>
</html>