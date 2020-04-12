<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../../commonJs.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
		<div id="box" v-if="img.imgName!=null">
			<img alt="" :src="'/upload/ImgAll/'+img.imgName" >
		</div>
</body>
		<script type="text/javascript">
			var pid=localStorage.pid;
			var vue=new Vue({
				el:"#box",
				data:{
					img:{
							id:0,
							name:null,
							url:null,
							pubTime:null,
							imgName:null,
							type:null,
							catagory:null,
							state:0
						}
				},
				methods:{
					showImg:function(){
						this.$http.post("${pageContext.request.contextPath}/img/show",
								{id:pid},
								{emulateJSON:true}).then(function(res){
									console.log(res.body);
									this.img=res.body;	
								})
					}
				},
				created:function(){
					this.showImg();
				}
			})		
		</script>
</html>