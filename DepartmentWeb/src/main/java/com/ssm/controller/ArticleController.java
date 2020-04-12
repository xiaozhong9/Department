package com.ssm.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Article;
import com.ssm.po.ArticleJoinColumn;
import com.ssm.po.Column;
import com.ssm.service.article.ArticleService;

@Controller
@RequestMapping("article")
public class ArticleController {
	@Autowired
	private ArticleService articleService;
	
	

	/*访问指定文章*/
	@RequestMapping(value="/get/article/{Aid}/{columnID}" )
	public String getArticle(@PathVariable("Aid")int Aid,@PathVariable("columnID")int columnID,HttpServletRequest request,HttpServletResponse response) throws ApiServiceException, IOException, ServletException{
		int []arr={Aid,columnID};
		String str="fdsfsfs";
		ApiResponseObject columnTitle = articleService.getColumnTitle(arr);
		HttpSession session = request.getSession();
		if(columnTitle.getData()==null||"".equals(columnTitle.getData())){
			return "404";
		}
		ApiResponseObject article = articleService.getArticle(Aid);
		if(article.getData()!=null){
			session.removeAttribute("error");
			session.setAttribute("article", article.getData());
			session.setAttribute("columnTitle", columnTitle.getData());
			session.setAttribute("columnID", columnID);
			Object  attribute= session.getAttribute("obj");
			if(attribute==null){
			session.setAttribute("obj", false);
			}
			return "article";
		}else{
			session.removeAttribute("article");
			session.setAttribute("error", "文章已丢失");
			return "article";
		}
	}
	
	@RequestMapping(value="get/page/turn",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject lastAndNextArticle(int aid,int columnID) throws ApiServiceException{
		HashMap<String, Integer> map =new HashMap<String,Integer>();
		map.put("aid", aid);
		map.put("columnID", columnID);
		
		ApiResponseObject article_page = articleService.lastAndNextArticle(map);
		return article_page;
		
	}

	
	@RequestMapping("/get/column")
	public String testColumn() throws ApiServiceException{
		return "column";
	}
	@RequestMapping(value="/list/article" ,method=RequestMethod.POST)
	public ApiResponseObject listArticle() throws ApiServiceException {
		return articleService.listArticle();
	}
	@RequestMapping(value="/count/size" ,method=RequestMethod.POST)
	public ApiResponseObject countSize() throws ApiServiceException {
		return articleService.countSize();
	}
	@RequestMapping(value="/save/article" ,method=RequestMethod.POST)
	public ApiResponseObject saveArticle(Article article) throws ApiServiceException {
		return articleService.saveArticle(article);
	}
	@RequestMapping(value="/remove/article" ,method=RequestMethod.POST)
	public ApiResponseObject removeArticle(int Aid) throws ApiServiceException {
		return articleService.removeArticle(Aid);
	}
	@RequestMapping(value="/update/article" ,method=RequestMethod.POST)
	public ApiResponseObject updateArticle(Article article) throws ApiServiceException {
		return articleService.updateArticle(article);
	}
	@RequestMapping(value="/hot/articles",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject hotArticles(){
		System.out.println("热门文章======================");
		return null;
	}
}
