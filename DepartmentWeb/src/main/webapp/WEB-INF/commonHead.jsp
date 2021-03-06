<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="root" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>head</title>
</head>
<body>
<div id="app">
<div class="top" id="box1">
  <div class="jz">
    <div class="tl l">欢迎进入湖南财经学院电子信息系官方网站！</div>
    <div class="tr r" v-text="date"></div><!-- 当前日期 -->
  </div>
</div>

<div class="head">
  <div class="jz"> <a href="http://www.hycgy.com/" class="l p_sj"><img src="${pageContext.request.contextPath}/img/logo.png"  alt="湖南财经工业职业技术学院"></a>
    <div class="fw r"></div>
  </div>
</div>
<div class="nav">
  <div class="jz">
    <ul class="nav_main">
      <li class="yiji_li"> <a class="wh_wbd" href="${root}">网站首页</a> </li>
      <li class="yiji_li"> <a class="wh_wbd" href="#">学院信息</a>
        <!-- <ul class="nav_c">
          <li class="erji_li c"> <a href="#">123</a> </li>
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/tongzhigonggao/xingyedongtai/">行业动态</a> </li>
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/tongzhigonggao/banshizhinan/">办事指南</a> </li>
        </ul>  -->
      </li>
      
      
      <li class="yiji_li" v-for="column in columns"> <a class="wh_wbd" :href="'${root}/column/get/column/articles/'+column.columnID" >{{column.columnTitle}}</a></li>
      
     
     
       
      <!-- <li class="yiji_li"> <a class="wh_wbd" href="http://127.0.0.1:8080/a/jianzhujienen/">建筑节能</a>
        <ul class="nav_c">
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/jianzhujienen/jianzhujienen/">建筑节能</a> </li>
        </ul>
      </li><li class="yiji_li"> <a class="wh_wbd" href="http://127.0.0.1:8080/a/kejituiguang/">科技推广</a>
         <ul class="nav_c">
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/kejituiguang/kejikuaixun/">科技快讯</a> </li>
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/kejituiguang/kejichengguo/">科技成果</a> </li>
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/kejituiguang/tuiguangyuyingyong/">推广与应用</a> </li>
        <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/kejituiguang/jishujiaoliu/">技术交流</a> </li> 
          
        </ul>
      </li><li class="yiji_li"> <a class="wh_wbd" href="http://127.0.0.1:8080/a/youxiugongcheng/">优秀工程</a>
        <ul class="nav_c">
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/youxiugongcheng/jianzhugongcheng/">建筑工程</a> </li>
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/youxiugongcheng/kanchagongcheng/">勘察工程</a> </li>
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/youxiugongcheng/shizhenggongcheng/">市政工程</a> </li>
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/youxiugongcheng/chengshiguihua/">城市规划</a> </li>
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/youxiugongcheng/zhuanxiangsheji/">专项设计</a> </li>
          
        </ul> 
      </li><li class="yiji_li"> <a class="wh_wbd" href="http://127.0.0.1:8080/a/mingyuanzhanshi/">名院展示</a>
        <ul class="nav_c">
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/mingyuanzhanshi/mingyuanzhanshi/">名院展示</a> </li>
        </ul>
      </li>
      <li class="yiji_li"> <a class="wh_wbd" href="http://127.0.0.1:8080/a/lianxiwomen/lianxiwomen/">联系我们</a>
        <ul class="nav_c">
          <li class="erji_li c"> <a href="http://127.0.0.1:8080/a/lianxiwomen/lianxiwomen/">联系我们</a> </li>
        </ul> 
      </li> -->
    </ul>
  </div>
</div>

<nav data-am-widget="menu" class="am-menu  am-menu-dropdown1" data-am-menu-collapse> <a href="javascript: void(0)" class="am-menu-toggle"> <img src="${pageContext.request.contextPath }/img/ddh.png" alt="Menu Toggle"/> </a>
  <ul class="am-menu-nav am-avg-sm-1 am-collapse">
    <li class="" v-for="column in columns"> <a :href="'${root}/column/get/column/articles/'+column.columnID"  class="" >{{column.columnTitle}}</a></li>
     <!--  <ul class="am-menu-sub am-collapse  am-avg-sm-2 ">
        
        <li class=""> <a href="#">通知公告</a> </li>
        
        <li class=""> <a href="/a/tongzhigonggao/xingyedongtai/">行业动态</a> </li>
        
        <li class=""> <a href="/a/tongzhigonggao/banshizhinan/">办事指南</a> </li>
        
      </ul>
    </li> -->
  <!--   <li class="am-parent"> <a href="/a/zhengcefagui/" class="" >政策法规</a>
      <ul class="am-menu-sub am-collapse  am-avg-sm-2 ">
        
        <li class=""> <a href="/a/zhengcefagui/guojiaji/">国家级</a> </li>
        
        <li class=""> <a href="/a/zhengcefagui/shengbuji/">省部级</a> </li>
        
        <li class=""> <a href="/a/zhengcefagui/dishiji/">地市级</a> </li>
        
      </ul>
    </li><li class="am-parent"> <a href="/a/jianzhujienen/" class="" >建筑节能</a>
      <ul class="am-menu-sub am-collapse  am-avg-sm-2 ">
        
        <li class=""> <a href="/a/jianzhujienen/jianzhujienen/">建筑节能</a> </li>
        
      </ul>
    </li><li class="am-parent"> <a href="/a/kejituiguang/" class="" >科技推广</a>
      <ul class="am-menu-sub am-collapse  am-avg-sm-2 ">
        
        <li class=""> <a href="/a/kejituiguang/kejikuaixun/">科技快讯</a> </li>
        
        <li class=""> <a href="/a/kejituiguang/kejichengguo/">科技成果</a> </li>
        
        <li class=""> <a href="/a/kejituiguang/tuiguangyuyingyong/">推广与应用</a> </li>
        
        <li class=""> <a href="/a/kejituiguang/jishujiaoliu/">技术交流</a> </li>
        
      </ul>
    </li><li class="am-parent"> <a href="/a/youxiugongcheng/" class="" >优秀工程</a>
      <ul class="am-menu-sub am-collapse  am-avg-sm-2 ">
        
        <li class=""> <a href="/a/youxiugongcheng/jianzhugongcheng/">建筑工程</a> </li>
        
        <li class=""> <a href="/a/youxiugongcheng/kanchagongcheng/">勘察工程</a> </li>
        
        <li class=""> <a href="/a/youxiugongcheng/shizhenggongcheng/">市政工程</a> </li>
        
        <li class=""> <a href="/a/youxiugongcheng/chengshiguihua/">城市规划</a> </li>
        
        <li class=""> <a href="/a/youxiugongcheng/zhuanxiangsheji/">专项设计</a> </li>
        
      </ul>
    </li><li class="am-parent"> <a href="/a/mingyuanzhanshi/" class="" >名院展示</a>
      <ul class="am-menu-sub am-collapse  am-avg-sm-2 ">
        
        <li class=""> <a href="/a/mingyuanzhanshi/mingyuanzhanshi/">名院展示</a> </li>
        
      </ul>
    </li><li class="am-parent"> <a href="/a/lianxiwomen/lianxiwomen/" class="" >联系我们</a>
      <ul class="am-menu-sub am-collapse  am-avg-sm-2 ">
        
        <li class=""> <a href="/a/lianxiwomen/lianxiwomen/">联系我们</a> </li>
        
      </ul>
    </li> -->
  </ul>
</nav>




</div>
</body>
<script  language='javascript' type="text/javascript">
	new Vue({
		el:"#app",
		data:{
			date:null,
			columns:[{
				//栏目Id
				columnID:0,
				//栏目标题
				columnTitle:null,
				//栏目描述
				explains:null 
			}
			]
		}
	,methods:{
		getColumns:function(){
			this.$http.post("/DepartmentWeb/column/get/column/titles",{
			},{emulateJSON:true})
			.then(function(res){
				console.log("-----------------------")
				this.columns=res.body.data;
				console.log(this.columns);
				})
		}
	},
		created:function(){
		 	function dateFun(){
		    var date = new Date();
		    var myddy=date.getDay();//获取存储当前日期
		    var weekday=["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];
			var year = date.getFullYear();
			var month = date.getMonth() + 1;
			var strDate = date.getDate();
			if (month >= 1 && month <= 9) {
			month = "0" + month;
			}
			if (strDate >= 0 && strDate <= 9) {
			strDate = "0" + strDate;
			}
			var currentdate = year + '年'  + month + '月'+ strDate +'日';
			return currentdate+" "+weekday[myddy];

	}
		 	this.date=dateFun();
		 	this.getColumns();
	}
	
	})
</script>
</html>