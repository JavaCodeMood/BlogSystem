<%@ page language="java" import="java.util.*,net.fckeditor.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="islogin.jsp"%>
<%@page import="com.lhf.common.DataConverter"%>
<%@page import="com.lhf.dao.Class"%>
<%@page import="com.lhf.model.ClassInfo"%>
<%
	request.setCharacterEncoding("utf-8");
	String action = request.getParameter("action");
	String pageAction = "";
	int id = DataConverter.toInt(request.getParameter("id"));
	ClassInfo info = new ClassInfo();
	Class cls = new Class();
	//保存
	if ("update".equals(action) || "insert".equals(action)) {
		if ("update".equals(action)) {
			info = cls.getClassInfo(id);
			if (info == null) {
				out.println("<script>alert('博文ID有误');window.location.href('login.jsp');</script>");
			}
			info.setId(id);

		}

		info.setName(request.getParameter("txtName"));
		info.setSort(DataConverter.toInt(request.getParameter("txtSort")));

		if ("insert".equals(action)) {

			cls.insert(info);

		} else
			cls.update(info);

		response.sendRedirect("class-manage.jsp");

	}

	//编辑
	if ("edit".equals(action) || "add".equals(action)) {
		info = cls.getClassInfo(id);
		if (info == null) {
			// Utility.showErrorMessage(pageContext, "博文ID错误");
		}
		pageAction = "update";
	}

	// 添加
	if ("add".equals(action)) {
		pageAction = "insert";
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博文分类编辑/添加</title>
</head>
<body>
	<p>当前位置：分类编辑/添加</p>
	<form id="form1" name="form1" method="post" action="class-edit.jsp">
		<table width="100%" border="1">
			<tr>
				<td>分类名称</td>
				<td><input type="text" name="txtName" id=""
					txtName"" width="500px" value="<%=info.getName()%>" /></td>
			</tr>

			<tr>
				<td>排序</td>
				<td><input type="text" name="txtSort" id=""
					txtSort"" width="500px" value="<%=info.getSort()%>" /></td>
			</tr>

			<tr>
				<td colspan="2">
				    <input type="submit" name="button" id="button" value="提交" /> 
					<input type="reset" name="button2" id="button2" value="重置" /> 
					<input type="hidden" name="action" value="<%=pageAction%>" /> 
					<input type="hidden" name="id" value="<%=info.getId()%>" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>