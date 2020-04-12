//手机
	var phoneReg = /(^1[3|4|5|7|8]\d{9}$)|(^09\d{8}$)/;
	var count = 60;
	var InterValObj1;
	var curCount1;
	function sendMessage1() {
		curCount1 = count;
		var phone = $.trim($('#phone1').val());

		if (phone == undefined || phone == "") {
			layer.msg("手机不得为空");
			return false;
		}
		if (!phoneReg.test(phone)) {
			layer.msg(" 请输入有效的手机号码");
			return false;
		}
		$.ajax({
			url : "phone",
			type : "post",
			async: false,
			data : "phone=" + phone,
			success : function(res) {
				if(res=="error"){
					layer.msg("手机号码无法识别");
					return;
				}else{
					$("#btnSendCode1").attr("disabled", "true");
					$("#btnSendCode1").val(+curCount1 + "秒再获取");
					InterValObj1 = window.setInterval(SetRemainTime1, 1000);
				}
			},
			error:function(){
				layer.msg("发生异常");
			}
		})


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

	//邮箱
	var emailReg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	var count2 = 60;
	var InterValObj2;
	var curCount2;
	function sendMessage2() {
		curCount2 = count;
		var email = $.trim($('#email').val());
		if (email == undefined || email == "") {
			layer.msg(" 邮箱不得为空");
			return false;
		}
		if (!emailReg.test(email)) {
			layer.msg(" 请输入有效的邮箱");
			return false;
		}
		
		$.ajax({
			url : "email",
			type : "post",
			async: false,
			data : "email=" + email,
			success : function(res) {
				if(res=="error"){
					layer.msg('邮箱不存在');
					return false;
				}else{
					$("#btnSendCode2").attr("disabled", "true");
					$("#btnSendCode2").val(+curCount2 + "秒再获取");
					InterValObj2 = window.setInterval(SetRemainTime2, 1000);
				}
			},
			error:function(){
				layer.msg("登录异常请联系管理员");
			}
		});
	
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
	function binding() {
		layer.msg('请输入手机号码');
	}
	
	function isEmpty(obj){
		if(obj===undefined||obj===null||obj===""){
			return true;
		}
		return false;
	}
	function phoneSubmit(){
		var phone=$("#phone1").val();
		var code=$("#code1").val();
		if(isEmpty(phone)){
			layer.msg("请输入手机号码");
			return;
		}else if(!phoneReg.test(phone)){
			layer.msg("请输入有效手机号码");
			return;
		}else if(isEmpty(code)){
			layer.msg("验证码不得为空");
			return ;
		}
		$.ajax({
			url:"login/phone",
			data:"code="+code+"&phone="+phone,
			type:"post",
			success:function(res){
				if(res=="success"){
					location.href="index";
				}else{
					layer.msg("验证码错误");
				}
			}
		})
	}
	function emailSubmit(){
		var email=$("#email").val();
		var code=$("#code2").val();
		if(isEmpty(email)){
			layer.msg("请输入邮箱");
			return;
		}else if(!emailReg.test(email)){
			layer.msg("请输入有效邮箱");
			return;
		}else if(isEmpty(code)){
			layer.msg("验证码不得为空");
			return ;
		}
		
		$.ajax({
			url:"login/email",
			type:"post",
			data:"code="+code+"&email="+email,
			success:function(res){
				if("success"==res){
					location.href="index";
				}else{
					layer.msg("验证码输入错误");
				}
			},
			error:function(){
				layer.msg("发生异常");
			}
		})
	}
	function accountSubmit(){
		var account=$("#account").val();
		var password=$("#password").val();
		if(isEmpty(account)){
			layer.msg("请输入账号");
			return;
		}else if(isEmpty(password)){
			layer.msg("请输入密码");
			return;
		}
		$.ajax({
			url:"login/password",
			type:"post",
			data:{"account":account,"password":password},
			success:function(res){
				if(res=="error"){
					layer.msg("账号或密码错误");
					return;
				}
				location.href="index";
			}
		})
	}