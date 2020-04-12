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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/iview.css" />
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

.layui-clear li {
	
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

	<div class="bannern c">
		<div class="jz c">
			<div class="nbnbte"></div>
			<div class="nbnbtz">${columnTitle}</div>
		</div>
	</div>
	<div class="n_cont c" >
		<div class="jz c">
			<div class="ny_nav" id="my_sticky">
				<div class="wjssbt c">热门文章</div>
				<ul class="wjsndh c">
					<li class="c" v-for="hot in hotArticlesObj"><a :href="['${root}/article/get/article/'+hot.aid+'/'+hot.cid]"> {{hot.title | sub}} <span> > </span>
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
			<c:if test="${article!=null}">
				<div class="ny_zqw ny_zqw_chb" id="box">
					<div class="nw_top">
						<span class="top_tzbt l">${columnTitle}</span> <span
							class="top_mbx r">您的位置：<a href='${root}'>主页</a> > <a
							href="${pageContext.request.contextPath }/column/get/column/articles/${columnID}">${columnTitle}</a>
							><span id="title"></span>
						</span>
					</div>
					<!--内页正文-->
					<div class="bjbld">
						<div class="xqbt">${article.title}</div>
						<div class="xqbtnm">
							<div class="xqbrq">
								<span class="rqds l">${article.pubTime }</span> <span
									class="ckrs l"><b style="font-weight: 100;"></b></span> <a
									href="${pageContext.request.contextPath }/column/get/column/articles/${columnID}"
									class="ybfh r">返回列表</a>
							</div>
						</div>
						<div class="xqxq">
							<div style="text-align: right">
								&nbsp;湖南省衡阳珠晖区狮山路20号<br /> &nbsp;
							</div>
							<div style="text-align: center">
								<br /> <span id="title">${article.title}</span><br /> <span
									id="subTitle">${article.subtitle}</span> &nbsp;
							</div>
							<div style="text-align: left">${article.content }
								<br />
								<div style="text-align: right">
									编辑人:${article.editor}<br /> ${article.pubTime }<br /> &nbsp;
								</div>
							</div>
							<div class="xypxq">
								<a v-if="lastArticle!=null"
									:href="['${root}/article/get/article/'+lastArticle.aid+'/'+lastArticle.columnID]"
									class='sypa l'><b>上一篇：</b><span v-if="lastArticle != null"
									v-text="lastArticle.articleTitle"></span> </a> <a v-else
									class='xypa l'> <b>上一篇：</b> 没有了
								</a> <a v-if="nextArticle!=null"
									:href="['${root}/article/get/article/'+nextArticle.aid+'/'+nextArticle.columnID]"
									class='xypa r'><b>下一篇：</b><span v-if="nextArticle != null"
									v-text="nextArticle.articleTitle"></span></a> <a v-else
									class='xypa r'> <b>下一篇：</b> 没有了
								</a>
							</div>

							<c:if test="${article.comment==1}">
							<div id="comment">
								<textarea id="demo" style="display: none;"></textarea>
								<button id="i" data-ripple>发送</button>
								<scroll :on-reach-bottom="handleReachBottom" id="sc"> <card
									dis-hover v-for="(item, index) in olines" :key="index"
									style="margin:12px 0;"> {{item.tourist}} :<span style="margin-left:5px;"
									v-html="item.content"></span> <span style="float: right">{{item.pubTime
									| formatDate}}</span> </card> </scroll>
							</div>
							</c:if>
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
	var aid = ${article.aid};
	var columnID = ${columnID};
	var obj = ${obj};
	var email = '${email}';
	
	localStorage.setItem("email",email);
	localStorage.setItem("obj",obj);
	localStorage.setItem("aid",aid);
	localStorage.setItem("columnID",columnID);
	function title(){
		var title='${article.title}';
		if(title.length>5){
			title=title.substring(0,5);
			title+="...";
		}
		$("#title").text(title);
	}
	$(function(){
		title();
	})
	</script>
	<script type="text/javascript" src="${root}/js/article.js"></script>

</body>
</html>