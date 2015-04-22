<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
<title>维诺科技有限公司</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background-image: url("img/bg.png");
	background-size:1400px 900px;
}

.login_box {
	position: absolute; /*层漂浮*/
	top: 50%;
	left: 50%;
	width: 426px;
	height: 330px;
	margin-top: -200px; /*注意这里必须是DIV高度的一半*/
	margin-left: -220px; /*这里是DIV宽度的一半*/
	background-image: url("img/login_bg.png");
}
input{
	background-color:transparent;
	border-style:none;
	font-size: 20px;
}
</style>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
$(window).load(function() {
	$('.commit').click(function(){
		$('form').submit();
	});
});
function rushPic(obj){
	var timenow = new Date().getTime();  
	obj.src="autoImage.action?p=" + timenow;
}
</script>
</head>
<body>

	<div class='login_box'>
		<div style="text-align: center;height:43px;width: 100%;line-height: 43px;font-weight: bold;color: #FFFFFF; font-size: 40px">Welcome</div>
		<s:form id='loginForm' name="loginForm" action="login.action" method="post">
			<div style="width: 100%;height: 215px;">
				<input style="margin-top:32px;margin-left: 97px;height: 45px;width: 283px " title='用户名' placeholder='用户名' type="text" name="userName">
				<input style="margin-top:10px;margin-left: 97px;height: 45px;width: 283px " title='密码' placeholder='密码' type="password" name="password">
				<input style="margin-top:10px;margin-left: 47px;height: 45px;width: 150px "  title='验证码' placeholder='验证码' type="text" name="flag">
				<img class="pic" height="45px" width="100px" src="autoImage.action" title="刷新" onclick="rushPic(this);"/>
			</div>
			<div style="width: 100%;height: 70px;border-color: red">
				<div class="commit" style="cursor: pointer;background-color:#46A3FF;margin-left: auto;margin-right: auto;width: 200px;height: 50px;line-height: 50px;text-align: center;border-radius: 8px 8px 8px 8px;font-weight: bold;color: #FFFFFF; font-size: 20px">
				登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录
				</div>
			</div>	
			<s:actionerror/>	
		</s:form>
	</div>
</body>
</html>