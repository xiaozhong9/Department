var vm = new Vue(
		{
			el : "#box",
			data : {
				Hotspot : "yfyhfhghdfh/m,/><html body>123</html>",
				urls : [],
				size : [ 6, 7 ],// 控制栏目显示数量
				columns : [ {
					// 栏目下的文章
					article : [ {
						Aid : 0,
						title : null,
						pubTime : null
					} ],
					column : {
						// 栏目Id
						columnID : 0,
						// 栏目标题
						columnTitle : null,
						// 栏目描述
						explains : null
					}
				}, {
					// 栏目下的文章
					article : [ {
						Aid : 0,
						title : null,
						pubTime : null
					} ],
					column : {
						// 栏目Id
						columnID : 0,
						// 栏目标题
						columnTitle : null,
						// 栏目描述
						explains : null
					}
				}, {
					// 栏目下的文章
					article : [ {
						Aid : 0,
						title : null,
						pubTime : null
					} ],
					column : {
						// 栏目Id
						columnID : 0,
						// 栏目标题
						columnTitle : null,
						// 栏目描述
						explains : null
					}
				}, {
					// 栏目下的文章
					article : [ {
						Aid : 0,
						title : null,
						pubTime : null
					} ],
					column : {
						// 栏目Id
						columnID : 0,
						// 栏目标题
						columnTitle : null,
						// 栏目描述
						explains : null
					}
				}, {
					// 栏目下的文章
					article : [ {
						Aid : 0,
						title : null,
						pubTime : null
					} ],
					column : {
						// 栏目Id
						columnID : 0,
						// 栏目标题
						columnTitle : null,
						// 栏目描述
						explains : null
					}
				}, {
					// 栏目下的文章
					article : [ {
						Aid : 0,
						title : null,
						pubTime : null
					} ],
					column : {
						// 栏目Id
						columnID : 0,
						// 栏目标题
						columnTitle : null,
						// 栏目描述
						explains : null
					}
				},

				],
				teachers : [

				{
					id : 0,
					name : null,
					nickName : null,
					jobTitle : null,
					education : null,
					job : null,
					curriculum : null,
					speciality : null,
					imgUrl : null
				}

				],
				friendlylinks : [ {
					id : 0,
					remarks : null,
					imgUrl : null,
					httpUrl : ""
				} ]

				,
				friendlylinks : [ {
					id : 0,
					remarks : null,
					imgUrl : null,
					httpUl : null
				} ],
				activitys : [ {
					id : 0,
					title : null,
					cover : null
				} ],
				todays : [ {
					Aid : 0,
					title : null,
					content : ""
				} ]
			},
			methods : {

				getTodays : function() {
					this.$http.post("/DepartmentWeb/today/all").then(
							function(res) {
								console.log("-----today---");
								console.log(res);
								this.todays = res.body.data;
								console.log(this.todays);
							});
				},

				getActivitys : function() {
					this.$http.post("/DepartmentWeb/activity/index", {}, {
						emulateJSON : true
					}).then(function(res) {
						if (res.body.data != null) {
							this.activitys = res.body.data;
						}

					})
				},
				getTeacher : function() {
				},
				getColumns : function() {
					this.$http.post("column/get/columns", {}, {
						emulateJSON : true
					}).then(function(res) {
						this.columns = res.body.data;

					})
				},

				getLoopImgs : function() {
					this.$http
							.post("img/loop/imgs", {}, {
								emulateJSON : true
							})
							.then(
									function(res) {
										this.urls = res.body.data;
										if (this.urls.length >= 1) {
											for (var j = 1; j < this.urls.length; j++) {

												$("#father")
														.append(
																"<li style='width: 1897px; margin-right: 0px; float: left;"
																		+ " display: block;' class='am-active-slide' data-thumb-alt=''> "
																		+ "<div class='pool ddsgg' style='background: url(img/banner1.png) no-repeat center;'> "
																		+ "<div class='jz'> <div class='bn_bt'></div> </div> </div> </li>");

											}
											$("#father").addClass("am-slides")
											$('.am-viewport').flexslider();
											$('.am-control-paging').css(
													'width', 'auto')

										}

										var $arr = $("#father .pool");
										for (var i = 0; i < this.urls.length; i++) {
											$arr[i + 1].style.backgroundImage = "url(/upload/ImgAll/"
													+ this.urls[i] + ")";
										}

									})
				},
				getFollow : function() {
					this.$http.post("article/get/follow", {}, {
						emulateJSON : true
					}).then(function(res) {

					})
				},
				getTeachers : function() {
					this.$http.post("teacher/get/teachers", {}, {
						emulateJSON : true
					}).then(function(res) {
						if (res != null) {
							this.teachers = res.body.data;

						}
					})

				},
				getFriendlyLinks : function() {
					this.$http.post("friendlylink/all", {}, {
						emulateJSON : true
					}).then(function(res) {
						if (res != null) {
							this.friendlylinks = res.body.data;
						}
					})
				},
				friendlyLink : function(href) {
					href = href.replace("http://", "");
					href = "http://" + href;
					window.location.href = href;
				}
			},
			filters : {
				filterA : function(value) {
					let reg = /<\/?.+?\/?>/g;

					value = value.replace(reg, '');// 替换HTML标签
					value = value.replace(/&nbsp;/ig, '');// 替换HTML空格
					if (value.trim() == "" || value == null) {
						value = "精彩的东西还在继续..."
					}
					return value;
				}
			},
			created : function() {
			}

		})
$(function() {
	vm.getLoopImgs();
	vm.getTeachers();
	vm.getFriendlyLinks();
	vm.getTodays();
	vm.getColumns();
	setTimeout(donghua, 100);
	vm.getActivitys();
	setTimeout(function() {
		$("#img_ula").addClass("am-slides");
		$('#c_bka .am-viewport').flexslider();
	}, 100)
})

function donghua() {
	var speed = 10; // 数字越大速度越慢
	var tab = document.getElementById("demo");
	var tab1 = document.getElementById("demo1");
	var tab2 = document.getElementById("demo2");
	tab2.innerHTML = tab1.innerHTML + tab1.innerHTML;
	function Marquee() {
		if (tab2.offsetWidth - tab.scrollLeft <= 0)
			tab.scrollLeft -= tab1.offsetWidth
		else {
			tab.scrollLeft++;
		}
	}
	var MyMar = setInterval(Marquee, speed);
	tab.onmouseover = function() {
		clearInterval(MyMar)
	};
	tab.onmouseout = function() {
		MyMar = setInterval(Marquee, speed)
	};

}
function AutoScroll(obj) {
	$(obj).find("#today:first").animate({
		marginTop : "-80px"
	}, 1000, function() {
		$(this).css({
			marginTop : "0px"
		}).find("div:first").appendTo(this);
	});
}
$(document).ready(function() {
	setInterval('AutoScroll("#jxc")', 6000);
});

/*
 * function AutoScroll(obj) { $(obj).find(":first").animate({ marginTop: "-80px" },
 * 500, function() { $(this).css({ marginTop: "0px"
 * }).find("div:first").appendTo(this); }); } $(document).ready(function() {
 * setInterval('AutoScroll("#today")', 3000); });
 */