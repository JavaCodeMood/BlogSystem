<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Action" %>
<%@page import="com.lhf.common.MD5" %>
<%@page import="com.lhf.dao.Users" %>
<%@page import="com.lhf.model.CommentInfo" %>
<%@page import="com.lhf.dao.Comment" %>
<%@page import="com.lhf.common.DataValidator" %>
<%@page import="com.lhf.common.DataConverter" %>
<%@page import="com.lhf.common.Utility" %>

<%
request.setCharacterEncoding("utf-8");
if ("login".equals(request.getParameter("action")))
{
	Users users = new Users();
	String username = request.getParameter("txtUserName");
	String password = MD5.Encrypt(request.getParameter("txtPassword"));
	if (users.idExist(username, password)) {
		Utility.writeCookie(response, "user", username);
		response.sendRedirect("blog-information.jsp?id="+DataConverter.toInt(request.getParameter("id")));
		/* out.println(" <script>alert('用户名密码有误');window.location.href('blog-information.jsp?id="+DataConverter.toInt(request.getParameter("id"))+"');</script>"); */
	} else {
		out.println(" <script>alert('用户名密码有误');window.location.href('blog-information.jsp?id="+DataConverter.toInt(request.getParameter("id"))+"');</script>");
		/* Utility.writeCookie(response, "user", username);
		response.sendRedirect("blog-information.jsp?id="+DataConverter.toInt(request.getParameter("id"))); */
	}
}
if ("save".equals(request.getParameter("action")))
{
	Comment comment = new Comment();
    CommentInfo info= new CommentInfo();
    info.setBlogid(DataConverter.toInt(request.getParameter("id")));
    info.setContext(request.getParameter("txtContext"));
    info.setUsername(Utility.readCookie(request,"user"));
    comment.insert(info); 
    response.sendRedirect("blog-information.jsp?id="+DataConverter.toInt(request.getParameter("id")));
}
%>

<%
	String data = Utility.readCookie(request, "user");

	if (DataValidator.isNullOrEmpty(data)) {
		
%>
<form id="form1" name="form1" method="post" action="comment.jsp?action=login">
  <table width="600" border="0">
    <tr>
      <td>用户名</td><input name="id" type="hidden" id="id" value="<%=request.getParameter("id")%>"/>
      <td><input name="txtUserName" type="text" id="txtUserName" size="12" /></td>
      <td>密码</td>
      <td><input name="txtPassword" type="password" id="txtPassword" size="12" /></td>
      <td>
      <button type="submit" name="button" id="button" value="提交" >提交</button>
      <a href="register.jsp" style="color:black">注册</a>
      </td>
    </tr>
  </table>
</form>
<%}else{ %>

欢迎您：<% request.setCharacterEncoding("utf-8");%><%=Utility.readCookie(request,"user") %> <a href="logout.jsp">退出</a>
<form name="commentForm" method="post" action="comment.jsp?action=save">
<input name="id" type="hidden" id="id" value="<%=request.getParameter("id")%>"/>
		<textarea rows="4" cols="50" name="txtContext"></textarea>
		<input type="submit" name="button"  value="回复">
</form>
<%}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>评论博文</title>
<style type="text/css">
#form1{
  background:#E7ECBF;
  color:red;
  height:40px;
  font-size:20px;
}
input{
  height:25px;
  width:100px;
}
button{
  height:30px;
  width:60px;
  background:#ECD9BF;
}
</style>
</head>
<body>

</body>
</html> 