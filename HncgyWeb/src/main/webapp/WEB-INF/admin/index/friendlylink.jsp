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
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->

<jsp:include page="../../commonCss.jsp"></jsp:include>
<style type="text/css">
[v-cloak] {
	display: none;
}
</style>
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<c:set var="root" value="${pageContext.request.contextPath}"></c:set>
<title>图片列表</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		图片管理 <span class="c-gray en">&gt;</span> 图片列表 <a
			class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container" id="box">
		<div class="text-c">
			日期范围： <input type="text"
				onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })"
				id="logmin" class="input-text Wdate" style="width: 120px;">
			- <input type="text"
				onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })"
				id="logmax" class="input-text Wdate" style="width: 120px;">
			<input type="text" name="" id="" placeholder=" 图片名称"
				style="width: 250px" class="input-text">
			<button name="" id="" class="btn btn-success" type="submit">
				<i class="Hui-iconfont">&#xe665;</i> 搜图片
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" @click="datadel()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a> <a class="btn btn-primary radius"
				onclick="friendlylink_add('添加友情链接','${root}/friendlylink/add')"
				href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加友情链接</a></span> <span
				class="r">共有数据：<strong v-text="page.total"></strong> 条
			</span>
		</div>
		<div class="mt-20">
			<table
				class="table table-border table-bordered table-bg table-hover table-sort">
				<thead>

					<tr class="text-c">
						<th width="40"><input name="" type="checkbox" id="all"
							value="-1"></th>
						<th width="250">备注</th>
						<th>图片</th>
						<th width="300">网址</th>
						
						<th width="100">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr  :id="friendlylink.id" class="text-c" 
						v-for="(friendlylink,index) in friendlylinks">
						<td><input name="" :value="friendlylink.id" type="checkbox"></td>
						<td v-text="friendlylink.remarks"></td>
						<td><a href="javascript:;"
							@click="friendlylink_show('查看图片','show',friendlylink.imgUrl)"><img v-if="friendlylink.imgUrl!=null" width="210"
								class="picture-thumb" :src="'/upload/friendlylink/'+friendlylink.imgUrl"></a></td>
					
						<td v-text="friendlylink.httpUrl"></td>
						
						<td class="td-manage"><a style="text-decoration: none"
							class="ml-5"
							@click="friendlylink_edit('信息编辑','${root}/friendlylink/edit',friendlylink.id)"
							href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>

							<a style="text-decoration: none" class="ml-5"
							@click="friendlylink_del(this,friendlylink.id)" href="javascript:;" title="删除"><i
								class="Hui-iconfont">&#xe6e2;</i></a></td>
					</tr>

				</tbody>
			</table>
		</div>
	</div>

	<jsp:include page="../../commonJs.jsp"></jsp:include>
	<script type="text/javascript">

	var vm = new Vue({
		el:"#box",
		
		data:{
			page:{
				total:0
			},
			friendlylinks : [ {
				id:0,
				remarks:null,
				imgUrl:null,
				httpUrl:""
			} ]
		},
		methods:{
			
			getFriendlylink:function(){
				this.$http.post("${root}/friendlylink/all",{},{emulateJSON:true})
				.then(function(res){
					console.log(res.body);
					if(res.body!=null){
						
						
						this.friendlylinks=res.body;
						this.page.total=res.body.length;
					}
				})
			},
			
			friendlylink_edit : function(title, url, id) {
				localStorage.setItem('friendlylink_id', id);
				var index = layer.open({
					type : 2,
					title : title,
					content : url,
					shadeClose : true,
					maxmin : true
				});
				layer.full(index);
			},
			friendlylink_del : function(obj, id) {
				var This=this;
			layer.confirm('确认要删除吗？', function(index) {
				$.ajax({
					type : 'POST',
					url : '${root}/friendlylink/delete',
					data : "id=" + id,
					success : function(res) {
												
						if (res == "success") {
							
							$("#"+id).remove();
							
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
		datadel:function(){
			var arr=$("#box input[type='checkbox']:checked");
			if(arr.length===0){
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
					console.log(obj[i]);
					console.log("输出")
						}
			
					  $.ajax({
						url:"${root}/friendlylink/batch",
						data:"arr="+obj,
						traditional:true,
						type:"POST",
						success:function(msg){
							console.log(msg);
							if("success"==msg){
							layer.msg("删除成功");
							for(var i=0;i<arr.length;i++){
								$(arr[i]).parent().parent().remove();
							}
							}else{
								layer.msg("删除失败")
							}
						},
						error:function(){
							layer.msg("删除图片异常");
						}
						
					});  
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
			}
				}	,
		created:function(){
			this.getFriendlylink();
		}
		
		
	})






/*图片-添加*/
function friendlylink_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}

/*图片-查看*/
function picture_show(title,url,id){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}

/*图片-审核*/
function picture_shenhe(obj,id){
	layer.confirm('审核文章？', {
		btn: ['通过','不通过'], 
		shade: false
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="picture_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布', {icon:6,time:1000});
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="picture_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
		$(obj).remove();
    	layer.msg('未通过', {icon:5,time:1000});
	});	
}

/*图片-下架*/
function picture_stop(obj,id){
	layer.confirm('确认要下架吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="picture_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
		$(obj).remove();
		layer.msg('已下架!',{icon: 5,time:1000});
	});
}

/*图片-发布*/
function picture_start(obj,id){
	layer.confirm('确认要发布吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="picture_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布!',{icon: 6,time:1000});
	});
}

/*图片-申请上线*/
function picture_shenqing(obj,id){
	$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">待审核</span>');
	$(obj).parents("tr").find(".td-manage").html("");
	layer.msg('已提交申请，耐心等待审核!', {icon: 1,time:2000});
}



/*图片-删除*/
function picture_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '',
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").remove();
				layer.msg('已删除!',{icon:1,time:1000});
			},
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
}
</script>
</body>
</html>