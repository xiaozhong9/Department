package com.ssm.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Article;
import com.ssm.po.Img;
import com.ssm.service.article.ArticleServiceImpl;
import com.ssm.service.img.ImgService;
import com.ssm.service.teacher.TeacherService;
import com.ssm.service.tourist.TouristService;

@Controller
public class TestController {

	@Autowired
	ArticleServiceImpl articleServiceimpl;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	ImgService imgService;
	@Autowired
	private TouristService touristService;

	@RequestMapping("/countsize")
	public String testsdifj() throws ApiServiceException {
		ApiResponseObject countSize = articleServiceimpl.countSize();
		System.out.println("========counSize=====" + countSize.getData());

		return "index";

	}

	@RequestMapping("/testimg")
	public String testsdfj() throws ApiServiceException {
		ApiResponseObject getImg = imgService.getImg(1);
		System.out.println("========getImg=====" + getImg.getData());

		return "index";

	}

	@RequestMapping("/Insertimg")
	public String testdfsdfj() throws ApiServiceException {

		Img img = new Img();
		img.setImgName("sdfasd");
		img.setName("asdfa");
		img.setPubTime(new Date());
		img.setType("dfsdfsd");
		img.setUrl("sdfasdf");
		img.setCatagory("张");
		ApiResponseObject saveImg = imgService.saveImg(img);
		System.out.println(saveImg.getData());

		return "index";

	}

	@RequestMapping("/removeimg")
	public String testdfsddfj() throws ApiServiceException {

		ApiResponseObject removeImg = imgService.removeImg(3);
		System.out.println("===========removeImg==========" + removeImg.getData());

		return "index";

	}

	@RequestMapping("/test/index")
	public String testPage() throws ApiServiceException {
		// Article ar=new Article();
		// ar.setAid(100);
		// ar.setAuthor("zhongj");
		// ar.setColumnID(20);
		// ar.setState(1);
		// ApiResponseObject test = articleServiceimpl.saveArticle(ar);
		// System.out.println("返回的数据=============================================="+test.getData());
		Article a = new Article();
		a.setAid(1);
		a.setAuthor("zzz");
		a.setContent("haha");
		a.setTitle("TITITITITITIT");
		a.setState(2);
		a.setEditor("zhongj");
		a.setViewCount(100);
		a.setPubTime(new Date());
		a.setSubtitle("副标题");
		ApiResponseObject article = articleServiceimpl.listArticle();
		System.out.println(article.getData() + "================================================");
		return "index";
	}
	@RequestMapping(value="teacher/test")
	@ResponseBody
	public Object teacherTest() throws ApiServiceException{
		ApiResponseObject teacherById = teacherService.getTeacherById(75);
		return teacherById;
	}
	
	@RequestMapping(value="phone/test")
	@ResponseBody
	public String phoneTest() throws ApiServiceException{
		String phone="13047248978";
		ApiResponseObject touristPhone = touristService.touristPhone(phone);
		return "Hello, World1";
	}
}
