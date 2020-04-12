package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.service.today.TodayService;

@Controller
@RequestMapping("today")
public class TodayController {
	@Autowired
	private TodayService service;
	
	@RequestMapping("get/{aid}")
	public String test(@PathVariable(value = "aid") int aid,HttpServletRequest request) throws ApiServiceException{
		ApiResponseObject todayById = service.getTodayById(aid);
		if(todayById.getData()==null){
			return "404";
		}
		HttpSession session = request.getSession();
		session.setAttribute("today", todayById.getData());
		return "today";
	}
	@RequestMapping(value="all",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject findAll() throws ApiServiceException{
		ApiResponseObject findAll = service.findAll();
		return findAll;
	}
	@RequestMapping(value="page/turn",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject getTodayPageTurn(int id) throws ApiServiceException{
			return service.getTodayPageTurn(id);
	}
	
}
