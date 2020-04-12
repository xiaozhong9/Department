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
		<input type="text" name="" id="" placeholder=" 资讯名称" style="width:250px" class="input-text">
		<button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜资讯</button>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"> <a class="btn btn-primary radius" data-title="添加文章" data-href="${root}/article/add" onclick="Hui_admin_tab(this)" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加文章</a></span> <span class="r">共有数据：<strong>{{page.total}}</strong> 条</span> </div>
	<div class="mt-20">
			<table
				class="table table-border table-bordered table-bg table-hover  table-responsive">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="80">作者</th>
						<th>标题</th>
						<th width="80">编辑人</th>
						<th width="80">副标题</th>
						<th width="120">更新时间</th>
						<th width="75">浏览次数</th>
						<!-- <th width="60">发布状态</th>
						<th width="120">操作</th> -->
					</tr>
				</thead>
				<tbody id="body">
					<tr class="text-c" v-for="(article,index) in articles" v-if="index<=pageSize">
						<td><input type="checkbox" :value="article.aid" :title="article.title" name=""></td>
						<td>{{article.author}}</td>
						<td class="text-l"><u style="cursor: pointer"
							class="text-primary"
							@Click="article_edit(article.title,'${root}/aritcle/show',article.aid)"
							title="查看"><a>{{article.title}}</a></u></td>
						<td>{{article.editor}}</td>
						<td>{{article.subtitle}}</td>
						<td>{{article.pubTime}}</td>
						<td>{{article.viewCount}}</td>
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
var cID= localStorage.columnID;
var cTitle= localStorage.columnTitle;

var vm=new Vue({		
	el:"#box",
	data:{
			currentPage:1,
			pageSize:10,
		page:{
			total:0,	//一共多少条数据
			pages:1		//一共多少页
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
			this.$http.post("${root}/admin/ac/get/larticles",{
				currentPage:this.currentPage,
				pageSize:this.pageSize,
				columnID:cID
			},{emulateJSON:true})
			.then(function(res){
				console.log(res.body);
				this.articles=res.body.list;//获取所有文章
				this.page.total=res.body.total;//设置数据总数
				this.page.pages=res.body.pages;//获取总页数
			})
		}, article_edit:function(title,url,id,w,h){
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
			
		}
		
	}
})
$(function(){
	vm.getArticles();
	
	setTimeout("page()",100);
})

//分页
function page(){
 var obj=layui.use(['laypage', 'layer'], function(){
			  var laypage = layui.laypage
			  ,layer = layui.layer;
			  laypage.render({
			    elem: 'demo7'
			    ,curr:vm.currentPage	//当前页
			    ,pages:vm.page.pages	//总页数
			    ,count: vm.page.total	//数据总数
			    ,limit:vm.pageSize	//一页多少条数据
			    ,layout: [ 'prev', 'page', 'next', 'refresh', 'skip']
			    ,jump: function(obj,first){
			    	//首次不执行
			    	if(!first){
			    	vm.currentPage=obj.curr;//设置当前页
			    	vm.getArticles();
			    	}
			    }
			  });
			  //将一段数组分页展示
			});
	}

//批量添加
function Hui_admin_tab(){
	var arr=$("#body input[type='checkbox']:checked");
	if(arr.length==0){
		layer.msg("请勾选文章",{time:1000});
		return
	}
	var obj=new Array(arr.length);
	var column={"columnID":cID,"columnTitle":cTitle};
	for(var i=0;i<arr.length;i++){
		obj[i]={"aid":arr[i].value,"title":arr[i].title}
			}
	$.ajax({
		url:"/HncgyWeb/admin/column/save/articles",
		data:JSON.stringify({"articles":obj,"column":column}),
		traditional:true,
		type:"POST",
		contentType:'application/json;charset=utf-8',
		success:function(msg){
		alert("添加成功");
			/* for(var i=0;i<arr.length;i++){
				$(arr[i]).parent().parent().remove();
			} */
			
			vm.getArticles();
			vm.page.total-=obj.length;
			$("#body input[type='checkbox']").prop("checked",false);
			setTimeout("page()",100);
			
		},
		error:function(){
			alert("添加文章异常");
		}
		
	});	
	
}

/*资讯-添加*/
function article_add(title,url,w,h){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*资讯-编辑*/
function article_edit(title,url,id,w,h){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*资讯-删除*/
function article_del(obj,id){
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

/*资讯-审核*/
function article_shenhe(obj,id){
	layer.confirm('审核文章？', {
		btn: ['通过','不通过','取消'], 
		shade: false,
		closeBtn: 0
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布', {icon:6,time:1000});
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
		$(obj).remove();
    	layer.msg('未通过', {icon:5,time:1000});
	});	
}
/*资讯-下架*/
function article_stop(obj,id){
	layer.confirm('确认要下架吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
		$(obj).remove();
		layer.msg('已下架!',{icon: 5,time:1000});
	});
}

/*资讯-发布*/
function article_start(obj,id){
	layer.confirm('确认要发布吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布!',{icon: 6,time:1000});
	});
}
/*资讯-申请上线*/
function article_shenqing(obj,id){
	$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">待审核</span>');
	$(obj).parents("tr").find(".td-manage").html("");
	layer.msg('已提交申请，耐心等待审核!', {icon: 1,time:2000});
}

</script> 
</body>
</html>