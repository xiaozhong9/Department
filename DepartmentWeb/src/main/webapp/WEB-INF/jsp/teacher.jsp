<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="root" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>${article.title}</title>
<meta name="keywords" content="重庆市城乡建设委员会" />
<meta name="description"
	content="nbsp;渝建〔2018〕56号nbsp;重庆市城乡建设委员会关于征求《重庆市综..." />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<jsp:include page="../commonJs.jsp"></jsp:include>
<jsp:include page="../commonCss.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"
	href="${root}/static/layui/css/layui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/iview.css" />
<script type="text/javascript" src="${root}/static/layui/layui.js"></script>
<link rel="stylesheet" type="text/css"
	href="${root}/static/layui/css/modules/layer/default/layer.css">
<style type="text/css">
#comment {
	width: 100%;
}

.layui-util-face ul {
	width: 200px;
	overflow-x: scroll;
}

.left{
	font-weight: blod;
	font-size:20px;
}

#t td{
	width:200px;
	border: 1px solid #ddd;
}

#sc img {
	width: 18px;
	height: 18px;
}


#i { /* 按钮美化 */
	width: 70px; /* 宽度 */
	height: 30px; /* 高度 */
	border-width: 0px; /* 边框宽度 */
	border-radius: 3px; /* 边框半径 */
	background: #1E90FF; /* 背景颜色 */
	cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
	outline: none; /* 不显示轮廓线 */
	font-family: Microsoft YaHei; /* 设置字体 */
	color: white; /* 字体颜色 */
	font-size: 17px; /* 字体大小 */
}

#i { /* 鼠标移入按钮范围时改变颜色 */
	background: #5599FF;
}

.o {
	width: 100%;
	height: 100px;
	background: red;
}
</style>
<!--<![endif]-->
</head>
<body>
	<jsp:include page="../commonHead.jsp"></jsp:include>
	<nav data-am-widget="menu" class="am-menu  am-menu-dropdown1"
		data-am-menu-collapse> <a href="javascript: void(0)"
		class="am-menu-toggle"> <img src="${root}/img/ddh.png"
		alt="Menu Toggle" />
	</a>
	<ul class="am-menu-nav am-avg-sm-1 am-collapse">
		<li class="am-parent"><a href="#" class="">通知公告</a>
			<ul class="am-menu-sub am-collapse  am-avg-sm-2 ">

				<li class=""><a href="#">通知公告</a></li>

				<li class=""><a href="#">行业动态</a></li>

				<li class=""><a href="#">办事指南</a></li>

			</ul></li>
		<li class="am-parent"><a href="#" class="">政策法规</a>
			<ul class="am-menu-sub am-collapse  am-avg-sm-2 ">

				<li class=""><a href="#">国家级</a></li>

				<li class=""><a href="#">省部级</a></li>

				<li class=""><a href="#">地市级</a></li>

			</ul></li>
		<li class="am-parent"><a href="#" class="">建筑节能</a>
			<ul class="am-menu-sub am-collapse  am-avg-sm-2 ">

				<li class=""><a href="#">建筑节能</a></li>

			</ul></li>
		<li class="am-parent"><a href="#" class="">科技推广</a>
			<ul class="am-menu-sub am-collapse  am-avg-sm-2 ">

				<li class=""><a href="#">科技快讯</a></li>

				<li class=""><a href="/a/kejituiguang/kejichengguo/">科技成果</a></li>

				<li class=""><a href="/a/kejituiguang/tuiguangyuyingyong/">推广与应用</a>
				</li>

				<li class=""><a href="/a/kejituiguang/jishujiaoliu/">技术交流</a></li>

			</ul></li>
		<li class="am-parent"><a href="/a/youxiugongcheng/" class="">优秀工程</a>
			<ul class="am-menu-sub am-collapse  am-avg-sm-2 ">

				<li class=""><a href="/a/youxiugongcheng/jianzhugongcheng/">建筑工程</a>
				</li>

				<li class=""><a href="/a/youxiugongcheng/kanchagongcheng/">勘察工程</a>
				</li>

				<li class=""><a href="/a/youxiugongcheng/shizhenggongcheng/">市政工程</a>
				</li>

				<li class=""><a href="/a/youxiugongcheng/chengshiguihua/">城市规划</a>
				</li>

				<li class=""><a href="/a/youxiugongcheng/zhuanxiangsheji/">专项设计</a>
				</li>

			</ul></li>
		<li class="am-parent"><a href="/a/mingyuanzhanshi/" class="">名院展示</a>
			<ul class="am-menu-sub am-collapse  am-avg-sm-2 ">

				<li class=""><a href="/a/mingyuanzhanshi/mingyuanzhanshi/">名院展示</a>
				</li>

			</ul></li>
		<li class="am-parent"><a href="/a/lianxiwomen/lianxiwomen/"
			class="">联系我们</a>
			<ul class="am-menu-sub am-collapse  am-avg-sm-2 ">

				<li class=""><a href="/a/lianxiwomen/lianxiwomen/">联系我们</a></li>

			</ul></li>
	</ul>
	</nav>

	<div class="bannern c">
		<div class="jz c">
			<div class="nbnbte"></div>
			<div class="nbnbtz">${columnTitle}</div>
		</div>
	</div>
	<div class="n_cont c">
		<div class="jz c">
			<div class="ny_nav" id="my_sticky">
				<div class="wjssbt c">${columnTitle}</div>
				<div class="wjssbtt c">
					<img src="${root}/img/20170828093153142.jpg" width="252"
						height="106" alt="电子信息系">
				</div>
				<ul class="wjsndh c">

					<li class="c"><a href="#"> 通知公告 <span> > </span>
					</a></li>

					<li class="c"><a href="#"> 行业动态 <span> > </span>
					</a></li>

					<li class="c"><a href="#"> 办事指南 <span> > </span>
					</a></li>

				</ul>
			</div>
			<script>
				$(window).bind(
						'scroll',
						function() {
							var div_h = $('.ny_nav').height(); // div的高度
							var foot_h = $(".foot").offset().top
									- $(window).scrollTop(); // foot到顶部的距离
							var con_h = $('.ny_zqw_chb').offset().top
									- $(window).scrollTop(); // con到顶部的距离
							if (con_h <= 0) {
								$('#my_sticky').addClass('ny_nav_chb');
								if (foot_h - div_h <= 0) {
									$('#my_sticky').css({
										'top' : 'auto',
										'bottom' : $(window).height() - foot_h
									})
								} else {
									$('#my_sticky').css({
										'top' : '0',
										'bottom' : 'auto'
									})
								}
							} else {
								$('#my_sticky').removeClass('ny_nav_chb');
							}
						});
			</script>
			<c:if test="${teacher!=null}">
				<div class="ny_zqw ny_zqw_chb" id="box">
					<div class="nw_top">
						<span
							class="top_mbx r">您的位置：<a href='${root}'>主页</a> > <a
							href="${pageContext.request.contextPath }/column/get/column/articles/${columnID}">教师</a>
							><span id="title">${teacher.name}</span>
						</span>
					</div>
					<!--内页正文-->
					<div class="bjbld">
						<div class="xqbt">${teacher.name}</div>
						<div class="xqbtnm">
							<div class="xqbrq">
								<span	class="ckrs l"><b style="font-weight: 100;"></b></span> <a
									href="${pageContext.request.contextPath }/column/get/column/articles/${columnID}"
									class="ybfh r">返回列表</a>
							</div>
						</div>
						<div class="xqxq">
							<ul data-am-widget="gallery"
								class="am-gallery sm-block-grid-2
  md-block-grid-3 lg-block-grid-4 am-gallery-imgbordered"
								data-am-gallery="{  }">
								<li>
									<div class="am-gallery-item">
											 <img 
											src="/upload/teacher/${teacher.imgUrl}"
											alt="图片不存在" /> 
											<div>
											<table id="t">
												<tr>
													<td class="left"><span>姓名:</span>${teacher.name}(${teacher.nickName})</td>
													<td class="left"><span>学历:</span>${teacher.name}(${teacher.education})</td>
													<td class="left"><span>职称:</span>${teacher.jobTitle}</td>
												</tr>
												<tr>
													<td class="left"><span>兼职:</span>${teacher.job}</td>
													<td class="left"><span>历任课程:</span>${teacher.curriculum}</td>
													<td class="left"><span>专业特长:</span>${teacher.Speciality}</td>
												</tr>
											</table>
											</div>
											<div class="am-gallery-desc ti">
											
										</div>
											
									</div>
								</li>

							</ul>
							<div class="xypxq">
								<a v-if="lastTeacher!=null"
									:href="['${root}/teacher/get/teacher/'+lastTeacher.id]"
									class='sypa l'><b>上一篇：</b><span v-if="lastTeacher != null"
									v-text="lastTeacher.name"></span> </a> <a v-else
									class='xypa l'> <b>上一篇：</b> 没有了
								</a> <a v-if="nextTeacher!=null"
									:href="['${root}/teacher/get/teacher/'+nextTeacher.id]"
									class='xypa r'><b>下一篇：</b><span v-if="nextTeacher != null"
									v-text="nextTeacher.name"></span></a> <a v-else
									class='xypa r'> <b>下一篇：</b> 没有了
								</a>
							</div>

						</div>
						<!--内页正文-->
					</div>
				</div>



			</c:if>
			<c:if test="${article==null }">
				<span id="error">${error}</span>
			</c:if>
		</div>
	</div>
	<script language="JavaScript" src="${root }/js/api.js"></script>
	<jsp:include page="../commonFooter.jsp"></jsp:include>
	<script type="text/javascript">
		var tid = '${teacher.id}';
		localStorage.setItem("tid",tid);
		$(function() {
		})
	</script>
	<script type="text/javascript" src="${root}/js/teacher.js"></script>

</body>
</html>