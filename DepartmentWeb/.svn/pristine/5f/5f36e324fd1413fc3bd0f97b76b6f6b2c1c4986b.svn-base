package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.common.ApiServiceException;
import com.ssm.utils.utils;

@Controller	
public class IndexController {
	@RequestMapping("/")
	public String indexPage(HttpServletRequest request) throws ApiServiceException{
		String date = utils.getDate();
		request.getSession().setAttribute("date", date);
		return "index";
	}
}
