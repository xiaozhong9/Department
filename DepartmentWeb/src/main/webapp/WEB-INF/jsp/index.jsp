<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="root" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="root" value="${root}" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="author" content="order by dede58.com/">
<title>湖南财经学院电子信息系</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="Shortcut Icon" href="${root}/img/hncgy.jpg" />
<jsp:include page="../commonCss.jsp"></jsp:include>
<!--[if (gte IE 9)|!(IE)]><!-->

<!--<![endif]-->
<jsp:include page="../commonJs.jsp"></jsp:include>
<title>电子信息系</title>
<style type="text/css">
.classA {
	margin-right: 0;
}
</style>
</head>
<body>
	<jsp:include page="../commonHead.jsp"></jsp:include>
	<div id="box">
		<!-- 代码区 -->


		<div class="banner">
			<div data-am-widget="slider"
				class="am-slider am-slider-a2 am-no-layout"
				data-am-slider="{&quot;directionNav&quot;:false,&quot;slideshowSpeed&quot;: 3000}">
				<div class="am-viewport"
					style="overflow: hidden; position: relative;">
					<ul id="father" class=""
						style="width: 800%; transition-duration: 0s; transform: translate3d(-1897px, 0px, 0px);">
						<li
							style="width: 1897px; margin-right: 0px; float: left; display: block;"
							class="clone" aria-hidden="true">
							<div class="pool ddsgg"
								style="background: url(img/banner1.png) no-repeat center;">
								<div class="jz">
									<div class="bn_bt"></div>
								</div>
							</div>
						</li>




					</ul>
				</div>
			</div>
		</div>
		<div class="sbanner">
			<!--<div data-am-widget="slider" class="am-slider am-slider-b1" data-am-slider='{"controlNav":false,"slideshowSpeed": 3000}' >-->
			<ul class="am-slides">
				<li>
					<div class="ddsgg"
						style="background: url(${root}/img/wap.jpg) no-repeat center;">
						<div class="jz">
							<div class="bn_bt"></div>
						</div>
					</div>
				</li>
				<!--</div>-->
		</div>
		<div class="hot">
			<div class="jz" id="jxc">
				<div class="hot_gz l">
					今日关注 <span>${date}</span>
				</div>
				<div class="hot_news l" id="today">
					<div class="txc" v-for="today in todays">
					<a :href="'${root}/today/get/'+today.Aid" class="h_bt" v-text="today.title"></a>
					<a :href="'${root}/today/get/'+today.Aid" class="h_nr" >{{today.content|filterA}}</a>
					</div>
					
				</div>
			</div>
		</div>
		<div class="cont">
			<div class="jz">
				<div class="c_bka" id="c_bka">
					<div data-am-widget="slider"
						class="am-slider am-slider-c4 c_bkat l am-no-layout"
						data-am-slider="{&quot;slideshowSpeed&quot;: 4000, &quot;controlNav&quot;:false}"
						style="padding: 7px;">
						<div class="am-viewport"
							style="overflow: hidden; position: relative;">
							<ul class="" id="img_ula"
								style="width: 800%; transition-duration: 0s; transform: translate3d(-1072px, 0px, 0px);">
								<li v-if="activitys[0].id>0" v-for="activity in activitys"
									class="" aria-hidden="true"
									style="width: 536px; margin-right: 0px; float: left; display: block;">
									<a
									:href="'${pageContext.request.contextPath }/activity/get/activity/'+activity.id">
										<img style="width: 536px; height: 324px;"
										:src="'/upload/activity/'+activity.cover"
										:alt="activity.title" draggable="false">
										<div class="am-slider-desc" v-text="activity.title"></div>
								</a>
								</li>

								<!-- <li class="clone" aria-hidden="true"
									style="width: 536px; margin-right: 0px; float: left; display: block;">
									<a
									href="http://127.0.0.1:8080/a/tongzhigonggao/tongzhigonggao/62.html">
										<img src="uploads/180307/1-1P30GGF92T.jpg"
										alt="关于转发住房城乡建设部办公厅进一步推进勘察" draggable="false">
										<div class="am-slider-desc">关于转发住房城乡建设部办公厅进一步推进勘察</div>
								</a>
								</li>
								<li
									style="width: 536px; margin-right: 0px; float: left; display: block;"
									class=""><a
									href="http://127.0.0.1:8080/a/tongzhigonggao/tongzhigonggao/60.html">
										<img src="uploads/180307/1-1P30GGJ3G1.jpg"
										alt="关于2017年下半年房屋建筑和市政基础设施工程勘" draggable="false">
										<div class="am-slider-desc">关于2017年下半年房屋建筑和市政基础设施工程勘</div>
								</a></li>
								<li
									style="width: 536px; margin-right: 0px; float: left; display: block;"
									class="am-active-slide"><a
									href="http://127.0.0.1:8080/a/tongzhigonggao/tongzhigonggao/62.html">
										<img src="uploads/180307/1-1P30GGF92T.jpg"
										alt="关于转发住房城乡建设部办公厅进一步推进勘察" draggable="false">
										<div class="am-slider-desc">关于转发住房城乡建设部办公厅进一步推进勘察</div>
								</a></li>

								<li
									style="width: 536px; margin-right: 0px; float: left; display: block;"
									class="clone" aria-hidden="true"><a
									href="http://127.0.0.1:8080/a/tongzhigonggao/tongzhigonggao/60.html">
										<img src="uploads/180307/1-1P30GGJ3G1.jpg"
										alt="关于2017年下半年房屋建筑和市政基础设施工程勘" draggable="false">
										<div class="am-slider-desc">关于2017年下半年房屋建筑和市政基础设施工程勘</div>
								</a></li> -->
							</ul>
						</div>
						<!-- <ul class="am-direction-nav">
							<li class="am-nav-prev"><a class="am-prev"
								href="http://127.0.0.1:8080/#"> </a></li>
							<li class="am-nav-next"><a class="am-next"
								href="http://127.0.0.1:8080/#"> </a></li>
						</ul> -->
					</div>
					<div class="c_ycxw r">
						<div data-am-widget="tabs"
							class="am-tabs am-tabs-default am-no-layout">
							<ul class="am-tabs-nav am-cf" id="ul_onmouse">
								<li class="am-active"><a
									href="http://127.0.0.1:8080/[data-tab-panel-0]"
									v-text="columns[0].column.columnTitle"></a></li>
								<li class=""><a
									href="http://127.0.0.1:8080/[data-tab-panel-1]"
									v-text="columns[1].column.columnTitle"></a></li>
								<li class=""><a
									href="http://127.0.0.1:8080/[data-tab-panel-1]"
									v-text="columns[2].column.columnTitle"></a></li>
							</ul>
							<div class="am-tabs-bd"
								style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
								<div data-tab-panel-0="" class="am-tab-panel am-active">
									<ul class="cyc_cnw">
										<li v-for="(article ,index) in columns[0].article"
											v-if="index<size[0]"><a
											:href="['${root}/article/get/article/'+article.aid+'/'+columns[0].column.columnID]"
											class="sjbzn l" v-text="article.title"></a> <span class="r"
											v-text="article.pubTime"></span></li>
									</ul>
									<a
										:href="['${root}/column/get/column/articles/'+columns[0].column.columnID]">
										<div class="am-tab-panel_more c">
											查看更多 <span>&gt;</span>
										</div>
									</a>
								</div>
								<div data-tab-panel-1="" class="am-tab-panel ">

									<ul class="cyc_cnw">
										<li v-for="(article ,index) in columns[1].article"
											v-if="index<size[0]"><a
											:href="['${root}/article/get/article/'+article.aid+'/'+columns[1].column.columnID]"
											class="sjbzn l" v-text="article.title"></a> <span class="r"
											v-text="article.pubTime"></span></li>
									</ul>
									<a
										:href="['${root}/column/get/column/articles/'+columns[1].column.columnID]">
										<div class="am-tab-panel_more c">
											查看更多 <span>&gt;</span>
										</div>
									</a>
								</div>
								<div data-tab-panel-2="" class="am-tab-panel ">
									<ul class="cyc_cnw">
										<li v-for="(article ,index) in columns[2].article"
											v-if="index<size[0]"><a
											:href="['${root}/article/get/article/'+article.aid+'/'+columns[2].column.columnID]"
											class="sjbzn l" v-text="article.title"></a> <span class="r"
											v-text="article.pubTime"></span></li>
									</ul>
									<a
										:href="['${root}/column/get/column/articles/'+columns[2].column.columnID]">
										<div class="am-tab-panel_more c">
											查看更多 <span>&gt;</span>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="c_bkb">
					<div class="c_jzjn l">
						<div class="c_jzbt">
							<span class="zwbtz l" v-text='columns[3].column.columnTitle'></span>
							<span class="ywfb l">&nbsp;/&nbsp;Work dynamics</span> <a
								:href="['${root}/column/get/column/articles/'+columns[3].column.columnID]"
								class="ywfr r"></a>
						</div>
						<div class="c_jznr">
							<ul class="c_jnnl l">
								<li v-for="(article ,index) in  columns[3].article"
									v-if="index<size[1]"><a
									:href="['${root}/article/get/article/'+article.aid+'/'+columns[3].column.columnID]"
									class="sjbzn l" v-text="article.title"></a> <span class="r"
									v-text="article.pubTime"></span></li>
							</ul>
							<ul class="c_jnnl p_sjc r">
								<li v-for="(article ,index) in  columns[3].article"
									v-if="index>=size[1]&&index<14"><a
									:href="['${root}/article/get/article/'+article.aid+'/'+columns[3].column.columnID]"
									class="sjbzn l" v-text="article.title"></a> <span class="r"
									v-text="article.pubTime"></span></li>
							</ul>
							<ul class="c_jnnl p_sjd l">
								<li><a
									href="http://127.0.0.1:8080/a/jianzhujienen/jianzhujienen/145.html"
									class="sjggw l">关于2018年第一批二级注册结构工程师初始注册申</a> <span class="r">2018-03-07</span>
								</li>
								<li><a
									href="http://127.0.0.1:8080/a/jianzhujienen/jianzhujienen/144.html"
									class="sjggw l">关于推荐第五届重庆市建设工程勘察设计专家咨</a> <span class="r">2018-03-07</span>
								</li>
								<li><a
									href="http://127.0.0.1:8080/a/jianzhujienen/jianzhujienen/143.html"
									class="sjggw l">关于公示2017年第五批建设工程勘察设计企业资质</a> <span class="r">2018-03-07</span>
								</li>
								<li><a
									href="http://127.0.0.1:8080/a/jianzhujienen/jianzhujienen/142.html"
									class="sjggw l">关于转发住房城乡建设部办公厅进一步推进勘察</a> <span class="r">2018-03-07</span>
								</li>
								<li><a
									href="http://127.0.0.1:8080/a/jianzhujienen/jianzhujienen/141.html"
									class="sjggw l">关于开展重庆市建筑信息模型（BIM）应用技术专</a> <span class="r">2018-03-07</span>
								</li>

							</ul>
						</div>
					</div>
					<div class="c_xxzn r">
						<div class="c_xxt">
							<span class="zwbtz l">信息指南</span> <span class="ywfb l">&nbsp;/&nbsp;Information
								Guide</span> <a href="http://127.0.0.1:8080/#" class="ywfr r"></a>
						</div>
						<ul class="dbxgn jkzx">
							<li><a href="http://www.weather.com.cn/" target="_blank">
									<img src="img/1_26.png" alt="天气预报"><br> 天气预报
							</a></li>
							<li style="margin-right: 0"><a
								href="http://www.12306.cn/mormhweb/" target="_blank"> <img
									src="img/1_28.png" alt="铁路查询"><br> 铁路查询
							</a></li>
							<li style="margin-right: 0"><a
								href="https://wannianrili.51240.com/" target="_blank"> <img
									src="img/1_wannianli.png" alt="铁路查询"><br> 万年历
							</a></li>
							<li style="margin-right: 0"><a
								href="https://youbian.51240.com/" target="_blank"> <img
									src="img/1_youbian.png" alt="邮编查询"><br> 邮编查询
							</a></li>
							<li style="margin-right: 0"><a href="http://map.baidu.com/"
								target="_blank"> <img src="img/1_ditu.png" alt="地图查询"><br>
									地图查询
							</a></li>
							<li style="margin-right: 0"><a href="http://map.baidu.com/"
								target="_blank"> <img src="img/1_shijian.png" alt=" 北京时间"><br>
									北京时间
							</a></li>
							<li style="margin-right: 0"><a
								href="https://zaixianjisuanqi.51240.com/" target="_blank"> <img
									src="img/1_jisuanqi.png" alt="计算器"><br> 计算器
							</a></li>
							<li style="margin-right: 0"><a
								href="http://fanyi.baidu.com/" target="_blank"> <img
									src="img/1_fanyi.png" alt="在线翻译"><br> 在线翻译
							</a></li>
							<li style="margin-right: 0"><a
								href="https://zhongliang.51240.com/" target="_blank"> <img
									src="img/1_huansuan.png" alt="单位换算"><br> 单位换算
							</a></li>
						</ul>
						<ul class="dbxgn jkzs">
							<li><a href="http://www.weather.com.cn/" target="_blank">
									<img src="img/1_26.png" alt="天气预报"><br> 天气预报
							</a></li>
							<li style="margin-right: 0"><a
								href="http://www.12306.cn/mormhweb/" target="_blank"> <img
									src="img/1_28.png" alt="铁路查询"><br> 铁路查询
							</a></li>
							<li><a href="https://wannianrili.51240.com/" target="_blank">
									<img src="img/1_wannianli.png" alt="铁路查询"><br> 万年历
							</a></li>
							<li style="margin-right: 0"><a
								href="https://youbian.51240.com/" target="_blank"> <img
									src="img/1_youbian.png" alt="邮编查询"><br> 邮编查询
							</a></li>
							<li><a href="http://map.baidu.com/" target="_blank"> <img
									src="img/1_ditu.png" alt="地图查询"><br> 地图查询
							</a></li>
							<li style="margin-right: 0"><a
								href="https://biaozhunshijian.51240.com/" target="_blank"> <img
									src="img/1_shijian.png" alt=" 北京时间"><br> 北京时间
							</a></li>
							<li><a href="https://zaixianjisuanqi.51240.com/"
								target="_blank"> <img src="img/1_jisuanqi.png" alt="计算器"><br>
									计算器
							</a></li>
							<li style="margin-right: 0"><a
								href="http://fanyi.baidu.com/" target="_blank"> <img
									src="img/1_fanyi.png" alt="在线翻译"><br> 在线翻译
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="c_bkd">
				<div class="jz">
					<div class="jsjl">
						<div class="jsllbt">
							<span class="zwbtz l" v-text="columns[4].column.columnTitle"></span>
							<span class="ywfb l">&nbsp;/&nbsp;Party school </span> <a
								:href="['${root}/column/get/column/articles/'+columns[4].column.columnID]"
								class="ywfr r"></a>
						</div>
						<ul class="jsllb  ">
							<li v-for="(article,index) in columns[4].article"
								v-if="index<size[1]"><a
								:href="['${root}/article/get/article/'+article.aid+'/'+columns[4].column.columnID]"
								class="l cdwzzx" v-text="article.title"></a> <span class="r"
								v-text="article.pubTime"></span></li>
						</ul>
					</div>
					<div class="jsjl">
						<div class="jsllbt">
							<span class="zwbtz l" v-text="columns[5].column.columnTitle"></span>
							<span class="ywfb l">&nbsp;/&nbsp;Regiment activities</span> <a
								:href="['${root}/column/get/column/articles/'+columns[5].column.columnID]"
								class="ywfr r"></a>
						</div>
						<ul class="jsllb  ">
							<li v-for="(article,index) in columns[5].article"
								v-if="index<size[1]"><a
								:href="['${root}/article/get/article/'+article.aid+'/'+columns[5].column.columnID]"
								class="l cdwzzx" v-text="article.title"></a> <span class="r"
								v-text="article.pubTime"></span></li>
						</ul>
					</div>
					<div class="whfw">
						<div class="whfwbt">
							<span class="zwbtz l">科技推广</span> <span class="ywfb l">&nbsp;/&nbsp;Science
								&amp; Technology Popularization</span> <a
								href="http://127.0.0.1:8080/a/kejituiguang/" class="ywfr r"></a>
						</div>
						<div class="am-panel-group" id="accordion">
							<div class="am-panel am-panel-default">
								<div class="am-panel-hd nbdb">
									<h4 class="am-panel-title"
										data-am-collapse="{parent: &#39;#accordion&#39;, target: &#39;#do-not-say-1&#39;}">
										科技快讯</h4>
								</div>
								<div id="do-not-say-1"
									class="am-panel-collapse am-collapse am-in">
									<div class="am-panel-bd">
										<ul class="jsllb">
											<li><a
												href="http://127.0.0.1:8080/a/kejituiguang/kejikuaixun/47.html"
												class="l cdwzzx">关于公示2017年第六批建设工程勘察设计企业资质</a> <span
												class="r">2018-03-07</span></li>
											<li><a
												href="http://127.0.0.1:8080/a/kejituiguang/kejikuaixun/46.html"
												class="l cdwzzx">关于开展全市城市雕塑建设现状调查的通知</a> <span class="r">2018-03-07</span>
											</li>
											<li><a
												href="http://127.0.0.1:8080/a/kejituiguang/kejikuaixun/45.html"
												class="l cdwzzx">关于2018年第一批二级注册结构工程师初始注册申</a> <span
												class="r">2018-03-07</span></li>

										</ul>
									</div>
								</div>
							</div>
							<div class="am-panel am-panel-default">
								<div class="am-panel-hd nbdb">
									<h4 class="am-panel-title"
										data-am-collapse="{parent: &#39;#accordion&#39;, target: &#39;#do-not-say-2&#39;}">
										科技成果</h4>
								</div>
								<div id="do-not-say-2" class="am-panel-collapse am-collapse ">
									<div class="am-panel-bd">
										<ul class="jsllb">
											<li><a
												href="http://127.0.0.1:8080/a/kejituiguang/kejichengguo/31.html"
												class="l cdwzzx">关于核准2017年第六批建设工程勘察设计企业资质</a> <span
												class="r">2018-03-07</span></li>
											<li><a
												href="http://127.0.0.1:8080/a/kejituiguang/kejichengguo/30.html"
												class="l cdwzzx">关于2018年第一批二级注册建筑师初始注册申请审</a> <span
												class="r">2018-03-07</span></li>
											<li><a
												href="http://127.0.0.1:8080/a/kejituiguang/kejichengguo/29.html"
												class="l cdwzzx">关于2018年第二批二级注册结构工程师初始注册申</a> <span
												class="r">2018-03-07</span></li>

										</ul>
									</div>
								</div>
							</div>
							<div class="am-panel am-panel-default">
								<div class="am-panel-hd nbdb">
									<h4 class="am-panel-title"
										data-am-collapse="{parent: &#39;#accordion&#39;, target: &#39;#do-not-say-3&#39;}">
										推广与应用</h4>
								</div>
								<div id="do-not-say-3" class="am-panel-collapse am-collapse ">
									<div class="am-panel-bd">
										<ul class="jsllb">
											<li><a
												href="http://127.0.0.1:8080/a/kejituiguang/tuiguangyuyingyong/19.html"
												class="l cdwzzx">关于公示2018年第二批建设工程勘察设计企业资质</a> <span
												class="r">2018-03-07</span></li>
											<li><a
												href="http://127.0.0.1:8080/a/kejituiguang/tuiguangyuyingyong/18.html"
												class="l cdwzzx">关于征集2018年度重庆市工程建设标准设计编制、</a> <span
												class="r">2018-03-07</span></li>
											<li><a
												href="http://127.0.0.1:8080/a/kejituiguang/tuiguangyuyingyong/17.html"
												class="l cdwzzx">关于核准2018年第一批建设工程勘察设计企业资质</a> <span
												class="r">2018-03-07</span></li>

										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="c_bke">
				<div class="jz">
					<div class="c_bkebt">
						<span class="zwbtz l">教师团队</span> <span class="ywfb l">&nbsp;/&nbsp;Teacher
							Display</span> <a href="http://127.0.0.1:8080" class="r"></a>
					</div>
					<div id="div1">
						<ul class="myzs" id="u">
							<div id="demo">
								<div id="indemo">
									<div id="demo1">
										<li v-if="teachers[0].id!=0" v-for="teacher in teachers"
											style="text-align: center;"><a
											:href="'${root}/teacher/get/teacher/'+teacher.id"><img
												:src="'/upload/teacher/'+teacher.imgUrl" width="100%"
												:alt="teacher.name"></a><span class="tname"
											v-text="teacher.name"
											style="font-size: 18px; display: inline-block; margin-top: 8px"></span></li>
									</div>
									<div id="demo2"></div>
								</div>
							</div>
						</ul>
					</div>
					<ul class="myzs sszzd" id="teach">
						<li v-if="teachers[0].id!=0" v-for="(teacher,index) in teachers"
							style="margin-right: 0;"><a href="#"><img
								:src="'/upload/teacher/'+teacher.imgUrl" :alt="teacher.name"></a>
							<span class="tname_xiang" v-text="teacher.name"
							style="font-size: 18px; display: inline-block; margin-top: 8px"></span>
						</li>
					</ul>
				</div>
			</div>
			<div class="c_bke c_kxkx">
				<div class="jz">
					<div class="c_bkebt">
						<span class="zwbtz l">友情链接</span> <span class="ywfb l">&nbsp;/&nbsp;friendly
							links</span>
					</div>
					<ul class="lsjl">
						<li style="width: 280px; cursor: pointer"
							v-if="friendlylinks[0].id >0"
							v-for="friendlylink in friendlylinks"><a
							@click=friendlyLink(friendlylink.httpUrl)><img
								style="width: 100%; height: 100px"
								:src="'/upload/friendlylink/'+friendlylink.imgUrl"
								:alt="friendlylink.remarks"></a></li>

					</ul>

					<ul class="nbbsc lsjl">
						<li v-if="friendlylinks[0].id >0"
							v-for="friendlylink in friendlylinks"><a target="_blank"><img
								:src="'/upload/friendlylink/'+friendlylink.imgUrl"
								:alt="friendlylink.remarks"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../commonFooter.jsp"></jsp:include>
</body>
<script type="text/javascript" src="${root}/js/index.js"></script>
<script type="text/javascript">
	$("#ul_onmouse").mouseover(function(event) {

		event.target.click();
	})
</script>
</html>
