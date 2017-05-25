<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="islogin.jsp"%>
<%@page import="com.lhf.model.BlogInfo,com.lhf.dao.Blog"%>
<%
	request.setCharacterEncoding("utf-8");
	Blog blog = new Blog(); //创建com.lhf.dao.Blog的对象命名为blog
	String keyword = request.getParameter("keyword");
	List<BlogInfo> list = blog.getList(keyword);//通过blog对象调用方法getList()获取博文列表信息,该方法返回一个List集合
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博文管理</title>
</head>
<body>
	<p>当前位置：博文管理</p>
	<form id="form1" name="form1" method="post" action="blog-manage.jsp">
		查询条件：博文标题 <input type="text" name="keyword" id="keyword" /> <input
			type="submit" name="button" id="button" value="查询" />
	</form>
	<table width="98%" border="1">
		<tr>
			<td>博文标题</td>
			<td>所属分类</td>
			<td>发布时间</td>
			<td>操作</td>
		</tr>
		<%
			for (BlogInfo info : list) { //遍历输出list集合中的数据
		%>
		<tr>
			<td><%=info.getTitle()%></td>
			<td><%=info.getClassName()%></td>
			<td><%=info.getCreatedtime()%></td>
			<td>
			<a href="blog-edit.jsp?id=<%=info.getId()%>&action=edit">编辑</a>| 
			<a href="blog-delete.jsp?id=<%=info.getId()%>">删除</a> | 
			<ahref="comment-manage.jsp?blogid=<%=info.getId()%>">评论</a>
			</td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>