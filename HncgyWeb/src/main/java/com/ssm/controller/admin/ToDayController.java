package com.ssm.controller.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.ssm.po.Today;
import com.ssm.service.admin.today.TodayService;

@Controller
@RequestMapping("today")
public class ToDayController {
	@Autowired
	private TodayService service;

	@RequestMapping(value = "all", method = RequestMethod.POST)
	@ResponseBody
	public  PageInfo<List<Map<String, Object>>> findAll(int pageSize, int currentPage) {
		PageInfo<List<Map<String, Object>>> findAll = service.findAll(pageSize, currentPage);
		return findAll;
	}
	
	@RequestMapping(value="save",method=RequestMethod.POST)
	@ResponseBody
	public String saveToday(Today today){
		if(today==null){
		return "error";
		}
		int saveToday = service.saveToday(today);
		if(saveToday==1){
		return "success";
		}
		return "error";
	}
	@RequestMapping(value="delete",method=RequestMethod.POST)
	@ResponseBody
	public String deleteToday(int aid){
		int delToday = service.delToday(aid);
		if(delToday>0){
			return "success";
		}
		return "error";
	}
}
