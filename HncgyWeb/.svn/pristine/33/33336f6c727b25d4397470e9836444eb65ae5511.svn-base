<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/webuploader.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/diyUpload.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/webuploader.html5only.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/diyUpload.js"></script>
<title>多图上传</title>
<style>
*{ margin:0; padding:0;}
#box{ margin:50px auto; width:540px; min-height:400px; background:#FF9}

</style>
</head>
<body>
<div id="box">
	<div id="test" ></div>
</div>


</body>
<script type="text/javascript">

/*
* 服务器地址,成功返回,失败返回参数格式依照jquery.ajax习惯;
* 其他参数同WebUploader
*/

$('#test').diyUpload({
	url:'${pageContext.request.contextPath}/img/uploads',
	success:function( data ) {
		console.info( data );
	},
	error:function( err ) {
		console.info( err );	
	}
});


</script>
</html>