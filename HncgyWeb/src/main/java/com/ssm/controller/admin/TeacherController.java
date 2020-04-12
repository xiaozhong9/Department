package com.ssm.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageInfo;
import com.ssm.po.Teacher;
import com.ssm.service.admin.teacher.TeacherService;
@RequestMapping("teacher")
@Controller
public class TeacherController {
	@Autowired
	private TeacherService teacherService;
	@Value("${pic.tea}")
	private String tUrl;
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	@ResponseBody
	public String uploadTeacherPic(@RequestParam(value = "file") MultipartFile file) throws IOException{
		if (file != null) {
			// 原名字
			String name = file.getOriginalFilename();
			// 上传文件位置
			String uploadPath = this.tUrl;
			// 扩展名
			String type = name.substring(name.lastIndexOf("."));
			// 随机号
			String uuid = UUID.randomUUID().toString();
			// 路径
			String path = uploadPath + uuid + type;
			File f = new File(path);
			// 新名字
			String newName = uuid + type;
			file.transferTo(f);
			return newName;
		}
		return "error";
	}
	@RequestMapping(value="save",method=RequestMethod.POST)
	@ResponseBody
	public String saveTeacher(Teacher teacher){
		if(teacher==null){
			return null;
		}
		int saveTeacher = teacherService.saveTeacher(teacher);
		if(saveTeacher>=1){
			return "success";
		}
		return "error";
	}
	
	@RequestMapping("all")
	@ResponseBody
	public PageInfo<Teacher> findALl(int currentPage,int pageSize){
		PageInfo<Teacher> findAll = teacherService.findAll(currentPage,pageSize);
		return findAll; 
	}
	
	@RequestMapping(value="edit",method=RequestMethod.POST)
	@ResponseBody
	public Teacher findTeacherById(int id){
		Teacher teacher = teacherService.findTeacherById(id);
		return teacher;
	}
	
	@RequestMapping(value="update",method=RequestMethod.POST)
	@ResponseBody
	public String editTeacher(Teacher teacher){
		int i = teacherService.updateTeacher(teacher);
		if(i<1){
		return "error";
		}
		return "success";
	}
	
	@RequestMapping(value="delete",method=RequestMethod.POST)
	@ResponseBody
	public String delTeacher(int id){
		int i = teacherService.deleteTeacherById(id);
		if(i<1){
			return "error";
		}
		return "success";
	}
	
	@RequestMapping(value="batch",method=RequestMethod.POST)
	@ResponseBody
	public String batchDelteTea(int[]ids){
		if(ids==null){
			return "error";
		}
		int deleteTeachers = teacherService.deleteTeachers(ids);
		if(deleteTeachers<1){
			return "error";
		}
		return "success";
	}
}
