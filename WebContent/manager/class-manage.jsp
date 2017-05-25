<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="islogin.jsp"%>
<%@page import="com.lhf.dao.Class"%>
<%@page import="com.lhf.model.ClassInfo"%>
<%
	request.setCharacterEncoding("utf-8");
	Class cls = new Class(); //创建对象
	String keyword = request.getParameter("keyword");
	List<ClassInfo> list = cls.getList();//通过cls对象调用方法getList()获取学生列表信息,该方法返回一个List集合
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博文分类管理</title>
</head>
<body>
	<p>当前位置：分类管理</p>
	<table width="98%" border="1">
		<tr>
			<td>名称</td>
			<td>排序</td>
			<td>操作</td>
		</tr>
		<%
			for (ClassInfo info : list) { //遍历输出list集合中的数据
		%>
		<tr>
			<td><%=info.getName()%></td>
			<td><%=info.getSort()%></td>
			<td>
			<a href="class-edit.jsp?id=<%=info.getId()%>&action=edit">编辑</a>| 
			<a href="class-delete.jsp?id=<%=info.getId()%>">删除</a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>