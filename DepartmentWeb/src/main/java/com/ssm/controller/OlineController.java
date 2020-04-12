package com.ssm.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.service.oline.OlineService;

@Controller
@RequestMapping("comment")
public class OlineController {
	@Autowired
	private OlineService olineService;
	@RequestMapping(value="save/comment",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject saveComment(int column_Id,int article_Id,String comment,String tourist) throws ApiServiceException{
		Map<String,Object>map=new HashMap<>();
		map.put("comment", comment);
		map.put("columnID", column_Id);
		map.put("articleID", article_Id);
		map.put("email", tourist);
		
		 ApiResponseObject saveComment = olineService.saveComment(map);
		 return saveComment;
	}
	@RequestMapping(value="find/article/olines",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject findOlineByArt(int article_Id,int column_Id,int currentPage) throws ApiServiceException{
		Map<String,Integer>map=new HashMap<>();
		map.put("article_Id", article_Id);
		map.put("column_Id", column_Id);
		map.put("currentPage", currentPage);
		return olineService.findOlineByArt(map);
	}
	
}
