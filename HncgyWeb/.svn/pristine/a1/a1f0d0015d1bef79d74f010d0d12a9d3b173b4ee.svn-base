<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<c:set var="root" value="${pageContext.request.contextPath}"></c:set>
<link rel="stylesheet" href="${root}/js/css/layui.css" media="all">
<title>回收站</title>
</head>
<body>
	<nav class="breadcrumb">
	<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>回收站<span
		class="c-gray en">&gt;</span> 回收站<a class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="page-container" id="box">

		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" @click="datadel()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe60b;</i>
					批量删除</a></span> <span class="r">共有数据：<strong>{{articles.length}}</strong>
				条
			</span>
		</div>
		<div class="mt-20">
			<table
				class="table table-border table-bordered table-bg table-hover  table-responsive">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" id="all" name=""
							value="-1"></th>
						<th width="80">作者</th>
						<th>标题</th>
						<th width="80">编辑人</th>
						<th width="80">来源</th>
						<th width="120">更新时间</th>
						<th width="75">浏览次数</th>

						<th width="120">操作</th>
					</tr>
				</thead>
				<tbody id="body">
					<tr class="text-c" v-for="(article,index) in articles"
						v-if="index<=pageSize">
						<td><input type="checkbox" :value="article.aid" name=""></td>
						<td>{{article.author}}</td>
						<td class="text-l"><u style="cursor: pointer"
							class="text-primary"
							@Click="article_edit(article.title,'${root}/aritcle/show',article.aid)"
							title="查看">{{article.title}}</u></td>
						<td>{{article.editor}}</td>
						<td>H-ui</td>
						<td>{{article.pubTime}}</td>
						<td>{{article.viewCount}}</td>

						<td class="f-14 td-manage"><a style="text-decoration: none"
							@click="reduction(article.aid,index)" href="javascript:;"
							title="还原"><i class="Hui-iconfont">&#xe66b;</i></a> <a
							style="text-decoration: none" class="ml-5"
							@click="article_del(article.aid,index)" href="javascript:;"
							title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="demo7" class="am-show-landscape"></div>
	</div>
	<script type="text/javascript" src="${root}/js/layui.js"></script>
	<jsp:include page="../../commonJs.jsp"></jsp:include>

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript">


var vm=new Vue({		
	el:"#box",
	data:{
			currentPage:1,
			pageSize:10,
		page:{
			total:0,
			pageNum:1
		},
		articles:[
			{
				Aid:0,
				title:null,
				subtitle:null,
				author:null,
				pubTime:null,
				viewCount:0,
				editor:null,
				state:null,
				comment:null
			}
		]
	},
	methods:{
		getArticles:function(){
			this.$http.post("${root}/admin/article/find/articles",{
				currentPage:this.currentPage,
				pageSize:this.pageSize
			},{emulateJSON:true})
			.then(function(res){
				console.log(res.body);
				this.articles=res.body.list;
				this.page=res.body;
			})
		},
		/*文章-查看*/
		 article_edit:function(title,url,id,w,h){
			console.log("----"+id);
			localStorage.setItem('Aid',id);
			
			var index = layer.open({
				type: 2,
				area: ['1000px', '500px'],
				shade:0.3,
				shadeClose: true,
				title: title,
				content: url
			});
			
		},
		datadel:function(){
			var arr=$("#box input[type='checkbox']:checked");
			if(arr.length==0){
				layer.msg("请勾选文章",{time:1000});
				return
			}
			var length=arr.length;
			if($("#all").prop("checked")){
				length-=1;
			}
			layer.confirm("确认删除"+length+"篇文章吗?",{btn:['确认','取消'],title:"提示"},function(){
			var obj=new Array(arr.length);
			for(var i=0;i<arr.length;i++){
				obj[i]=parseInt(arr[i].value);
					}
			
				console.log(obj);
					   $.ajax({
							url:"${root}/admin/article/remove/articles",
							data:"Aids="+obj,
							type:"POST",
							success:function(msg){
								if("success"==msg){
								alert("删除文章发布成功");
								 for(var i=0;i<arr.length;i++){
									$(arr[i]).parent().parent().remove();
								} 
								}
							},
							error:function(){
								alert("删除文章异常");
							}
							
						}); 
			});
			
		},/*回收站*/
		recovery:function(){
			this.$http.post("${root}/admin/article/recovery"
					).then(function(res){
						this.articles=res.body;
						this.page.total=this.articles.length;
			})
		},/*还原文章*/
		reduction:function(aid,index){
			if(confirm("确认还原吗?")){
				this.$http.post("${root}/admin/article/modify/state",{
					Aid:parseInt(aid)
				},{emulateJSON:true}).then(function(res){
					if(res.bodyText=="success"){
				  	this.articles.splice(index,1)
					}else{
						layer.msg("还原文章异常");
					}
				})
			}
		},
		/*-删除文章*/
		 article_del:function(id,index){
			 var v=this;
			 if(confirm("确认删除吗?")){
					v.$http.post("${root}/admin/article/Destruction/article",{
					Aid:parseInt(id)
				},{emulateJSON:true}).then(function(res){
					console.log(res.bodyText);
					if(res.bodyText=="success"){
						
					   this.articles.splice(index,1)
						var a = parent.layer.getFrameIndex(window.name);
						parent.layer.close(a);
					}else{
						layer.msg("删除文章异常");
					}
				})
			 }
			 
		}
		
	}
})
$(function(){
	vm.recovery();
	/* vm.getArticles();
 	$(".select").change(function(res){
		vm.currentPage=res.target.value;
	}) 
	setTimeout("page()",200); */
	
})
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
			    	vm.getArticles();
			    //	}
			    	
			    }
			  });
			  //将一段数组分页展示
			});
}




</script>
</body>
</html>