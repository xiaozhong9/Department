<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>游客登录页面</title>
<meta
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0"
	name="viewport" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta content="telephone=no" name="format-detection" />
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/amazeui.min.css"
	rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/layui.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/layer.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/amazeui.min.js"></script>
<title>游客验证</title>
<style type="text/css">
.aui-flex input {
	font-size: 1.89rem;
}
</style>
</head>
<body>

	<div data-am-widget="tabs" class="am-tabs am-tabs-d2">
		<ul class="am-tabs-nav am-cf">
			<li class="am-active"><a
				href="http://127.0.0.1:8080/[data-tab-panel-0]">邮箱</a></li>
			<li class=""><a href="http://127.0.0.1:8080/[data-tab-panel-1]">手机</a>
			</li>

		</ul>
		<div class="am-tabs-bd"
			style="padding: 0px; width: 100%; heigin: 400px; border: none; touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
			<div data-tab-panel-0 class="am-tab-panel am-active"
				style="padding: 0; width: 100%; margin: 0px;">



				<div class="aui-sign-form" style="width: 100%; height: 230px;">
					<form action="" class="f">
						<div class="aui-flex" style="height: 50px">
							<i class="icon icon-email"></i>
							<div class="aui-flex-box">
								<input type="text" style="font-size: 1.89rem;" id="email"
									autocomplete="off" placeholder="邮箱">
							</div>
						</div>
						<div class="aui-flex" style="height: 50px">
							<i class="icon icon-code"></i>
							<div class="aui-flex-box">
								<input type="text" style="font-size: 1.89rem;" id="code1"
									autocomplete="off" placeholder="输入验证码">
							</div>
							<div class="aui-code">
								<input id="btnSendCode1" type="button" class="btn btn-default"
									value="获取验证码" maxlength="6" onClick="sendMessage1()" />
							</div>
						</div>
						<button class="aui-sign-login"
							style="font-size: 1.89rem; height: 4.5rem;" id="btn"
							type="button" disabled="disabled">立即验证</button>
					</form>

				</div>

			</div>


			<div data-tab-panel-1 class="am-tab-panel "
				style="padding: 0; width: 100%;">

				<div class="aui-sign-form" style="width: 100%; height: 230px;">
					<form action="" class="f">
						<div class="aui-flex" style="height: 50px">
							<i class="layui-icon" style="font-size:1.98rem;line-height:1.98rem;">&#xe678;</i>
							<div class="aui-flex-box">
								<input type="text" style="font-size: 1.89rem;" id="phone"
									autocomplete="off" placeholder="手机号">
							</div>
						</div>
						<div class="aui-flex" style="height: 50px">
							<i class="icon icon-code"></i>
							<div class="aui-flex-box">
								<input type="text" style="font-size: 1.89rem;" id="code2"
									autocomplete="off" placeholder="输入验证码">
							</div>
							<div class="aui-code">
								<input id="btnSendCode2" type="button" class="btn btn-default"
									value="获取验证码" maxlength="6" onClick="sendMessage2()" />
							</div>
						</div>
						<button class="aui-sign-login"
							style="font-size: 1.89rem; height: 4.5rem;" id="btn1"
							type="button" disabled="disabled">立即验证</button>
					</form>

				</div>

			</div>
		</div>
	</div>

</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript">
	$("#email").keyup(function() {
		var v = $(this).val();
		var boo = emailReg.test(v);
		if (boo) {
			$("#btnSendCode1").css("background", "#0066FF");
			$("#btnSendCode1").css("color", "white");
		} else {
			$("#btnSendCode1").css("background", "");
			$("#btnSendCode1").css("color", "#999999");
		}
	})
	$("#phone").keyup(function() {
		var v = $(this).val();
		var bov = phoneReg.test(v);
		if (bov) {
			$("#btnSendCode2").css("background", "#0066FF");
			$("#btnSendCode2").css("color", "white");
		} else {
			$("#btnSendCode2").css("background", "");
			$("#btnSendCode2").css("color", "#999999");
		}
	})
	
	var phoneReg = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
	var emailReg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
	var count = 60;
	var InterValObj1;
	var InterValObj2;
	var curCount1;
	var curCount2;
	function sendMessage1() {
		curCount1 = count;
		var email = $.trim($('#email').val());
		if (isEmpty(email)) {
			layer.msg("	请输入邮箱！");
			return;
		}
		if (!emailReg.test(email)) {
			layer.msg("请输入正确的邮箱格式");
			return false;
		}
		console.log("邮箱获取验证")
		 $.ajax({
			url : "${pageContext.request.contextPath}/tourist/email/ver",
			type : "post",
			async : false,
			data : {
				"email" : email
			},
			success : function(res) {
				if (res != "") {
					layer.msg("发送成功！");
					$("#btn").removeAttr("disabled");
					$("#btn").css('background-color', "#5f8cd0");
				}
			}
		}) 
		$("#btnSendCode1").attr("disabled", "true");
		$("#btnSendCode1").val(+curCount1 + "秒再获取");
		InterValObj1 = window.setInterval(SetRemainTime1, 1000);

	}
	function sendMessage2() {
		curCount2 = count;
		var phone = $.trim($('#phone').val());
		if (isEmpty(phone)) {
			layer.msg("请输入手机号！");
			return;
		}
		if (!phoneReg.test(phone)) {
			layer.msg("请输入正确的手机格式");
			return false;
		}
		console.log("手机获取验证"+phone)
		 $.ajax({
			url : "${pageContext.request.contextPath}/tourist/phone/ver",
			type : "post",
			async : false,
			data : {
				"phone" : phone
			},
			success : function(res) {
				if (res != "") {
					layer.msg("发送成功！");
					$("#btn1").removeAttr("disabled");
					$("#btn1").css('background-color', "#5f8cd0");
				}
			}
		}) 
		$("#btnSendCode2").attr("disabled", "true");
		$("#btnSendCode2").val(+curCount2 + "秒再获取");
		InterValObj2 = window.setInterval(SetRemainTime2, 1000);

	}
	function SetRemainTime1() {
		if (curCount1 == 0) {
			window.clearInterval(InterValObj1);
			$("#btnSendCode1").removeAttr("disabled");
			$("#btnSendCode1").val("重新发送");
		} else {
			curCount1--;
			$("#btnSendCode1").val(+curCount1 + "秒再获取");
		}
	}
	function SetRemainTime2() {
		if (curCount2 == 0) {
			window.clearInterval(InterValObj2);
			$("#btnSendCode2").removeAttr("disabled");
			$("#btnSendCode2").val("重新发送");
		} else {
			curCount2--;
			$("#btnSendCode2").val(+curCount2 + "秒再获取");
		}
	}
	function isEmpty(obj) {
		if (obj === null || obj === undefined || obj === "") {
			return true;
		}
		return false;
	}
	$("#btn")
			.click(
					function() {
						var email = $("#email").val();
						var code1 = $("#code1").val();
						if (isEmpty(email)) {
							layer.msg("请输入邮箱");
							return false;
						}
						if (isEmpty(code1)) {
							layer.msg("请输入验证码");
							return false;
						}


						console.log("邮箱提交")
						 $.ajax({
									url : "${pageContext.request.contextPath}/tourist/email/verificationCode",
									type : "post",
									data : "code=" + code1 + "&email=" + email,
									success : function(res) {
										if ("success" == res) {
											layer.msg("登录成功", {
												icon : 6
											});
											window.parent.Main.comment = true;
											window.parent.Main.email = email;
											var index = parent.layer
													.getFrameIndex(window.name);
											setTimeout(function(){parent.layer.close(index);},1000)
										} else {
											layer.msg("验证码错误", {
												icon : 6
											});
										}

									},
									error : function() {
										layer.msg("网页异常", {
											icon : 6
										});
									}
								}) 

					})
	$("#btn1").click(
					function() {
						var phone = $("#phone").val();
						var code2 = $("#code2").val();
						if (isEmpty(phone)) {
							layer.msg("请输入手机号1");
							return false;
						}
						if (isEmpty(code2)) {
							layer.msg("请输入验证码");
							return false;
						}
						
						console.log("手机提交")
						 $.ajax({
									url : "${pageContext.request.contextPath}/tourist/phone/verificationCode",
									type : "post",
									data : "code=" + code2 + "&phone=" + phone,
									success : function(res) {
										if ("success" == res) {
											layer.msg("登录成功", {
												icon : 6
											});
											window.parent.Main.comment = true;
											window.parent.Main.phone = phone;
											var index = parent.layer
													.getFrameIndex(window.name);
											setTimeout(function(){parent.layer.close(index);},1000)
											
										} else {
											layer.msg("验证码错误", {
												icon : 6
											});
										}

									},
									error : function() {
										layer.msg("网页异常", {
											icon : 6
										});
									}
								}) 

					})
</script>
</html>