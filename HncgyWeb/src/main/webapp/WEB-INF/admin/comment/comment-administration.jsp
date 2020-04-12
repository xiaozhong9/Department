<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<jsp:include page="../../commonCss.jsp"></jsp:include>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<link rel="stylesheet" href="${root}/js/css/layui.css" media="all">
<title>评论审核</title>
<style type="text/css">
[v-cloak] {
	display: none;
}

.lef {
	float: left;
	width: 40%
}

.rig {
	float: left;
	width: 58%;
}

.hei {
	height: 40px;
}
</style>
</head>
<body>
	<nav class="breadcrumb"> <i class="Hui-iconfont">&#xe67f;</i> 首页
	<span class="c-gray en">&gt;</span> 评论管理 <span class="c-gray en">&gt;</span>
	意见反馈 <a class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="page-container" id="box">
		<div class="text-c">
			日期范围： <input type="text"
				onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}' })"
				id="datemin" class="input-text Wdate" style="width: 120px;">
			- <input type="text"
				onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d' })"
				id="datemax" class="input-text Wdate" style="width: 120px;">
			<input type="text" class="input-text" style="width: 250px"
				placeholder="输入关键词" id="" name="">
			<button type="submit" class="btn btn-success radius" id="" name="">
				<i class="Hui-iconfont">&#xe665;</i> 搜意见
			</button>
		</div>

		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" @click="batchDel()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a> </span> <span class="ml-20">栏目：</span> <select class="ml-5"
				v-model="columnID" @change="getCouponSelected">
				<option v-for="column in columns" :value="column.columnID">{{column.columnTitle}}</option>
			</select> <span class="r">共有数据：<strong v-text="page.total"></strong> 条
			</span>
		</div>




		<div class="mt-20">

			<!-- 55 -->
			<div id="demo8" class="am-show-landscape lef"></div>
			<div id="demo7" class="am-show-landscape rig"></div>
			<table
				class="table table-border table-bordered table-bg  lef">
				<thead>
					<tr class="text-c">

						<th width="40">作者</th>
						<th>标题</th>
						<th width="100">发布时间</th>


					</tr>
				</thead>
				<tbody id="body">
					<tr class="text-c va-m" v-for="article in articles"
						:id="article.aid" :value="article.aid" height="60px"
						@click="byArticleId(article.aid,$event)">

						<td v-text="article.author"></td>
						<td class="text-l"><a v-text="article.title"></a></td>
						<td><span class="price" v-text="article.pubTime"></span></td>

					</tr>


				</tbody>
			</table>

			<!--5  -->


			<table
				class="table table-border table-bordered table-hover table-bg table-sort rig">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value="-1"></th>
						<th width="250">邮箱</th>

						<th>留言内容</th>
						<th width="120">时间</th>
						<th width="100">操作</th>
					</tr>
				</thead>
				<tbody id="tbody">

					<tr class="text-c" v-if="comments[0].oid>0"
						v-for="(comment,index) in comments" height="60px">
						<td><input type="checkbox" :value="comment.oid" name=""></td>

						<td><span class="" v-text="comment.tourist"></span></td>
						<td class="text-l">{{comment.content|filterA}}</td>
						<td>{{dateFormat(comment.pubTime)}}</td>

						<td class="td-manage">
						
						<!-- <a title="审核" href="javascript:;"
							@click="member_shenhe(index,comment.oline_id)" class="ml-5"
							style="text-decoration: none"><i class="Hui-iconfont">&#xe6dc;</i></a> -->
							<a style="text-decoration: none" class="ml-5"
							@click="comment_del(comment.oid,index)" href="javascript:;"
							title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
					</tr>
				</tbody>
			</table>
		</div>


		
	</div>

	<jsp:include page="../../commonJs.jsp"></jsp:include>
	</script>
	<script type="text/javascript" src="${root}/js/layui.js"></script>
	<script type="text/javascript">
		var vm = new Vue({
			el : "#box",
			data : {
				
				articleId:36,
				columnID:1,
				currentPage:1,//当前页
				pageSize:10,//一页多少条
				article_currentPage:1,//文章当前页
			page:{
				total:0,
				pageNum:1
			},
			article_page:{
				total:0,
				pageNum:1
				
			},
				
			columns:[
				{
					clumnID:0,
					columnTitle:null
				}
			],
				
				comments : [ {
					content:null,
					oid:0,
					pubTime:null,
					tourist:null

				} ],
				articles:[
					{
					Aid:0,
					author:null,
					title:null,
					pubTime:null,
					state:null
					}
					]
			},
			methods : {
				
				byArticleId:function(id,event){
					if(event!=null||event!=undefined){
						var id=event.currentTarget.id;
						this.columnTitle=event.currentTarget.title;
						$("#body tr").not("#"+id).css("background-color","#fff");
						$("#"+id).css("background-color","#909090");
						
					}
					
					console.log("-----"+id)
					this.articleId=id;
				 	this.getComments();
					setTimeout("page()",400); 
				}
				,
				getFistAid: function(){
					
					var aid=$("#body tr").eq(0).attr("value");
					$("#body tr").eq(0).css("background-color","#909090");
					
					$("#body tr").not("#"+aid).css("background-color","#fff");
					this.articleId=aid;
					console.log(this.articleId)
					this.getComments();
					setTimeout("page()",400);
				},
				getColumns:function(){
					this.$http.post("${pageContext.request.contextPath}/admin/column/get/columns",{
					},{emulateJSON:true//表示像html表单提交
					}).then(function(res){
						
						this.columns=res.body;
					})
				},
				getColumnByID:function(){//获取指定栏目
					this.$http.post("${pageContext.request.contextPath}/admin/column/get/column",{
						columnID:this.columnID,
						currentPage:this.article_currentPage,
						pageSize:this.pageSize
					},{emulateJSON:true//表示像html表单提交
					}).then(function(res){
						this.articles=res.body.list;
						this.article_page.total = res.body.total;
						
					})
					
				},
				getCouponSelected:function(){
					this.getColumnByID();
					setTimeout("article_page()",200);
					setTimeout("vm.getFistAid()",300);
					
					
				},
				getComments : function() {
				
					this.$http.post("${root}/oline/administration/comment", {
						columnId:this.columnID,
						articleId:this.articleId,
						currentPage:this.currentPage,
						pageSize:10
						
					}, {
						emulateJSON : true
					}).then(function(res) {
						if (res.body.list != null) {
							this.comments = res.body.list;
							this.page.total = res.body.total;
						}
					})
				},/*批量删除*/
				batchDel : function() {
					var v=this;
					var arr = $("#tbody input[type='checkbox']:checked");
					if(arr.length===0){
						layer.msg("请选择评论")
						return;
					}
					layer.confirm("确认删除" + arr.length + "条评论吗?", function(old) {
						
						var arrId = new Array(arr.length);
						for (var i = 0; i < arr.length; i++) {
							arrId[i] = parseInt(arr[i].value);
						}
						arrId = arrId.toString();
						v.$http.post("${root}/oline/batch", {
							"arr" : arrId
						}, {
							emulateJSON : true
						}).then(function(res) {
							var text = res.bodyText;
							for(var i=0;i<arr.length;i++){
								$(arr[i]).parent().parent().remove();
							}
							if (text === "success") {
								layer.msg("删除成功")
								v.page.total-=arr.length;
								this.getComments();
								setTimeout("page()",200);
							}
							layer.close(old);
						})

					})
				},
				comment_del:function(id,obj){
					var v=this;
					
					layer.confirm('确认要删除吗？', function(index) {
					
					v.$http.post("${root}/oline/del",{
						"id":id
					},{emulateJSON:true})
					.then(function(res){
						if(res.bodyText==="success"){
								layer.msg("删除成功")
								v.page.total-=1;
								v.getComments();
								setTimeout("page()",200);
							}else{
								layer.msg("删除失败")
							}
							layer.close(index);
						
					})
				})
				},
				/*审核*/
				member_shenhe : function(index, id) {
					var v = this;
					layer.confirm('审核评论', {
						title : "审核",
						btn : [ '通过', '取消' ]

					}, function(ind) {
						v.$http.post("${root}/oline/adopt", {
							id : id
						}, {
							emulateJSON : true
						}).then(function(res) {
							var text = res.bodyText;
							if (text === "success") {
								layer.close(ind);
								v.comments.splice(index, 1);
								v.page.total -= 1;
								layer.msg("操作成功", {
									time : 1000
								});
								this.getComments();
								setTimeout("page()",200);
								
							} else {
								layer.msg("操作异常");
							}
						})

					}
					/* , function(ind) {
						v.$http.post("${root}/oline/not/pass", {
							id : id
						}, {
							emulateJSON : true
						}).then(function(res) {
							var text = res.bodyText;
							if (text === "success") {
								layer.close(ind);
								v.comments.splice(index, 1);
								v.page.total -= 1;
								
								this.getComments();
								 setTimeout("page()",400); 								
								
								layer.msg("操作成功", {
									time : 1000
								});
								
							} else {
								layer.msg("操作异常");
							}
						})
					} */
					);
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
			},
			filters : {
				filterA : function(value) {
					var reg = /<[^>]+>/ig;//1、全局匹配g肯定忘记写,2、<>标签中不能包含标签实现过滤HTML标签
					value = value.replace(reg, '');//替换HTML标签
					value = value.replace(/&nbsp;/ig, '');//替换HTML空格

					return value;
				}
			},
			created : function() {
				//this.getComments();
				this.getColumns();
				this.getColumnByID();
				
			}

		});
		
		function page(){
			
			
			 var obj=layui.use(['laypage', 'layer'], function(){
						  var laypage = layui.laypage
						  ,layer = layui.layer;
						  laypage.render({
						    elem: 'demo7'
						    ,curr:vm.currentPage
						    ,count: vm.page.total
						    ,limit:vm.page.pageSize
						    ,layout: [ 'prev', 'page', 'next', 'refresh', 'skip']
						    ,jump: function(obj,first){
						    	//首次不执行
						    //	if(!first){
						    	
						    	vm.currentPage=obj.curr;//设置当前页
						    	vm.getComments();
						    //	}
						    	
						    }
						  });
						  //将一段数组分页展示
						});
			}
		function article_page(){
		
			layui.use(['laypage', 'layer'], function(){
				  var laypage = layui.laypage
				  ,layer = layui.layer;
				  laypage.render({
				    elem: 'demo8'
				    ,curr:vm.article_currentPage	//当前页
				    ,count: vm.article_page.total	//数据总数
				    ,limit:vm.pageSize	//一页多少条数据
				    ,layout: [ 'prev', 'page', 'next',  'skip']
				    ,jump: function(obj,first){
				    	//首次不执行
				   		
				    	vm.article_currentPage=obj.curr;//设置当前页
				    	vm.getColumnByID();
						
				    }
				  });
				  //将一段数组分页展示
				});
			
		}
		
		$(function() {
				//vm.getComments();
			
				 
				 setTimeout("article_page()",200); 
				 setTimeout("vm.getFistAid()",400); 
				 
		});
	</script>
</body>
</html>