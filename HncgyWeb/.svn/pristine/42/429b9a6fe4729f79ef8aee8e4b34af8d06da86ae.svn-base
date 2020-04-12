package com.ssm.service.admin.verification;

import javax.servlet.http.HttpServletRequest;

import com.ssm.po.MailModel;

public interface LoginService {
	/**
	 * 
	 * @param email ÓÊÏäºÅÂë
	 * @param mail	ÓÊÏä¶ÔÏó
	 * @param request 
	 * @return
	 */
	public String selectUserByEmail(String email,MailModel mail,HttpServletRequest request);
	
	/**
	 * 
	 * @param mobileÊÖ»úºÅÂë
	 * @param request
	 * @return
	 */
	public String sendVerificationCode(String mobile,HttpServletRequest request);
}
