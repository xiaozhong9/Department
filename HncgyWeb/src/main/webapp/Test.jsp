<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/vue.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/axios.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</head>
<body>
			<div id="box"></div>
</body>
<script type="text/javascript">
	$(function(){
		var vm=new Vue({
			el:"#box",
			data:{
				Admin:{
					id:1,
					name:"123",
					account:"123",
					password:"123",
					email:"123",
					phone:"123",
					jurisdiction:100
					
					
					
				}
			},
			methods:{
				test:function(){
					var admin=this.Admin;
					axios({
						url:"${pageContext.request.contextPath}/vue/test",
						method:"POST",
						data:admin
					}).then(function(res){
						console.log(res);
					})
				}
			},
			created:function(){
				this.test();
			}
		})
		
	})
</script>
</html>