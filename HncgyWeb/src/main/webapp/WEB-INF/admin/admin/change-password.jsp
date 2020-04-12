<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="../../commonCss.jsp"></jsp:include>
<jsp:include page="../../commonJs.jsp"></jsp:include>
<body>
	<article class="page-container" id="box">
	<form class="form form-horizontal" id="form-change-password">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>账户：</label>
			<div class="formControls col-xs-8 col-sm-9" v-text="admin.account">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>新密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" class="input-text" autocomplete="off"
					placeholder="不修改请留空" name="newpassword" id="newpassword">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>确认密码：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="password" class="input-text" autocomplete="off"
					placeholder="不修改请留空" name="newpassword2" id="new-password2">
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="submit" value="保存"
					style="width: 370px">
			</div>
		</div>
	</form>
	</article>
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript">
	var vm = new Vue(
			{
				el : "#box",
				data : {
					admin : {
						id : -1,
						account : "",
						password : ""
					}
				},
				methods : {
					updatePass : function() {
						this.$http
								.post(
										"${pageContext.request.contextPath}/admin/update/password",
										this.admin, {
											emulateJSON : true
										})
								.then(
										function(res) {
											if (res.bodyText == "success") {
												layer.msg("修改成功");
											} else {
												layer.msg("修改异常");
											}
											var index = parent.layer
													.getFrameIndex(window.name);
											parent.layer.close(index);
										})
					}
				}
			});
	var id = localStorage.id;
	var account = localStorage.account;
	vm.admin.id = id;
	vm.admin.account = account;
	$(function() {
		$("#form-change-password").validate({
			rules : {
				newpassword : {
					required : true,
					minlength : 6,
					maxlength : 16
				},
				newpassword2 : {
					required : true,
					minlength : 6,
					maxlength : 16,
					equalTo : "#newpassword"
				},
			},
			messages : {
				newpassword : {
					required : "请输入密码",
					minlength : "最短为6为",
					maxlength : "最长为16位"
				},
				newpassword2 : {
					required : "请再次输入密码",
					minlength : "最短为6为",
					maxlength : "最长为16位",
					equalTo : "两次输入不一至"
				}

			},
			submitHandler : function(form) {
				vm.admin.password = $("#new-password2").val();
				vm.updatePass();
			}
		});
	});
</script>
</html>