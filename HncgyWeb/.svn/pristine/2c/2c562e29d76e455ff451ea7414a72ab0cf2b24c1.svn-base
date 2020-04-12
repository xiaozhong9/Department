<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<jsp:include page="../../commonCss.jsp"></jsp:include>
<title>添加管理员 - 管理员管理 - H-ui.admin v3.1</title>
<meta name="keywords" content="H-ui.admin v3.1,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v3.1，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" id="form-admin-add">
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>管理员：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="text" class="input-text" value="" placeholder="" name="adminName" id="adminName">
		</div>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>账号：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="text" class="input-text" value="" placeholder="" name="account" id="account">
		</div>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>初始密码：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="password" class="input-text" autocomplete="off" value="" placeholder="密码" id="password" name="password">
		</div>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>确认密码：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="password" class="input-text" autocomplete="off"  placeholder="确认新密码" id="password2" name="password2">
		</div>
	</div>
	
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>手机：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="text" class="input-text" value="" placeholder="" id="phone" name="phone">
		</div>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>邮箱：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="text" class="input-text" placeholder="@" name="email" id="email">
		</div>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3">角色：</label>
		<div class="formControls col-xs-8 col-sm-9"> <span class="select-box" style="width:150px;">
			<select class="select" name="adminRole" size="1">
				<option value="1">超级管理员</option>
				<option value="0">管理员</option>
			</select>
			</span> </div>
	</div>
	
	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
			<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
		</div>
	</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去--> 
<jsp:include page="../../commonJs.jsp"></jsp:include>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript">
$(function(){
	
	
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-admin-add").validate({
		rules:{
			adminName:{
				required:true
				
			},
			account:{
				required:true,
				minlength:5,
				maxlength:20,
				remote:{
					url:"accountJudge",
					data:{
						account:function(){
						return $("#account").val();
						}
					},
						type:"POST"
				}
			},
			password:{
				required:true,
				minlength:6,
				maxlength:20
			},
			password2:{
				required:true,
				equalTo: "#password"
			},
			
			phone:{
				required:true,
				isPhone:true
			},
			email:{
				required:true,
				email:true
			},
			adminRole:{
				required:true
			},
			
		},
		messages:{
			adminName:{
				required:"请填写用户名"
				
			},
			account:{
				required:"请输入账号",
				minlength:"你太短了",
				maxlength:"不能这么长哦",
				remote:"账号已存在！"
			},
			password:{
				required:"请填写密码",
				minlength:"不够长",
				maxlenght:"太长了"
			},
			password2:{
				required:"请再次填写密码",
				equalTo: "两次密码不一致"
			},
			
			phone:{
				required:"请填写手机号",
				isPhone:"手机格式不正确！"
			},
			email:{
				required:"请填写邮箱！",
				email:"邮箱格式不正确"
			}
		},
		
		submitHandler:function(form){
			var name = $("#adminName").val();//姓名
			var password = $("#password2").val();//学历
			var account=$("#account").val();
			var phone = $("#phone").val();//历任课程
			var email = $("#email").val();//专业特长
			
			var admin={
					"name":name,
					"account":account,
					"password":password,
					"phone":phone,
					"email":email
			}
			//var formData= new FormData();
			console.log(admin);
			
			$.ajax({
				url: "${pageContext.request.contextPath}/admin/save",
				data:admin,
				traditonal:true,
				type:"POST",
				async:false,
				success:function(res){
					if("success"==res){
						layer.msg('添加成功!',{icon:1,time:1000});
					 	setTimeout("consPage()",1000);
						}
				},
				error:function(){
					layer.msg('error!',{icon:1,time:1000});
				}
			});
			
			
		}
	});
});

function consPage(){
	var index=parent.layer.getFrameIndex(window.name);
	parent.layer.close(index); 
}

//手机号码验证  
jQuery.validator.addMethod("isPhone", function(value, element) {  
var length = value.length;  
var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;  
return this.optional(element) || (length == 11 && mobile.test(value));  
}, "请正确填写手机号码"); 

</script> 
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>