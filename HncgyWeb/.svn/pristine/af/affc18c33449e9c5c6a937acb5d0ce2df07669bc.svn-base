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
<jsp:include page="../../commonCss.jsp"></jsp:include>
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
			<label class="form-label col-xs-4 col-sm-2"><span
				class="c-red">*</span>文章标题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" placeholder="" id="title"
					name="title">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">作者：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder=""
					id="author" name="author">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">副标题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder=""
					id="Subtitle" name="Subtitle">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span
				class="c-red">*</span>分类栏目：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span v-for="column in columns"> <label> <input
						type="checkbox" name="columnTitle" :value="column.columnID"
						:title="column.columnTitle" /><span v-text="column.columnTitle"></span>
				</label>
				</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">编辑人：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" placeholder="" id="editor"
					name="editor">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">允许评论：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<div class="hui-form-radios">
					<input type="checkbox" id="comment" name="comment" checked="true">
					<label for="checkbox-pinglun">&nbsp;</label>
				</div>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">文章内容：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea id="txt" name="content" cols="100" rows="8"
					style="width: 900px; height: 400px; visibility: hidden;"><%=htmlspecialchars(htmlData)%></textarea>
				<br />
			</div>
		</div>
		<div class="row cl" style="position:relative;top:-350px;left:130px">
			
			<button type="button" onClick="image_recognition('${root}/article/image_recognition')" class="btn btn-secondary radius" ><i class="Hui-iconfont">&#xe685;</i> 图片识别</button>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();"
					class="btn btn-primary radius">
					<i class="Hui-iconfont">&#xe632;</i> 发布
				</button>
				<button onClick="article_save();" class="btn btn-secondary radius">
					<i class="Hui-iconfont">&#xe632;</i> 保存草稿
				</button>
				<button onClick="removeIframe();" class="btn btn-default radius"
					type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
	</article>
	<jsp:include page="../../commonJs.jsp"></jsp:include>
</body>
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript">
	$("#txt").change(function(){
		this.val(localStorage.result)
	})
	var vm = new Vue(
			{
				el : "#article",
				data : {
					columns : [ {
						clumnID : 0,
						columnTitle : null
					} ],
				},
				methods : {
					getColumns : function() {
						this.$http
								.post(
										"${pageContext.request.contextPath}/admin/column/get/columns",
										{}, {
											emulateJSON : true
										}).then(function(res) {
									this.columns = res.body;
								})
					}
				}
			})

	$(function() {
		vm.getColumns();
	})

	function fun(state) {
		$("#form-article-add")
				.validate(
						{
							rules : {
								title : {
									required : true
								},
								author : {
									required : true
								},
								editor : {
									required : true
								},
								content : {
									required : true
								},
								columnTitle : {
									required : true
								},
								Subtitle : {
									required : true
								}

							},
							messages : {
								title : {
									required : "标题不得为空"
								},
								author : {
									required : "作者不得为空"
								},
								editor : {
									required : "编辑人不得为空"
								},
								content : {
									required : "内容不得为空"
								},
								columnTitle : {
									required : "请选择栏目"
								},
								Subtitle : {
									required : "副标题不得为空"
								}
							},
							submitHandler : function() {
								var text = editor1.html().trim();//文章内容
								var title = $("#title").val();//标题
								var author = $("#author").val();//作者
								var Subtitle = $("#Subtitle").val();//副标题
								var editor = $("#editor").val();//编辑人
								var comment = $("#comment").prop("checked");//评论
								comment = comment ? 1 : 0;
								var article = {
									"Aid" : 0,
									"title" : title,
									"author" : author,
									"subtitle" : Subtitle,
									"editor" : editor,
									"content" : text,
									"comment" : comment,
									"state" : state,
									"pubTime" : new Date(),
									"viewCount" : 0
								};
								var obj = {
									"article" : article
								};
								var arr = $("input:checkbox[name='columnTitle']:checked");
								var column = new Array(arr.length);
								for (var a = 0; a < arr.length; a++) {
									column[a] = {
										"columnID" : arr[a].value,
										"columnTitle" : arr[a].title
									}
								}
								var formData = new FormData();
								var obj = $.extend({}, article, column);
								if (text.length != 0) {
									$
											.ajax({
												url : "${pageContext.request.contextPath}/admin/article/add/article1",
												data : JSON.stringify({
													"article" : article,
													"column" : column
												}),
												traditional : true,
												type : "POST",
												contentType : 'application/json;charset=utf-8',
												success : function(msg) {
													layer
															.msg(
																	'文章添加成功',
																	{
																		time : 500, //3s后自动关闭
																		/*btn : [ '确定' ], */
																		icon : 6,
																		/* yes : function() {
																			var index = parent.layer
																					.getFrameIndex(window.name);
																			parent.location
																					.reload();
																			parent.layer
																					.close(index);
																		} */
																	},
																	function() {
																		var index = parent.layer
																				.getFrameIndex(window.name);
																		parent.location
																				.reload();
																		parent.layer
																				.close(index);
																	});
													//removeIframe();//关闭选项卡

												},
												error : function() {
													alert("添加文章异常");
												}

											});
								} else {
									alert('请输入文章内容');
								}
							}
						});

		/* UE.getEditor('editor').setContent('欢迎使用ueditor'); 设置*/
	}
	
	function image_recognition(url){
		var index = layer.open({
			type: 2,
			maxmin:true,
			area: ['1000px', '500px'],
			title: "图片识别",
			content:url 
			});
		layer.full(index);
	}

	
	/*发布文章*/
	function article_save_submit() {
		fun(1);
	}
	/*保存草稿*/
	function article_save() {
		fun(0);
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