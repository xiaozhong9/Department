package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.service.activity.ActivityService;

@Controller
@RequestMapping("activity")
public class ActivityController {
	
	@Autowired
	private ActivityService service;
	
	@RequestMapping(value="/index",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject indexActivitys() throws ApiServiceException{
		ApiResponseObject indexActivitys = service.indexActivitys();
		return indexActivitys;
	}
	
	@RequestMapping(value="get/activity/{id}")
	public String getActivity(@PathVariable int id,HttpServletRequest request) throws ApiServiceException{
		ApiResponseObject findActivityById = service.findActivityById(id);
		if(findActivityById.getData()==null){
			return"404";
		}
		HttpSession session = request.getSession();
		session.setAttribute("activity", findActivityById.getData());
		return "activity";
	}
	@RequestMapping(value="get/page/turn",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject turnActivity(int id) throws ApiServiceException{
		return service.pageTurnActivity(id);
	}
	@RequestMapping(value="get/newest",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject newestActivity() throws ApiServiceException{
		ApiResponseObject newestActivity = service.newestActivity();
		System.out.println("-------------cesh");
		System.out.println(newestActivity);
		return newestActivity;
	}
}
