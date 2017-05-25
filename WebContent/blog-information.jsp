<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.lhf.model.BlogInfo" %>
<%@page import="com.lhf.dao.Blog" %>
<%@page import="com.lhf.model.ClassInfo" %>
<%@page import="com.lhf.dao.Class" %>
<%@page import="com.lhf.model.CommentInfo" %>
<%@page import="com.lhf.dao.Comment" %>
<%@page import="com.lhf.common.DataValidator" %>
<%@page import="com.lhf.common.DataConverter" %>
<%@page import="com.lhf.common.Utility" %>

<%
int id = DataConverter.toInt(request.getParameter("id"));
Blog blog = new Blog();
BlogInfo info = blog.getBlogInfo(id);
if (info == null) {
	out.println("<script>alert('博文ID有误');window.location.href('index.jsp');</script>");
}
//获得博文分类 
Class cls = new Class();
List<ClassInfo> clist = cls.getList();
 %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博文详细页面</title>
eta name="keywords" content="" />
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
    
		<div class="post">
			<h1 class="title"><%=info.getTitle() %></h1>
			<p class="byline"><small><%=info.getCreatedtime()%> </small></p>
			<div class="entry">
				<p><%=DataValidator.serverHtmlDecode(info.getContext()) %></p>
			</div>
			<p class="meta"><a href="#" class="more">分类：<%=info.getClassName()%></a> </p>
		</div>
		<a name="comment" id="comment"></a>
		
	<p class="meta">评论：</p><br>
	<%
	 	Comment comment = new Comment();
	 	List<CommentInfo> cmlist =comment.getListByBlogId(id);	
	 	for (CommentInfo cminfo : cmlist) {
	 		out.println(cminfo.getContext() +"<br>"  );
	 		out.println(cminfo.getCreatedtime() +"&nbsp;&nbsp;&nbsp;&nbsp;"+cminfo.getUsername() +"<br><hr>" );
	 	}
	%>
		
	<jsp:include page="comment.jsp">
	<jsp:param value="<%=id%>" name="id"/>
	</jsp:include>
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