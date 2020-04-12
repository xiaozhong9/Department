<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<jsp:include page="../../commonCss.jsp"></jsp:include>
<c:set var="root"  value="${pageContext.request.contextPath}"></c:set>
<link rel="stylesheet" href="${root}/js/css/layui.css"  media="all">
<title>资讯列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 资讯管理 <span class="c-gray en">&gt;</span> 资讯列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container" id="box">
	<div class="text-c">
		<button onclick="removeIframe()" class="btn btn-primary radius">关闭选项卡</button>
		</span> 日期范围：
		<input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })" id="logmin" class="input-text Wdate" style="width:120px;">
		-
		<input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })" id="logmax" class="input-text Wdate" style="width:120px;">
		<input type="text" name="" id="condition" placeholder="标题,作者" style="width:250px" class="input-text">
		<button name="" id="search" @click="search()" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜文章</button>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" @click="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe60b;</i> 批量删除</a> <a class="btn btn-primary radius" data-title="添加文章"  onclick="article_add('${root}/article/add')" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加文章</a>  <a data-href="${root}/recovery" class="btn btn-primary radius" onClick="Hui_admin_tab(this)" data-title="回收站"    href="javascript:;"><i class="Hui-iconfont">&#xe6e2;</i> 回收站</a></span> <span class="r">共有数据：<strong v-text="page.total"></strong> 条</span> </div>
	<div class="mt-20">
			<table
				class="table-sort table table-border table-bordered table-bg table-hover  table-responsive" id="table">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" id="all" value="-1"></th>
						<th width="80">作者</th>
						<th>标题</th>
						<th width="80">编辑人</th>
						<th width="80">副标题</th>
						<th width="120">发布时间</th>
						<th width="75">浏览次数</th>
					
						<th width="120">操作</th>
					</tr>
				</thead>
				<tbody id="body">
					<tr class="text-c" v-for="(article,index) in articles" v-if="index<=pageSize">
						<td><input type="checkbox" :value="article.aid" name=""></td>
						<td v-text="article.author"></td>
						<td class="text-l"><u style="cursor: pointer"
							class="text-primary"
							@Click="article_show(article.title,'${root}/aritcle/show',article.aid)"
							title="查看" v-text="article.title"></u></td>
						<td v-text="article.editor"></td>
						<td v-text="article.subtitle"></td>
						<td v-text="article.pubTime"></td>
						<td v-text="article.viewCount"></td>
						
						<td class="f-14 td-manage"> <a
							style="text-decoration: none" class="ml-5"
							@click="article_edit('文章编辑','${root}/edit/article',article.aid)"
							href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
							<a style="text-decoration: none" class="ml-5"
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
$(function(){
	vm.getArticles();
 	/* $(".select").change(function(res){
		vm.currentPage=res.target.value;
	}) */ 
	setTimeout("page()",200);
	
})

var vm=new Vue({		
	el:"#box",
	data:{
			currentPage:1,//当前页
			pageSize:10,//一页多少条
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
				this.articles=res.body.list;
				this.page=res.body;
			})
		},
		/*文章-查看*/
		 article_show:function(title,url,id,w,h){
			localStorage.setItem('Aid',id);
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
		/*文章-编辑*/
		 article_edit:function(title,url,id){
			localStorage.setItem('update_Aid',id);
	 		var index = layer.open({
				type: 2,
				maxmin: true,
				title: title,
				content: url
			});
			layer.full(index); 
			
		},//批量删除
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
			
					  $.ajax({
							url:"${root}/admin/article/recycling",
							data:"Aids="+obj,
							type:"POST",
							success:function(msg){
								if("success"==msg){
								layer.msg("删除成功");
								$("#table input[type='checkbox']").prop("checked",false);
								vm.getArticles();
								setTimeout("page()",200);
								}
							},
							error:function(){
								alert("删除文章异常");
							}
							
						});  
			})
			
		},
		/*文章-下架*/
		article_stop:function (id,index){
			var v=this;
			layer.confirm('确认要下架吗？',function(index1){
				$.ajax({
					url:"${root}/admin/article/reject",
					type:"post",
					data:"Aid="+parseInt(id),
					success:function(res){
						if(res=="success"){
							v.articles.splice(index,1);
							v.page.total-=1;
							layer.msg('已下架!',{icon: 1,time:1000});
						}
					},
					error:function(){
					layer.msg('下架异常!',{icon: 5,time:1000});
					}
				})
			});
		},
		/*文章-删除*/
		article_del:function (id,index){
			var v=this;
			layer.confirm('确认要删除吗？',function(index1){
				$.ajax({
					url:"${root}/admin/article/delete/article",
					type:"post",
					data:"Aid="+parseInt(id),
					success:function(res){
						if(res=="success"){
							v.articles.splice(index,1);
							v.page.total-=1;
							layer.msg('已删除!',{icon: 1,time:1000});
						}
					},
					error:function(){
					layer.msg('删除异常!',{icon: 5,time:1000});
					}
				})
			});
		},//文章搜索 
		search:function(){
			var start=$("#logmin").val();
			var end=$("#logmax").val();
			var condition=$("#condition").val();
			this.$http.post("${root}/admin/article/search/articles",{
				start:start,
				end:end,
				condition:condition
			},{emulateJSON:true}).then(function(res){
				this.articles=res.body;
				this.page.total=res.body.length;
				console.log(res.body);
			})
		}
		
	}
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


/*资讯-添加*/
function article_add(url){
	var index = layer.open({
		type: 2,
		maxmin:true,
		area: ['1000px', '500px'],
		title: "文章添加",
		content: url
	});
	layer.full(index);
	
}





</script> 
</body>
</html>