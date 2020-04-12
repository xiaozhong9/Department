var tid=localStorage.tid;
new Vue({
	el:"#box",
	data:{
		lastTeacher:{
		},
		nextTeacher:{
		}
	},
	methods:{
		pageTurnTeacher:function(){
			this.$http.post("/DepartmentWeb/teacher/get/page/turn",{id:tid},{emulateJSON:true})
			.then(function(res){
				this.lastTeacher=res.body.data.lastTeacher;
				this.nextTeacher=res.body.data.nextTeacher;
			})
		}
		},
		created:function(){
			this.pageTurnTeacher();
		}
	})