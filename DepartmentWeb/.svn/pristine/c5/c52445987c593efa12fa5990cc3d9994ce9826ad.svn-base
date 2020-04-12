package com.ssm.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.service.column.ColumnService;

@Controller
@RequestMapping("column")
public class ColumnController {
	@Autowired
	private ColumnService columnService;
	
	@RequestMapping("get/column/page/{columnID}/{currentPage}/{pageSize}")
	@ResponseBody
	public Object findArticleByPage (@PathVariable("columnID") int columnID,@PathVariable("currentPage") int currentPage,@PathVariable("pageSize") int pageSize) throws ApiServiceException{
		Map<String,Integer> map=new HashMap<>();
		map.put("columnID", columnID);
		map.put("currentPage", currentPage);
		map.put("pageSize", pageSize);
		ApiResponseObject findArticleByPage = columnService.findArticleByPage(map);
		Object data= findArticleByPage.getData();
		return data;
	}
	
	@RequestMapping("/get/column/articles/{columnID}")
	public String getColumnArticles(HttpServletRequest request,@PathVariable("columnID") int columnID) throws ApiServiceException{
		
		if(columnID>7){
			return "404";
			
		}
		ApiResponseObject articles = columnService.getArticles(columnID);
		request.getSession().setAttribute("Articles",articles);
		ApiResponseObject columnTitle = columnService.getColumnTitleById(columnID);
		request.setAttribute("cTitle", columnTitle.getData());
		request.setAttribute("columnID", columnID);
		return "column";
	}
	@RequestMapping(value="/get/column/titles",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject getColumnTitles() throws ApiServiceException{
				return columnService.getColumnTitles();
	}
	
	@RequestMapping(value="/get/columns",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject getArticlesTitleColumn() throws ApiServiceException{
		ApiResponseObject columnArticleTitle = columnService.getColumnArticleTitle();
		return columnArticleTitle;
	}
	@RequestMapping(value="hot/article",method=RequestMethod.POST)
	@ResponseBody
	public ApiResponseObject findHotArticles(int columnId) throws ApiServiceException{
		return columnService.findHotArticles(columnId);
	}
}
