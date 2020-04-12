package com.ssm.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.po.Admin;
import com.ssm.po.MailModel;
import com.ssm.service.admin.admin.IAdminService;
import com.ssm.service.admin.verification.LoginService;

@Controller
public class VerificationController {
	@Autowired
	private LoginService loginService;
	@Autowired
	private IAdminService iAdminService;

	@RequestMapping(value = "phone", method = RequestMethod.POST)
	@ResponseBody
	public String phone(String phone,HttpServletRequest request) {
		Admin selectByPhone = iAdminService.selectByPhone(phone);
		if (selectByPhone == null) {
			return "error";
		}
		loginService.sendVerificationCode(phone, request);
		
		return "success";
	}

	@RequestMapping(value = "email", method = RequestMethod.POST)
	@ResponseBody
	public String email(String email, HttpServletRequest request) {
		 Admin selectByEmail = iAdminService.selectByEmail(email);
		if (selectByEmail == null) {
			return "error";
		}
		MailModel mm = new MailModel(email, "” œ‰—È÷§");
		try {
			loginService.selectUserByEmail(email, mm, request);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
}
