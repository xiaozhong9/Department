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
<c:set var="root" value="${pageContext.request.contextPath}"></c:set>
<link rel="stylesheet" href="${root}/js/css/layui.css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/iview.css" >
<style type="text/css">
[v-cloak] {
	display: none;
}
</style>
<title>教师列表</title>
<jsp:include page="../../../commonCss.jsp"></jsp:include>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		活动管理 <span class="c-gray en">&gt;</span> 活动列表 <a
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
			<input type="text" name="" id="" placeholder=" 活动名称"
				style="width: 250px" class="input-text">
			<button name="" id="" class="btn btn-success" type="submit">
				<i class="Hui-iconfont">&#xe665;</i> 搜活动
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" @click="datadel()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a> <a class="btn btn-primary radius"
				onclick="activity_add('添加活动','${root}/activity/add')"
				href="javascript:;"><i class="Hui-iconfont">&#xe600;</i>添加公告</a></span> <span
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
						<th width="260">标题</th>
						<th>封面</th>
						<th width="80">浏览次数</th>
						<th width="100">编辑人</th>
						<th width="140">时间</th>
						<th width="100">是否首页显示</th>
						<th width="60">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr :id="'tr'+activity.id" class="text-c" v-if="activity.id!=null"
						v-for="(activity,index) in activitys">
						<td><input name="" :value="activity.id" type="checkbox"></td>
						<td v-text="activity.title"></td>
						<td><a href="javascript:;" v-if="activity.cover!=null"
							@click="activity_show(activity.title,'${root }/activity/show',activity.id)"><img
								width="210" class="picture-thumb"
								:src="'/upload/activity/'+activity.cover"></a></td>
						<td v-text="activity.viewCount"></td>
						<td v-text="activity.editor"></td>
						<td>{{dateFormat(activity.pubTime)}}</td>
						<td> <i-switch :id="activity.id" @on-change="change(activity.id,$event)" :value="activity.state==1"/></td>
						<td class="td-manage"><a style="text-decoration: none"
							class="ml-5"
							@click="activity_edit('信息编辑','${root}/activity/edit',activity.id)"
							href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>

							<a style="text-decoration: none" class="ml-5"
							@click="activity_del(this,activity.id)" href="javascript:;"
							title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
					</tr>

				</tbody>
			</table>
		</div>
		<div id="demo7" class="am-show-landscape"></div>
	</div>
	<script type="text/javascript" src="${root}/js/layui.js"></script>
	<jsp:include page="../../../commonJs.jsp"></jsp:include>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/iview.js"></script> 
	<script type="text/javascript">

	var vm = new Vue({
		el:"#box",
		
		data:{
			currentPage:1,//当前页
			pageSize:5,//一页多少条
		page:{
			total:0,
			pageNum:1
		},
		
		activitys:[{
			editor:null,
			id:0,
			cover:null,
			pubTime:null,
			text:null,
			title:null,
			viewCount:0,
			content:null,
			state:null
			}
			]
		,
			teachers : [ {
				id : 0,
				name : null,
				nickName : null,
				jobTitle : null,
				education : null,
				job : null,
				curriculum : null,
				speciality : null,
				imgUrl : null
			} ]
		},
		methods:{
			getActivity:function(){
				this.$http.post("${root}/activity/activitys/page",{
					currentPage:this.currentPage,
					pageSize:this.pageSize
					},{emulateJSON:true}
				).
				then(function(res){
					console.log(res.body);
					if(res!=null){
						this.activitys=res.body.list;
						this.page.total=res.body.total;
					}
					console.log(this.activitys)
				})
				
			},
			
			getTeacherAll : function() {
				this.$http.post("${root}/teacher/all", {
					currentPage:this.currentPage,
					pageSize:this.pageSize
				}, {
					emulateJSON : true
				}).then(function(res) {
					//console.log(res);
				    this.teachers = res.body.list;
					this.page.total=res.body.total; 
				})
			},
			activity_edit : function(title, url, id) {
				
				localStorage.setItem('activity_id', id);
				var index = layer.open({
					type : 2,
					title : title,
					content : url,
					shadeClose : true,
					maxmin : true
				});
				layer.full(index);
			},
			activity_del : function(obj, id) {
				var This=this;
			layer.confirm('确认要删除吗？', function(index) {
				$.ajax({
					type : 'POST',
					url : '${root}/activity/del',
					data : "id=" + id,
					success : function(res) {
												
						if (res == "success") {
							
							setTimeout("page()",200);
							layer.msg('已删除!', {
								icon : 1,
								time : 1000
							});
						}

					},
					error : function(data) {
						layer.msg('删除失败!', {
							icon : 1,
							time : 1000
						});
					},
				});
			});
		},
		change:function(id,status){
		
		 var aid=parseInt(id);
	
		 
		 

			 if(status){
				 
			//  this.$Message.info('开关状态：' + aid+aTitle+aviewCount+vm.columnID);
		
			  this.$http.post("${root}/activity/update/state",{
				 "id":aid
			  }
				,{emulateJSON:JSON})
				.then(function(res){
					if("success"==res.bodyText){
						layer.msg("设置成功",{time:1000});
					}else if("gt"==res.bodyText){
						layer.msg("数量上限",{time:1000,icon:5});
						$("#"+aid).removeClass("ivu-switch-checked");
						setTimeout(function(){
							location.reload();
						},1000);
					
					}else{
						layer.msg("设置失败",{time:1000});
					}
				});
			  
			 }else{
				// this.$Message.info('否');
				 this.$http.post("${root}/activity/remState/state",
						{"id":aid}
					,{emulateJSON:JSON})
					.then(function(res){
						if("success"==res.bodyText){
							layer.msg("设置成功",{time:1000});
						}else{
							layer.msg("设置失败",{time:1000,icon:5});
						}
						
					});
			 }
		},
		activity_show:function (title,url,id){
			localStorage.setItem('activityID',id);
			var index = layer.open({
				type: 2,
				area: ['1000px', '500px'],
				shade:0.3,
				shadeClose: true,
				maxmin: true,
				title: title,
				content: url
			});
		},
		datadel:function(){
			var  vm=this;
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
						}
				 	  $.ajax({
						url:"${root}/activity/batch/del",
						data:"ids="+obj,
						traditional:true,
						type:"POST",
						success:function(msg){
							if("success"==msg){
							layer.msg("删除成功");
							vm.getActivity();
							setTimeout("page()",200);
							}
						},
						error:function(){
							layer.msg("删除异常");
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
			this.getTeacherAll();
			this.getActivity();
		}
		
		
	})
	$(function(){
		setTimeout("page()",200);
		
	})


	function page(){
		 var obj=layui.use(['laypage', 'layer'], function(){
					  var laypage = layui.laypage
					  ,layer = layui.layer;
					  laypage.render({
					    elem: 'demo7'
					    ,curr:vm.currentPage
					    ,count: vm.page.total
					    ,limit:vm.pageSize
					    ,layout: [ 'prev', 'page', 'next', 'refresh', 'skip']
					    ,jump: function(obj,first){
					    	//首次不执行
					    //	if(!first){
					    	vm.currentPage=obj.curr;//设置当前页
					    	vm.getActivity();
					    //	}
					    	
					    }
			  });
				  //将一段数组分页展示
				});
	}


/*教师-添加*/
function activity_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}

/*教师-查看*/
function activity_show(title,url,id){
	localStorage.setItem('activityID',id);
	var index = layer.open({
		type: 2,
		area: ['1000px', '500px'],
		shade:0.3,
		shadeClose: true,
		maxmin: true,
		title: title,
		content: url
	});
}



</script>
</body>
</html>