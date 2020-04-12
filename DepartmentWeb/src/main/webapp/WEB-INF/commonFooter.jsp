<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="root" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>footer</title>
</head>
<body>
	<div class="foot" id="foot">
		<div class="jz">
			<div class="ssnb">
				<ul class="dbdh l">
					<li v-for="column in columns"><a
						:href="'${pageContext.request.contextPath}/column/get/column/articles/'+column.column.columnID">{{column.column.columnTitle}}</a></li>
				</ul>
				<div class="hhan r">
					<a href="${root}"><img
						src="${pageContext.request.contextPath}/img/1_108.png"></a>
				</div>
			</div>
			<div class="egwm">
				<img src="${pageContext.request.contextPath}/img/1561600150.png"
					class="ewmtpw" alt="二维码">
				<div class="lxfsa">
					<span class="ytbts">湖南财经工业职业技术学院</span> <span class="ytbta">电话：400-123-4567</span>
					<span class="ytbta">传真：+86-123-4567</span> <span class="ytbta">邮箱：admin@admin.com</span>
					<span class="ytbta">地址：湖南省衡阳市湖南财经工业职业技术学院 </span>
				</div>
			</div>
			<div class="dbxx">
				Copyright © 2018-2019 二教401 版权所有 <a href="javascript:void(0)"
					target="_blank">Power by DeDe58</a> 备案号：湘ICP备19014598号
				&nbsp;&nbsp;技术支持： <a target="_blank"
					href="http://wpa.qq.com/msgrd?v=3&uin=626508458&site=qq&menu=yes"><img
					border="0" src="http://wpa.qq.com/pa?p=2:626508458:41" alt="技术员一"
					title="技术员一" /></a> <a target="_blank"
					href="http://wpa.qq.com/msgrd?v=3&uin=250353831&site=qq&menu=yes"><img
					border="0" src="http://wpa.qq.com/pa?p=2:250353831:51" alt="技术员二"
					title="技术员二" /></a>
			</div>
		</div>
	</div>
	<div data-am-widget="gotop" class="am-gotop am-gotop-fixed" 3>
		<a href="#top" title=""> <img class="am-gotop-icon-custom"
			src="${pageContext.request.contextPath}/img/top.jfif"  >
		</a>
	</div>
</body>
<script type="text/javascript">
	var vm = new Vue(
			{
				el : "#foot",
				data : {
					columns : [ {
						//栏目下的文章
						article : [ {
							Aid : 0,
							title : null,
							pubTime : null
						} ],
						column : {
							//栏目Id
							columnID : 0,
							//栏目标题
							columnTitle : null,
							//栏目描述
							explains : null
						}
					}, {
						//栏目下的文章
						article : [ {
							Aid : 0,
							title : null,
							pubTime : null
						} ],
						column : {
							//栏目Id
							columnID : 0,
							//栏目标题
							columnTitle : null,
							//栏目描述
							explains : null
						}
					}, {
						//栏目下的文章
						article : [ {
							Aid : 0,
							title : null,
							pubTime : null
						} ],
						column : {
							//栏目Id
							columnID : 0,
							//栏目标题
							columnTitle : null,
							//栏目描述
							explains : null
						}
					}, {
						//栏目下的文章
						article : [ {
							Aid : 0,
							title : null,
							pubTime : null
						} ],
						column : {
							//栏目Id
							columnID : 0,
							//栏目标题
							columnTitle : null,
							//栏目描述
							explains : null
						}
					}, {
						//栏目下的文章
						article : [ {
							Aid : 0,
							title : null,
							pubTime : null
						} ],
						column : {
							//栏目Id
							columnID : 0,
							//栏目标题
							columnTitle : null,
							//栏目描述
							explains : null
						}
					}, {
						//栏目下的文章
						article : [ {
							Aid : 0,
							title : null,
							pubTime : null
						} ],
						column : {
							//栏目Id
							columnID : 0,
							//栏目标题
							columnTitle : null,
							//栏目描述
							explains : null
						}
					},

					]
				},
				methods : {
					getColumns : function() {
						this.$http
								.post(
										"${pageContext.request.contextPath}/column/get/columns",
										{}, {
											emulateJSON : true
										}).then(function(res) {
									this.columns = res.body.data;
								})
					}
				},
				created : function() {
					this.getColumns();
				}
			})
</script>
</html>