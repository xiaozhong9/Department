 var layedit;
 var index;
var x=1;
var curCount1=20;

	var vm=new Vue({
		el:"#footer",
		data:{
			
			columns:[{
				//栏目Id
				columnID:0,
				//栏目标题
				columnTitle:null,
				//栏目描述
				explains:null 
			}
			]
		},
		methods:{
			getColumns:function(){
				this.$http.post("/DepartmentWeb/column/get/column/titles",{
				},{emulateJSON:true})
				.then(function(res){
					this.columns=res.body.data;
					console.log(this.columns);
					})
			}
		},
		created:function(){
			this.getColumns();
		}
	});
	var vm=new Vue({
		el:"#my_sticky",
		data:{
			hotArticlesObj:[
				{}
			],
			columns:[{
				//栏目Id
				columnID:0,
				//栏目标题
				columnTitle:null,
				//栏目描述
				explains:null 
			}
			]
		},
		methods:{
			getColumns:function(){
				this.$http.post("/DepartmentWeb/column/get/column/titles",{
				},{emulateJSON:true})
				.then(function(res){
					this.columns=res.body.data;
					console.log(this.columns);
				})
			},
			hotArticlesMethod:function(){
				var c=localStorage.columnID;
				this.$http.post("/DepartmentWeb/activity/get/newest",{},{emulateJSON:true})
				.then(function(res){
					this.hotArticlesObj=res.body.data;
					console.log("hot");
					console.log(res.body.data);
					console.log(this.hotArticlesObj);
				})
			}
		},
		filters:{
			sub:function(value){
				 if(undefined!=value&&value.length>13){
					return value.substring(0,12);
				} 
				return value
			}
		},
		created:function(){
			this.getColumns();
			this.hotArticlesMethod();
		}
	});

	var Main =new Vue ({
					
					el:"#box",
					data :{
						id:0,
						lastActivity : {
							id:0,
							title:null
						},
						nextActivity : {
							id:0,
							title:null
						},
						
					},
					methods : {
						
							/* 获取文章上下篇 */						
						pageTurnArticle : function() {
							
							this.$http
									.post(
											"/DepartmentWeb/activity/get/page/turn",
											{
												"id":this.id
											}, {
												emulateJSON : true
											})
									.then(
											function(res) {
												console.log(res)
												this.lastActivity = res.body.data.lastActivity;
												this.nextActivity = res.body.data.nextActivity;
												
											})
						}
						
						

					},
					created : function() {
						this.id=localStorage.activity_id;
						console.log("----activity_id----");
						console.log(localStorage.activity_id);
						this.pageTurnArticle();
					
					},
					filters: {
					      formatDate: function (value) {
					        let date = new Date(value);
					        let y = date.getFullYear();
					        let MM = date.getMonth() + 1;
					        MM = MM < 10 ? ('0' + MM) : MM;
					        let d = date.getDate();
					        d = d < 10 ? ('0' + d) : d;
					        let h = date.getHours();
					        h = h < 10 ? ('0' + h) : h;
					        let m = date.getMinutes();
					        m = m < 10 ? ('0' + m) : m;
					        let s = date.getSeconds();
					        s = s < 10 ? ('0' + s) : s;
					        return y + '-' + MM + '-' + d + ' ' + h + ':' + m + ':' + s;
					      }
					    }
				})
	
