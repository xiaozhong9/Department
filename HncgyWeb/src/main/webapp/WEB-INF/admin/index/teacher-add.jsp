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



</head>
<body>
	<article class="page-container" id="article">
	<form class="form form-horizontal" id="form-article-add">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span
				class="c-red">*</span>姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" placeholder="" id="name"
					name="name">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">职称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder=""
					id="jobTitle" name="jobTitle">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">别称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder=""
					id="nickName" name="nickName">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">学历：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder=""
					id="education" name="education">
			</div>
		</div>
	
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">兼职：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" placeholder="" id="job"
					name="job">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">历任课程：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea id="curriculum" name="curriculum" cols="100" rows="8"
					style="width: 300px; height: 150px; "></textarea>
				<br />
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">专业特长：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea id="speciality" name="speciality" cols="100" rows="8"
					style="width: 300px; height: 150px;" ></textarea>
				<br />
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">
			<button  class="btn btn-secondary radius" type="button" id="btn"><i class="Hui-iconfont">&#xe685;</i>
			 图片上传</button>
			 <input type="file" name="file" accept="image/png,image/jpg,image/jpeg,image/gif" id="file" 
			 onChange="changeToop();" style="display:none;" />
	
		</label>
			<div class="formControls col-xs-8 col-sm-9">
				<div style="border:1px solid #ccc; width:500px; height:300px;">
				
				 <img id="myimg" src="" style="display: none;width:100%;height:100%;" />
				
				</div>
				<br />
			</div>
		</div>
		
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();"
					class="btn btn-primary radius">
					<i class="Hui-iconfont">&#xe632;</i> 提 交
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
$(function(){
	$("#btn").click(function(){
		
		$("#file").click();
	})	
})
function Id(id){
	return document.getElementById(id);
	}

function changeToop(){
	  var file = Id("file");
	  if(file.value==''){
	    //设置默认图片
	      
	    alert(2)
	  }else{
	     preImg("file","myimg");
	 	Id("myimg").style.display="block"; 
	  }
	}

function preImg(fileId,imgId) {
	var imgPre =Id(imgId);
	imgPre.src = getFileUrl(fileId);
	}

//获取input[file]图片的url Important
function getFileUrl(fileId) {
  var url;
  var file = Id(fileId);
  var agent = navigator.userAgent;
  if (agent.indexOf("MSIE")>=1) {
  url = file.value;
  } else if(agent.indexOf("Firefox")>0) {
  url = window.URL.createObjectURL(file.files.item(0));
  } else if(agent.indexOf("Chrome")>0) {
  url = window.URL.createObjectURL(file.files.item(0));
  }
  return url;
}



	$("#txt").change(function(){
		this.val(localStorage.result)
	})
	var vm = new Vue(
			{
				el : "#article",
				data : {
					
				},
				methods : {
					
				}
			})

	$(function() {
		
	})

	function fun(state) {
		$("#form-article-add")
				.validate(
						{
							rules : {
								name : {
									required : true
								},
								nickName : {
									required : true
								},
								jobTitle : {
									required : true
								},
								education : {
									required : true
								},
								job : {
									required : true
								},
								curriculum : {
									required : true
								
								},
								speciality : {
									required : true
								}

							},
							messages : {
								name : {
									required : "请填写姓名"
								},
								nickName : {
									required : "请填写别称"
								},
								jobTitle : {
									required : "请填写职称"
								},
								education : {
									required : "请填写学历"
								},
								job : {
									required : "请填写兼职"
								},
								curriculum : {
									required : "请填写历任课程"
								
								},
								speciality : {
									required : "请填写专业特长"
								}
							},
							submitHandler : function() {
								
								var imgUrl=upload();
									
								
								console.log(imgUrl);
								if(imgUrl ===""||imgUrl===null){
									layer.msg("请选择图片",{
										time : 1000, //0.5s后自动关闭
										icon : 5
									})
									return ;
									
								}else{
								
								
								var name = $("#name").val();//姓名
								var nickName = $("#nickName").val();//别称
								var jobTitle = $("#jobTitle").val();//职称
								var education = $("#education").val();//学历
								var job = $("#job").val();//兼职
								var curriculum = $("#curriculum").val();//历任课程
								var speciality = $("#speciality").val();//专业特长
								var teacher = {
									"id" : 0,
									"name" : name,
									"nickName" : nickName,
									"education" : education,
									"jobTitle" : jobTitle,
									"job" : job,
									"curriculum" : curriculum,
									"speciality" : speciality,
									"imgUrl":imgUrl
								};
								
								
								var formData = new FormData();
								
								console.log(teacher)
								if (imgUrl!=""||imgUrl!=undefined) {
									$
											.ajax({
												url : "${pageContext.request.contextPath}/teacher/save",
												data :teacher,
												traditional : true,
												type : "POST",
												async:false,
												success : function(msg) {
													layer.msg('添加成功',{
																		time : 500, //0.5s后自动关闭
																		
																		icon : 6
																		
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
													alert("添加异常");
												}

											});
								} else {
									alert('异常');
								}
							}
							}
						});

		/* UE.getEditor('editor').setContent('欢迎使用ueditor'); 设置*/
	}
	
	function upload(){
		
		var formData = new FormData();
	    formData.append("file", $("#file")[0].files[0]);
	    var file=formData.get("file");
	    if(file === 'undefined'||file==null){
	    	
	    	return "";
	    }
	    var url="";
	    console.log("执行---")
	    $.ajax({
	         type:'POST',
	         url:"${pageContext.request.contextPath}/teacher/upload",
	         data:formData,
	         contentType:false,
	         processData:false,
			async:false,
	 		 beforeSend:function () {
	     		console.log("正在进行，请稍候");
	 			},
	         success:function(res){
				url=res;
				
	    	 },
	    	error:function(){
	    		console.log("图片添加异常");
	    	}
	    	  });
	    return url;
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