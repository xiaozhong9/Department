package com.ssm.controller.admin;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.ssm.po.Article;
import com.ssm.service.admin.AraticleColumns.IArticleColumns;
import com.ssm.service.admin.article.IArticleService;

@Controller
@RequestMapping("admin/ac")
public class Article_ColumnController {

	
	@Autowired
	private IArticleColumns iArticleColumns;
	

	@RequestMapping(value="get/larticles",method=RequestMethod.POST )
	@ResponseBody
	public PageInfo<Article> selectArticle(int pageSize,int currentPage,int columnID)throws Exception{
		PageInfo<Article> list = iArticleColumns.findArticleByPage(pageSize,currentPage,columnID);
		return list;
	}
}
