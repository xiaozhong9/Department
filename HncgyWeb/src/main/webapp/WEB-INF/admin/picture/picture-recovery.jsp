<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<jsp:include page="../../commonCss.jsp"></jsp:include>
<style type="text/css">
[v-cloak] {
	display: none;
}
</style>
<c:set var="root" value="${pageContext.request.contextPath}"></c:set>
<title>图片列表</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		图片管理 <span class="c-gray en">&gt;</span> 轮播图管理 <a
			class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container" id="box">
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" @click="datadel()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a> </span>
		</div>
		<div class="mt-20">
			<table id="body"
				class="table table-border table-bordered table-bg table-hover table-sort">
				<thead>
					<tr class="text-c">
						<th width="40"><input name="" id="all" type="checkbox"
							value="-1"></th>
						<th width="80">ID</th>
						<th width="100">封面</th>
						<th width="150">类型</th>
						<th width="150">更新时间</th>
						<th width="100">操作</th>
					</tr>
				</thead>
				<tbody>

					<tr class="text-c" v-if="imgs[0].imgName!=null"
						v-for="(img,index) in imgs" v-cloak>
						<td><input name="" type="checkbox" :value="img.id"></td>
						<td>{{index+1}}</td>
						<td><a href="javascript:;"
							@click="picture_edit('图片编辑','picture/show',img.id)"><img
								width="210" class="picture-thumb"
								:src="'/upload/ImgAll/'+img.imgName"></a></td>
						<td class="text-c">{{img.type}}</td>
						<td>{{dateFormat(img.pubTime)}}</td>
						<td class="td-manage"><a style="text-decoration: none"
							@click="reduction(img.id,index)" href="javascript:;" title="还原"><i
								class="Hui-iconfont">&#xe66b;</i></a> <a
							style="text-decoration: none" class="ml-5"
							@click="picture_del(index,img.id)" href="javascript:;" title="删除"><i
								class="Hui-iconfont">&#xe6e2;</i></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<jsp:include page="../../commonJs.jsp"></jsp:include>
	<script type="text/javascript">
		var vm = new Vue({
			el : "#box",
			data : {
				imgs : [ {
					id : 0,
					name : null,
					url : null,
					pubTime : null,
					imgName : null,
					type : null,
					catagory : null,
					state : 0
				} ]
			},
			methods : {
				getLoopImgs : function() {
					this.$http.post("${root}/img/PictureRecovery/all", {}, {
						emulateJSON : true
					}).then(function(res) {
						console.log(res);
						this.imgs = res.body;
					})
				},
				dateFormat : function(time) {
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
				},
				/*图片-编辑*/
				picture_edit : function(title, url, id) {
					localStorage.setItem('pid', id);
					var index = layer.open({
						area : [ "800px", "500px" ],
						type : 2,
						title : title,
						content : url,
						shadeClose : true,
						maxmin : true
					});
				},
				picture_del : function(obj, id) {
						var This=this;
					layer.confirm('确认要删除吗？', function(index) {
						$.ajax({
							type : 'POST',
							url : '${root}/img/dustbin/img',
							data : "id=" + id,
							success : function(res) {
								This.imgs.splice(obj,1);
								if (res == "success") {
									layer.msg('已删除!', {
										icon : 1,
										time : 1000
									});
								}

							},
							error : function(data) {
								console.log("失败");
							},
						});
					});
				},
				reduction:function(id,i){
					var This =this;
					layer.confirm('确认还原吗?',function(index){
						This.$http.post("${root}/img/reduction/picture",{
							id:parseInt(id)
						},{emulateJSON:true}).then(function(res){
							if(res.bodyText=="success"){
						   This.imgs.splice(i,1)
						   layer.close(index);
							}else{
								layer.msg("还原图片异常");
							}
						})
					})
				},
				datadel:function(){
					var arr=$("#body input[type='checkbox']:checked");
					if(arr.length==0){
						layer.msg("请勾选图片",{time:1000});
						return
					}
					var length=arr.length;
					if($("#all").prop("checked")){
						length-=1;
					}
					layer.confirm("确认删除"+length+"张图片吗?",{btn:['确认','取消'],title:"提示"},function(){
					var obj=new Array(arr.length);
					for(var i=0;i<arr.length;i++){
						obj[i]=parseInt(arr[i].value);
							}
					var IcolumnID=vm.columnID;
						  $.ajax({
							url:"${root}/img/remvoe/dustbinimgs",
							data:"ids="+obj,
							traditional:true,
							type:"POST",
							success:function(msg){
								if("success"==msg){
									layer.msg('已删除!', {
										icon : 1,
										time : 1000
									});
								for(var i=0;i<arr.length;i++){
									$(arr[i]).parent().parent().remove();
								}
								}
							},
							error:function(){
								alert("删除文章异常");
							}
							
						});  
					})
					
				}

			},
			created : function() {
				this.getLoopImgs();
			},
			filters : {

			}
		})

		$('.table-sort').dataTable({
			/* "aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序 */
			"bStateSave" : true,//状态保存
			"lengthChange" : false,
			"paging" : false,
			"info" : false,
			"searching" : false,
			"aoColumnDefs" : [ {
				"orderable" : false,
				"aTargets" : [ 0, 6 ]
			} // 制定列不参与排序
			]
		});

		/*图片-添加*/
		function picture_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}

		/*图片-查看*/
		function picture_show(title, url, id) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
	</script>
</body>
</html>