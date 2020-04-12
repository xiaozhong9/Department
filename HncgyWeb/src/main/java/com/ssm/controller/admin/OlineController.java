package com.ssm.controller.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.ssm.service.admin.article_oline.Article_CommentService;
import com.ssm.service.admin.oline.CommentService;
@RequestMapping("oline")
@Controller
public class OlineController {
	@Autowired
	private CommentService service;
	@Autowired
	private Article_CommentService acServcice;
	@RequestMapping(value="all",method=RequestMethod.POST)
	@ResponseBody
	public PageInfo<List<Map<String,Object>>> olineAll(int currentPage, int pageSize,int state){
		PageInfo<List<Map<String, Object>>> findOlineByState = service.findOlineByState(currentPage, pageSize,state);
		return findOlineByState;
	}
	
	@RequestMapping(value="adopt",method=RequestMethod.POST)
	@ResponseBody
	public String update(int id){
		if(id<0){
			return "error";
		}
		int state = service.updateStateById(id);
		if(state>0){
			return "success";
		}
		return "error";
	}
	
	@RequestMapping(value="not/pass",method=RequestMethod.POST)
	@ResponseBody
	public String findAllNotPass(int id){
		if(id<0){
			return "error";
		}
		int state = service.notPass(id);
		if(state>0){
			return "success";
		}
		return "error";
	}
	
	@RequestMapping(value="batch",method=RequestMethod.POST)
	@ResponseBody
	public String batchDel(String[]arr){
		int []oid=new int[arr.length];
		for(int i=0;i<arr.length;i++){
			oid[i]=Integer.parseInt(arr[i]);
		}
		int state = service.batchDel(oid);
		if(state>0){
			acServcice.batchDel(oid);
			return "success";
		}
		return "error";
	}
	
	@RequestMapping(value="del",method=RequestMethod.POST)
	@ResponseBody
	public String del(int id){
		if(id<0){
			return "error";
		}
		int delById = service.delById(id);
		if(delById>0){
			return "success";
		}
		return "error";
	}
	
	@RequestMapping(value="administration/comment",method=RequestMethod.POST)
	@ResponseBody
	public  PageInfo<List<Map<String,Object>>> administrationComment(int columnId, int articleId, int currentPage, int pageSize){
		PageInfo<List<Map<String, Object>>> administrationComment = service.administrationComment(columnId, articleId, currentPage, pageSize);
		return administrationComment;
	}
}
