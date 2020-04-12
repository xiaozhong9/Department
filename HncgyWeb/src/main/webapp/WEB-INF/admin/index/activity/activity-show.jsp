<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:set var="root" value="${pageContext.request.contextPath}"></c:set>

<style type="text/css">
.title {

	font-weight: bold;
	text-align: center;
	margin-top: 30px;
}

.author {
	margin-top:10px;
	margin-bottom:15px;
	text-align: center;
}

.content{
	 text-indent:2em;
	line-height:1.5em;
	margin: 0 15px;
}

.footer {
	margin-right: 80px;
	margin-top: 20px;
	text-align: center;
	float: right;
}
.footer p {
	font-size: 16px; /*字体大小*/	
}


</style>

</head>
<body>
	<jsp:include page="../../../commonJs.jsp"></jsp:include>

	<div id="box">
		<div class="title">{{activity.title}}<span style="font-size:10px">(浏览次数:{{activity.viewCount}})</span></div>
		<div class="author"></div>
		<div class="content" v-html="activity.content"></div>

		<div class="footer">
			<p>{{activity.editor}}
			<p />
			<p>{{activity.pubTime | dateFormat}}
			<p />
		</div>
	</div>




	<script type="text/javascript">
		var Aid = localStorage.activityID;
		var vm = new Vue({
			el : "#box",
			data : {
				activity:{
					editor:null,
					id:0,
					cover:null,
					pubTime:null,
					title:null,
					viewCount:0,
					content:null
				} 
			},
			methods : {
				getArticle : function() {
					this.$http.post("${pageContext.request.contextPath}/activity/findby/id",{
						id:Aid
					},{emulateJSON:true}).then(function(res){
					
						this.activity=res.body;
						console.log(res.body)
					
					
					})
				}
			},
			filters:{
					dateFormat(time){
					var date = new Date(time);
					var year = date.getFullYear();
					/* 在日期格式中，月份是从0开始的，因此要加0
					 * 使用三元表达式在小于10的前面加0，以达到格式统一  如 09:11:05
					 * */
					var month = date.getMonth() + 1 < 10 ? "0"
							+ (date.getMonth() + 1) : date.getMonth() + 1;
					var day = date.getDate() < 10 ? "0" + date.getDate() : date
							.getDate();
					var hours = date.getHours() < 10 ? "0" + date.getHours()
							: date.getHours();
					var minutes = date.getMinutes() < 10 ? "0"
							+ date.getMinutes() : date.getMinutes();
					var seconds = date.getSeconds() < 10 ? "0"
							+ date.getSeconds() : date.getSeconds();
					// 拼接
					return year + "-" + month + "-" + day + " " + hours + ":"
							+ minutes + ":" + seconds;
				}
			}

		})

		$(function() {
			vm.getArticle();
		})
	</script>
</body>
</html>