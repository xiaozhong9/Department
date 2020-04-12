package com.ssm.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.ssm.po.Article;
import com.ssm.po.ColArticle;
import com.ssm.po.Column;
import com.ssm.po.HotArticle;
import com.ssm.service.admin.AraticleColumns.IArticleColumns;
import com.ssm.service.admin.column.IColumnService;

@Controller
@RequestMapping("admin/column")
public class ColumnController {

	@Autowired
	IColumnService iColumnService;
	@Autowired
	private IArticleColumns iArticleColumns;
	
	@RequestMapping(value="/get/columns",method=RequestMethod.POST)
	@ResponseBody 
	 public List<Column> getColumns() throws Exception{
		return iColumnService.getColumns();
	}
	
	@RequestMapping(value="/get/column",method=RequestMethod.POST)
	@ResponseBody
	public PageInfo<Article> getColumnById(int columnID,int pageSize,int currentPage) throws Exception{
		PageInfo<Article> list = iColumnService.findArticleByPage(pageSize,currentPage,columnID);
	
		return list;
	}
	@RequestMapping(value="/save/articles",method=RequestMethod.POST)
	@ResponseBody
	public String saveArticles(@RequestBody ColArticle colArticle) throws Exception{
		int saveColArticles = iArticleColumns.saveColArticles(colArticle);
		return null;
	}
	@RequestMapping(value="remvoe/articles",method=RequestMethod.POST)
	@ResponseBody
	public String removeArticle(int[]  Aids , int columnID)throws Exception{
		
		int row = iColumnService.removeArticles(Aids, columnID);
		if(row>0){
			
			return "success";
		}
		return "error";
	}
	@RequestMapping(value="delete/article",method=RequestMethod.POST)
	@ResponseBody
	public String deleteArticle(int  aid , int columnID)throws Exception{
		
		int row = iColumnService.deleteArticle(aid, columnID);
		if(row>0){
			
			return "success";
		}
		return "error";
	}
	
	@RequestMapping (value="add/hotarticle",method=RequestMethod.POST)
	@ResponseBody
	public String hotArticle(HotArticle hot){
		int hotArticle = iColumnService.hotArticle(hot);
		if(hotArticle>0){
			return"success";
		}
		return "error";
	}
	@RequestMapping (value="reduce/hotarticle",method=RequestMethod.POST)
	@ResponseBody
	public String reduceArticle(HotArticle hot){
		int reduceArticle = iColumnService.reduceArticle(hot);
		if(reduceArticle>0){
			return "success";
		}
		return "error";
	}
	
}
