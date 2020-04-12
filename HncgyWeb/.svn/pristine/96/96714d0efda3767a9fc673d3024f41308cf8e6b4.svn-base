<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String htmlData = request.getParameter("content") != null ? request.getParameter("content") : "";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/kindeditor" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../../../commonCss.jsp"></jsp:include>
<title>添加文章</title>


<link rel="stylesheet" href="${root}/themes/default/default.css" />
<link rel="stylesheet" href="${root}/plugins/code/prettify.css" />
<script charset="utf-8" src="${root}/kindeditor-all.js"></script>
<script charset="utf-8" src="${root}/lang/zh-CN.js"></script>
<script charset="utf-8" src="${root}/plugins/code/prettify.js"></script>


<script>
	var editor1;
	KindEditor.ready(function(K) {
		editor1 = K.create('textarea[name="content"]', {
			cssPath : '${root}/plugins/code/prettify.css',
			uploadJson : '${root}/jsp/upload_json.jsp',
			fileManagerJson : '${root}/jsp/file_manager_json.jsp',
			allowFileManager : true,
			afterCreate : function() {
				var self = this;
				K.ctrl(document, 13, function() {
					self.sync();
					document.forms['example'].submit();
				});
				K.ctrl(self.edit.doc, 13, function() {
					self.sync();
					document.forms['example'].submit();
				});
			}
		});
		prettyPrint();
	});
</script>
</head>
<body>
	<article class="page-container" id="article">
	<form class="form form-horizontal" id="form-article-add">

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">标题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" placeholder="" id="title"
					name="title">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">编辑人：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder=""
					id="editor" name="editor">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">
				<button class="btn btn-secondary radius" type="button" id="btn">
					<i class="Hui-iconfont">&#xe685;</i> 封面上传
				</button> <input type="file" name="file"
				accept="image/png,image/jpg,image/jpeg,image/gif" id="file"
				onChange="changeToop();" style="display: none;" />

			</label>
			<div class="formControls col-xs-8 col-sm-9">
				<div style="border: 1px solid #ccc; width: 500px; height: 300px;">

					<img id="myimg" src=""
						style="display: none; width: 100%; height: 100%;" />

				</div>
				<br />
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">内容：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea id="txt" name="content" cols="100" rows="8"
					style="width: 900px; height: 400px; visibility: hidden;"><%=htmlspecialchars(htmlData)%></textarea>
				<br />
			</div>
		</div>

		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button type="submit" class="btn btn-primary radius">
					<i class="Hui-iconfont">&#xe632;</i> 提 交
				</button>

				<button onClick="removeIframe();" class="btn btn-default radius"
					type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
	</article>
	<jsp:include page="../../../commonJs.jsp"></jsp:include>
</body>
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn").click(function() {
			$("#file").click();
		})
	})
	function Id(id) {
		return document.getElementById(id);
	}

	function changeToop() {
		var file = Id("file");
		if (file.value == '') {
			//设置默认图片
		} else {
			preImg("file", "myimg");
			Id("myimg").style.display = "block";
		}
	}

	function preImg(fileId, imgId) {
		var imgPre = Id(imgId);
		imgPre.src = getFileUrl(fileId);
	}

	//获取input[file]图片的url Important
	function getFileUrl(fileId) {
		var url;
		var file = Id(fileId);
		var agent = navigator.userAgent;
		if (agent.indexOf("MSIE") >= 1) {
			url = file.value;
		} else if (agent.indexOf("Firefox") > 0) {
			url = window.URL.createObjectURL(file.files.item(0));
		} else if (agent.indexOf("Chrome") > 0) {
			url = window.URL.createObjectURL(file.files.item(0));
		}
		return url;
	}

	var vm = new Vue({
		el : "#article",
		data : {

		},
		methods : {

		}
	})

	$(function() {
		editor1.sync();
	})

	
		$("#form-article-add").validate({
			rules : {
				title : {
					required : true
				},
				editor : {
					required : true
				}
			},
			messages : {
				title : {
					required : "请填写标题"
				},
				editor : {
					required : "请填写编辑人"
				}
			},
			submitHandler : function() {
				if (editor1.isEmpty()) {
					layer.msg("请输入内容", {
						time : 1000,
						icon : 5
					})
					return;
				}
				var imgUrl = upload();
				if (imgUrl === "" || imgUrl === null) {
					layer.msg("请选中图片", {
						time : 1000,
						icon : 5
					})
					return;
				}
				var content = editor1.html();//文章内容
				var editor = $("#editor").val();
				var title = $("#title").val(); 
				 	var activity={
							"id":0,
							"editor":editor,
							"title":title,
							"cover":imgUrl,
							"content":content,
							"viewCount":0,
							"pubTime":null
					} 
				$.ajax({
					url:"${pageContext.request.contextPath}/activity/save",
					contentType : 'application/json;charset=utf-8',
					type:"post",
					data:JSON.stringify(activity),
					success:function(res){
						if(res==="success"){
							layer.msg('添加成功',{
								time : 500, //0.5s后自动关闭
								
								icon :1
								
							},
							function() {
								 var index = parent.layer
										.getFrameIndex(window.name);
								parent.location
										.reload();
								parent.layer
										.close(index); 
							});
							return;
						}
						layer.msg("添加失败", {
							time : 1000,
							icon : 5
						})
					},
					error:function(){
						layer.msg("发生异常", {
							time : 1000,
							icon : 5
						})
					}
				})
			}
		});

	function upload() {
		var formData = new FormData();
		formData.append("file", $("#file")[0].files[0]);
		var file = formData.get("file");
		if (file === 'undefined' || file == null) {
			return "";
		}
		var url = "";
		$.ajax({
			type : 'POST',
			url : "${pageContext.request.contextPath}/activity/upload",
			data : formData,
			contentType : false,
			processData : false,
			async:false,
			beforeSend : function() {
				console.log("正在进行，请稍候");
			},
			success : function(res) {
				url = res;
			},
			error : function() {
				layer.msg("图片添加异常", {
					time : 1000,
					icon : 5
				})
			}
		});
		return url;
	}
</script>
</html>
<%!private String htmlspecialchars(String str) {
		str = str.replaceAll("&", "&amp;");
		str = str.replaceAll("<", "&lt;");
		str = str.replaceAll(">", "&gt;");
		str = str.replaceAll("\"", "&quot;");
		return str;
	}%>