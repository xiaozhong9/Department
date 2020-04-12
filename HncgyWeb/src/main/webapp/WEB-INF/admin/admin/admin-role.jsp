<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="../../commonCss.jsp"></jsp:include>
<jsp:include page="../../commonJs.jsp"></jsp:include>
</head>
<body>
	<nav class="breadcrumb">
	<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
	管理员管理 <span class="c-gray en">&gt;</span> 角色管理 <a
		class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="page-container" id="box">
		<div class="cl pd-5 bg-1 bk-gray">
			<span class="l"><c:if test="${admin.jurisdiction==1}">
					<a class="btn btn-primary radius" href="javascript:;"
						@click="admin_role_add('${pageContext.request.contextPath}/admin/add')"><i
						class="Hui-iconfont">&#xe600;</i> 添加角色</a>
				</c:if> </span> <span class="r">共有数据：<strong>{{admins.length}}</strong> 条
			</span>
		</div>
		<table class="table table-border table-bordered table-hover table-bg">
			<thead>
				<tr>
					<th scope="col" colspan="6">管理员管理</th>
				</tr>
				<tr class="text-c">
					<th width="200">角色名</th>
					<th>姓名</th>
					<th>帐号</th>
					<th width="200">手机</th>
					<th width="200">邮箱</th>
					<c:if test="${admin.jurisdiction==1}">
						<th width="70">操作</th>
					</c:if>
				</tr>
			</thead>
			<tbody>
				<tr class="text-c" v-for="(admin ,index) in admins">
					<td>{{admin.jurisdiction | jurisdiction }}</td>
					<td>{{admin.name}}</td>
					<td>{{admin.account}}</td>
					<td>{{admin.phone}}</td>
					<td>{{admin.email}}</td>
					<c:if test="${admin.jurisdiction==1}">
						<td class="f-14"><a title="修改密码" href="javascript:;"
							@click="admin_role_password('修改密码','${pageContext.request.contextPath}/admin/update/password',admin.id,admin.account)"
							style="text-decoration: none"><i class="Hui-iconfont">&#xe63f;
							</i></a> <a title="删除" href="javascript:;"
							@click="admin_role_del(admin.id,index)" class="ml-5"
							style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
					</c:if>
				</tr>
			</tbody>
		</table>
	</div>

	<script type="text/javascript">
		var vm = new Vue({
			el : "#box",
			data : {
				admins : [

				]
			},
			methods : {
				/*管理员-角色-获取*/
				admin_role_all : function() {
					this.$http.post("admin/all").then(function(res) {
						this.admins = res.body;
						console.log(this.admins);
					})
				},
				/*管理员-角色-添加*/
				admin_role_add : function(url) {
					
						var index = layer.open({
							type: 2,
							maxmin:true,
							area: ['1000px', '500px'],
							title: "管理员添加",
							content: url
						});
						layer.full(index);
					
					
				},
				/*管理员-角色-添加*/
				admin_role_edit : function(title, url, id, w, h) {

				},
				/*管理员-角色-密码修改*/
				admin_role_password : function(title, url, id,account) {
					localStorage.setItem("id",id);
					localStorage.setItem("account",account);
					layer_show(title,url,600,270);
				},
				/*管理员-角色-删除*/
				admin_role_del : function(id, i) {
					var t = this;
					layer.confirm('管理员删除须谨慎，确认要删除吗？', function(index) {
						t.$http.post(
								"${pageContext.request.contextPath}/admin/del",
								{
									id : id
								}, {
									emulateJSON : true
								}).then(function(res) {
							layer.closeAll('dialog');
							if (res.bodyText == "success") {
								layer.msg("删除成功");
								t.admins.splice(i, 1);
							} else {
								layer.msg("删除异常");
							}
						})
					});
				}
			},
			created : function() {
				this.admin_role_all();
			},
			filters : {
				jurisdiction : function(value) {
					if (value == 1) {
						return "超级管理员";
					}
					return "管理员";
				}
			}
		})
	</script>
</body>
</html>