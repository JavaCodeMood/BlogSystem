<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
<head>
<title>管理员登录页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link type="text/css" rel="stylesheet" href="../css/login.css">



<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>

<script type="text/javascript">
	function check(form) {
		if (document.loginform.AdminName.value == "") {
			alert("请输入管理员名");
			document.loginform.AdminName.focus();
			return false;
		}
		if (document.loginform.Password.value == "") {
			alert("请输入登录密码");
			document.loginform.Password.focus();
			return false;
		}
	}
	window.onload = function() {
		document.getElementById("AdminName").focus();
		document.getElementById("AdminName").value = "";
		document.getElementById("Password").value = "";
	}
</script>
<style type="text/css">
.login_bj {
	width: 100%;
	height: 100%;
	background: url(../images/bj_zhuce.jpg) no-repeat top center;
	/*background-image:url('../adminjsps/admin/images/bj_zhuce.jpg') no-repeat top center;*/
}

.btn_zhuce {
	width: 100px;
	height: 45px;
	font-size: 20px;
	font-weight: 300;
	color: white;
	background-color: #FF4500;
}
</style>
</head>

<body class="login_bj">
	<p style="font-weight: 900; color: red;">${msg }</p>
	<div class="zhuce_body">
		<div class="zhuce_kong login_kuang">
			<div class="zc">
				<div class="bj_bai">
					<h2 style="text-align: center">博 客 系 统 管 理 员 登 录</h2>
					<form name="loginform" action="./login-check.jsp" method="post"
						onsubmit="return check(this)">
						<input type="hidden" name="method" value="login" /> 账户：<input
							type="text" name="AdminName" value="" id="adminname"
							class="kuang_txt" placeholder="账户" /><br />
						<br /> 密码：<input type="password" name="Password" id="adminpwd"
							class="kuang_txt" placeholder="密码" /><br /> <br /> <input
							type="submit" value="登录" class="btn_zhuce" />

					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
