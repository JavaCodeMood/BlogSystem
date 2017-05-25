<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理登录</title>
<style>
body { margin:0px; padding:0px; background:#fff; color:#1e5394; } /* eaf3ff */
body, div, table{  margin-left:auto; margin-right:auto; }
body, td, div, input{ font-size:9pt; }
.top{ height:100px; }
.main{}
table{ background:#ccc; }
td{ height:20px; line-height:20px; background:#fff; padding:4px; }
td.item{ text-align:right; }
td.input{ text-align:left; }
td.button{ text-align:center; height:40px; }
</style>
<script type="text/javascript">
function check(form){
	if(document.loginform.AdminName.value==""){  
		alert("请输入管理员名");
		document.loginform.AdminName.focus();
		return false;
	}
	if(document.loginform.Password.value==""){
		alert("请输入登录密码");
		document.loginform.Password.focus();
		return false;
	}
}
window.onload=function(){
	document.getElementById("AdminName").focus();
	document.getElementById("AdminName").value="";
	document.getElementById("Password").value="";
}
</script>
</head>
<body>
<div class="top"></div>
<div class="main">
    <form name="loginform" action="./login-check.jsp" method="post" onsubmit="return check(this)">
        <table width="350"height="150px" border="0" cellspacing="1" cellpadding="0">
            <tr>
                <td colspan="2" align="center"><strong>博  客 系 统 管 理 员 登 录</strong></td>
            </tr>
            <tr>
                <td width="101" class="item">管理员名：</td>
                <td width="246" class="input"><input name="AdminName" type="text" id="AdminName" size="30" /></td>
            </tr>
            <tr>
                <td class="item">登录密码：</td>
                <td class="input"><input name="Password" type="password" id="Password" size="30" /></td>
            </tr>
            
            <tr>
                <td colspan="2" class="button"><input type="submit" value=" 登 录 " /></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>