<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.lhf.dao.Comment"%>
<%@page import="com.lhf.model.CommentInfo"%>
<%@page import="com.lhf.common.DataConverter"%>
<%@ include file="islogin.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	Comment comment = new Comment(); //创建com.lhf.dao.Blog的对象,命名为blog
	String keyword = request.getParameter("keyword");
	int blogid = DataConverter.toInt(request.getParameter("blogid"));
	List<CommentInfo> list = comment.getListByBlogId(blogid);//通过blog对象调用方法getList()获取学生列表信息,该方法返回一个List集合
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博文评论</title>
</head>
<body>
	<p>当前位置：评论管理</p>
	<table width="98%" border="1">
		<tr>
			<td>评论内容</td>
			<td>评论人</td>
			<td>评论时间</td>
			<td>操作</td>
		</tr>
		<%
			for (CommentInfo info : list) { //遍历输出list集合中的数据
		%>
		<tr>
			<td><%=Utility.Substring(DataValidator.removeHtml(info.getContext()), 100)%></td>
			<td><%=info.getUsername()%></td>
			<td><%=info.getCreatedtime()%></td>
			<td>
			<a href="comment-delete.jsp?id=<%=info.getId()%>&blogid=<%=info.getBlogid()%>">删除</a>
			</td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>