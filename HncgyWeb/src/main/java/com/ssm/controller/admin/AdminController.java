package com.ssm.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.po.Admin;
import com.ssm.service.admin.admin.IAdminService;
import com.ssm.utils.utils;

@Controller
public class AdminController {

	@Autowired
	private IAdminService adminService;

	@RequestMapping(value = "/login/email", method = RequestMethod.POST)
	@ResponseBody
	public String loginEmail(String code,String email,HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		String key = (String) session.getAttribute("key");
		String eqEmail= (String) session.getAttribute("email");
		if(code.equals(key)&&email.equals(eqEmail)){
			session.setAttribute("admin", adminService.selectByEmail(eqEmail));
			return "success";
		}
		return "error";
	}
	
	@RequestMapping(value = "/login/phone", method = RequestMethod.POST)
	@ResponseBody
	public String loginPhone(String code,String phone,HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		String key = (String) session.getAttribute("mCode");
		String eqMobile= (String) session.getAttribute("mobile");
		if(code.equals(key)&&phone.equals(eqMobile)){
			session.setAttribute("admin", adminService.selectByPhone(eqMobile));
			return "success";
		}
		return "error";
	}
	@RequestMapping(value="/login/password",method=RequestMethod.POST)
	@ResponseBody
	public String loginPassword(String account,String password,HttpServletRequest request) {
		String md5Password = utils.md5Encryption(password);
		Admin admin = new Admin();
		admin.setAccount(account);
		admin.setPassword(md5Password);
		Admin login = adminService.login(admin);
		if(login!=null){
			HttpSession session = request.getSession();
			session.setAttribute("admin", login);
			return "success";
		}
		return "error";
	}
	
	@RequestMapping(value="admin/all",method=RequestMethod.POST)
	@ResponseBody
	public List<Admin> all(){
		return adminService.findAdminALl();
	}
	@RequestMapping(value="admin/save",method=RequestMethod.POST)
	@ResponseBody
	public String saveAdmin(Admin admin){
		System.out.println("----------------admin_save------------"+admin);
		String md5DigestAsHex = utils.md5Encryption(admin.getPassword());
		admin.setPassword(md5DigestAsHex);
		int saveAdmin = adminService.saveAdmin(admin);
		if(saveAdmin>0){
			return"success";
		}
		
		return "error";
	}
	@RequestMapping(value="admin/accountJudge",method=RequestMethod.POST)
	@ResponseBody
	public Boolean remoteAccount(String account){
		int remoteAccount = adminService.remoteAccount(account);
		System.out.println("--------------------remoteAccount-------------"+remoteAccount);
		if(remoteAccount>0){
			return false;
		}
		
		return true;
	}
	
	@RequestMapping(value="admin/update",method=RequestMethod.POST)
	@ResponseBody
	public String updateAdmin(Admin admin){
		String md5DigestAsHex = utils.md5Encryption(admin.getPassword());
		admin.setPassword(md5DigestAsHex);
		int up = adminService.updateAdmin(admin);
		if(up>0){
			return"success";
		}
		return "error";
	}
	@RequestMapping(value="admin/update/password",method=RequestMethod.POST)
	@ResponseBody
	public String updatePassword(Admin admin){
		String md5DigestAsHex = utils.md5Encryption(admin.getPassword());
		admin.setPassword(md5DigestAsHex);
		int up = adminService.updatePassword(admin);
		if(up>0){
			return"success";
		}
		return "error";
	}
	
	@RequestMapping(value="admin/del",method=RequestMethod.POST)
	@ResponseBody
	public String del(int id){
		int delAdmin = adminService.delAdmin(id);
		if(delAdmin>0){
			return "success";
		}
		return "error";
	}
	
}
