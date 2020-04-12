package com.ssm.test;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.ssm.po.Activity;
import com.ssm.po.Admin;
import com.ssm.po.Article;
import com.ssm.service.admin.activity.ActivityService;
import com.ssm.service.admin.friendlylink.FriendlyLinkService;
import com.ssm.service.admin.oline.CommentService;
import com.ssm.service.admin.teacher.TeacherService;
import com.ssm.service.api.column.ColumnService;

@Controller
public class TestController {
	@Autowired
	ColumnService columnService;

	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private CommentService commentService;
	
	@Autowired
	private ActivityService service;
	
	@Autowired
	private FriendlyLinkService flt;
	@RequestMapping("test")
	String testkk() {
		return "index";
	}

	@RequestMapping(value = "/e")
	@ResponseBody
	public PageInfo<Article> findArticleByPage() {

		PageInfo<Article> pager = columnService.findArticleByPage(1, 1, 3);
		return pager;
	}

	@RequestMapping("teacher/test")
	public void testTeacher() {
		int[] arr = { 1, 2, 3 };
		teacherService.deleteTeachers(arr);
	}

	@RequestMapping("friendlylink/test")
	@ResponseBody 
	public Object friendlyLinkTest() {
		int []a={1,2};
		flt.batchDeletion(a);
		return "Hello, World";
	}
	
	@RequestMapping("oline/test")
	@ResponseBody 
	public Object OlineTest() {
		PageInfo<List<Map<String, Object>>> findOlineByState = commentService.findOlineByState(1, 5,2);
		return findOlineByState;
	}
	
	@RequestMapping(value="vue/test",method=RequestMethod.POST)
	@ResponseBody
	public String testVue(@RequestBody Admin admin){
		System.out.println("����û1=========================="+admin);
		return "success";
	}

	@RequestMapping(value="activity/test",method=RequestMethod.GET)
	@ResponseBody
	public String testSctivity(){
		Activity ac=new Activity();
		ac.setTitle("3");
		
		ac.setContent("3");
		ac.setEditor("3");
 		service.saveActivity(ac);
		return "success";
	}
}
