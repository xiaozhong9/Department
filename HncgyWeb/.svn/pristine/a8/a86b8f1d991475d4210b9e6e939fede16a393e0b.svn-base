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
	<jsp:include page="../../commonJs.jsp"></jsp:include>

	<div id="box">
		<div class="title">{{article.title}}</div>
		<div class="author">{{article.author}}</div>

		<div class="content" v-html="article.content"></div>

		<div class="footer">
			<p>{{article.editor}}
			<p />
			<p>{{article.pubTime}}
			<p />
		</div>
	</div>




	<script type="text/javascript">
		var Aid = localStorage.Aid;
		var vm = new Vue({
			el : "#box",
			data : {
				article : {
					Aid : 0,
					title : null,
					subtitle : null,
					author : null,
					content : null,
					pubTime : null,
					viewCount : 0,
					editor : null,
					state : null,
					comment : null
				}
			},
			methods : {
				getArticle : function() {
					this.$http.post("${root}/admin/article/get/content", {
						Aid : Aid
					}, {
						emulateJSON : true
					}).then(function(res) {
						this.article = res.body;
						console.log(this.article);
					})
				}
			}

		})

		$(function() {
			vm.getArticle();
		})
	</script>
</body>
</html>