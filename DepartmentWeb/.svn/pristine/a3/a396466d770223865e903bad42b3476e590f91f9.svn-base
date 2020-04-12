package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.service.tourist.TouristService;

@Controller
@RequestMapping("tourist")
public class TouristController{
	@Autowired
	private TouristService touristService;
	
	@RequestMapping(value="email/ver",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject touristEmail(String email,HttpServletRequest request) throws ApiServiceException{
		HttpSession session = request.getSession();
		ApiResponseObject touristEmail = touristService.touristEmail(email);
		session.setAttribute("email", email);
		session.setAttribute("key", touristEmail.getData());
		return touristEmail;
	}
	@RequestMapping(value="email/verificationCode",method=RequestMethod.POST)
	@ResponseBody
	public String verificationCodeEmail(String code,String email,HttpServletRequest request) throws ApiServiceException{
		HttpSession session = request.getSession();
		String key = (String) session.getAttribute("key");
		String eqEmail= (String) session.getAttribute("email");
		if(code.equals(key)&&email.equals(eqEmail)){
			
			session.setAttribute("obj", true);
			return "success";
		}
		return "error";
	}
	
	@RequestMapping(value="phone/ver",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject touristPhone(String phone,HttpServletRequest request) throws ApiServiceException{
		HttpSession session = request.getSession();
		System.out.println("------------ÊÖ»úºÅ"+phone);
		ApiResponseObject touristphone = touristService.touristPhone(phone);
		session.setAttribute("mobile", phone);
		session.setAttribute("mkey", touristphone.getData());
		return touristphone;
	}
	
	@RequestMapping(value="phone/verificationCode",method=RequestMethod.POST)
	@ResponseBody
	public String verificationCodePhone(String code,String phone,HttpServletRequest request) throws ApiServiceException{
		HttpSession session = request.getSession();
		String key = (String) session.getAttribute("mkey");
		String eqPhone= (String) session.getAttribute("mobile");
		if(code.equals(key)&&phone.equals(eqPhone)){
			session.setAttribute("obj", true);
			return "success";
		}
		return "error";
	}
}
