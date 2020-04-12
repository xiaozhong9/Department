package com.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.service.friendlylink.FriendlyLInkService;
@Controller
@RequestMapping("friendlylink")

public class FriendlyLinkController {
	@Autowired
	private FriendlyLInkService service;
	
	@RequestMapping(value="all",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject findAll() throws ApiServiceException{
		
		ApiResponseObject findAll = service.findAll();
		
		return findAll;
	}
}
