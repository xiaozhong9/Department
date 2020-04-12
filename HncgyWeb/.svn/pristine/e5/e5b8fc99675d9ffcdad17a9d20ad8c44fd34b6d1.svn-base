package com.ssm.controller.admin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.ssm.po.Article;
import com.ssm.po.Column;
import com.ssm.po.IncreaseArticle;
import com.ssm.service.admin.AraticleColumns.IArticleColumns;
import com.ssm.service.admin.article.IArticleService;
import com.ssm.utils.utils;

@Controller
@RequestMapping("admin/article")
public class ArticleController {

	@Autowired
	private IArticleService article;

	@Autowired
	private IArticleColumns iArticleColumns;

	@RequestMapping(value = "add/article1", method = RequestMethod.POST)
	@ResponseBody
	public void addArticle(@RequestBody IncreaseArticle art) throws Exception {
		int res = article.saveArticle(art.getArticle());
		if (res > 0) {
			int saveArticleColumns = iArticleColumns.saveArticleColumns(art);
			if (saveArticleColumns > 0) {
			}
		}
	}

	@RequestMapping("find/articles")
	@ResponseBody
	public PageInfo<Article> findArticles(int pageSize, int currentPage) throws Exception {
		PageInfo<Article> list = article.findArticleByPage(pageSize, currentPage);
		return list;
	}
	@RequestMapping("find/drafts")
	@ResponseBody
	public PageInfo<Article> findDrafts(int pageSize, int currentPage) throws Exception {
		PageInfo<Article> list = article.findDraftsByPage(pageSize, currentPage);
		return list;
	}

	@RequestMapping("get/content")
	@ResponseBody
	public Article getcontent(int Aid) throws Exception {

		Article article2 = article.getArticle(Aid);
		return article2;

	}
	
	@RequestMapping("recycling")
	@ResponseBody
	public String recycling(int[] Aids) throws Exception{

		int removeArticles = article.recycling(Aids);
		if (removeArticles > 0) {
			return "success";
		}
		return "error";
	}

	@RequestMapping("remove/articles")
	@ResponseBody
	public String remove(int[] Aids) throws Exception {

		int removeArticles = article.removeArticles(Aids);
		if (removeArticles > 0) {
			return "success";
		}
		return "error";

	}

	@RequestMapping("recovery")
	@ResponseBody
	public List<Article> recovery() throws Exception {
		return article.recovery();
	}

	@RequestMapping("modify/state")
	@ResponseBody
	public String reduction(int Aid) throws Exception {
		int row = article.reductionArticle(Aid);
		if (row > 0) {
			return "success";
		}
		return "error";
	}

	@RequestMapping("Destruction/article")
	@ResponseBody
	public String article_del(int Aid) throws Exception {
		int removeArticle = article.removeArticle(Aid);
		if (removeArticle > 0) {
			return "success";
		}
		return "error";
	}

	@RequestMapping(value = "reject", method = RequestMethod.POST)
	@ResponseBody
	public String Article_reject(int Aid) throws Exception {
		int rejectArticle = article.rejectArticle(Aid);
		if (rejectArticle > 0) {

			return "success";
		}
		return "error";
	}

	@RequestMapping(value = "delete/article", method = RequestMethod.POST)
	@ResponseBody
	public String del_reject(int Aid) throws Exception {

		int deleteArticle = article.deleteArticle(Aid);
		if (deleteArticle > 0) {

			return "success";
		}

		return "error";

	}

	@RequestMapping(value = "modify/article", method = RequestMethod.POST)
	@ResponseBody
	public String modify_reject(int Aid) throws Exception {

		int deleteArticle = article.deleteArticle(Aid);
		if (deleteArticle > 0) {

			return "success";
		}

		return "error";

	}

	@RequestMapping(value = "get/columns", method = RequestMethod.POST)
	@ResponseBody
	public List<Column> getColumnsByAid(int Aid) throws Exception {

		if (!(Aid > 0)) {
			return null;
		}

		List<Column> columnsByAid = article.getColumnsByAid(Aid);
		if (columnsByAid != null) {

			return columnsByAid;
		}

		return null;
	}

	@RequestMapping(value="update/article",method = RequestMethod.POST)
	@ResponseBody
	public String updateArticle(Article a) throws Exception{
		if(a==null){
			return "error";
		}
		int updateArticle = article.updateArticle(a);
		if(updateArticle>0){
			
			return "success";	
		}
		
		return "error";	
	}
	@RequestMapping(value="felease",method = RequestMethod.POST)
	@ResponseBody
	public String feleaseArticle(int aid) throws Exception{
		if(aid==0){
			return "error";
		}
		
		int feleaseArticle = article.feleaseArticle(aid);
		if(feleaseArticle>0){
			
			return "success";	
		}
		
		return "error";	
	}
	
	@RequestMapping(value="search/articles",method=RequestMethod.POST)
	@ResponseBody
	public List<Article> findArticles(String start,String end,String condition){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if(utils.isEmpty(end)){
			end= format.format(new Date());
		}
		if(utils.isEmpty(start)){
			start="2000-01-01";
		}
		List<Article> searchArticle = article.searchArticle(start, end, condition);
		return searchArticle;
	}
	
	
}
