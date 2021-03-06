package com.ssm.controller.api;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ssm.common.ApiResponseEnum;
import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Article;
import com.ssm.po.ArticleColumns;
import com.ssm.service.api.article.ArticleService;

@RestController
@RequestMapping("api/article")
public class ArticleApiController extends AbstractApiController {

	@Autowired
	ArticleService articleService;

	@RequestMapping(value="get/article",method=RequestMethod.POST)
	public ApiResponseObject getArticle(@RequestBody int Aid) throws ApiServiceException {
		if (Aid < 1) {
			return responseJSON(ApiResponseEnum.ERROR_PARAM.getCode(), ApiResponseEnum.ERROR_PARAM.getName(), null);
		}
		Article article = articleService.getArticle(Aid);
		if (article == null) {
			return responseJSON(ApiResponseEnum.ERROR_DATA_EMPTY.getCode(), ApiResponseEnum.ERROR_DATA_EMPTY.getName(),
					null);
		}
		int u = articleService.updateViewCount(Aid);
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(),
				article);
	}

	@RequestMapping("update/article")
	public ApiResponseObject updateArticle(@RequestBody Article article) throws ApiServiceException {
		if (article == null) {
			return responseJSON(ApiResponseEnum.ERROR_PARAM.getCode(), ApiResponseEnum.ERROR_PARAM.getName(), null);
		}
		int saveArticle = articleService.updateArticle(article);
		if (saveArticle < 1) {
			return responseJSON(ApiResponseEnum.FAIL.getCode(), ApiResponseEnum.FAIL.getName(), null);
		}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), saveArticle);
	}

	@RequestMapping("save/article")
	public ApiResponseObject saveArticle(@RequestBody Article article) throws ApiServiceException {
		if (article == null)
			return responseJSON(ApiResponseEnum.ERROR_PARAM.getCode(), ApiResponseEnum.ERROR_PARAM.getName(), null);
		int saveArticle = articleService.saveArticle(article);
		if (saveArticle < 1) {
			return responseJSON(ApiResponseEnum.FAIL.getCode(), ApiResponseEnum.FAIL.getName(), null);
		}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), saveArticle);

	}

	@RequestMapping("countsize")
	public ApiResponseObject countSize() throws ApiServiceException {
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(),
				articleService.countSize());

	}
	
	@RequestMapping("remove/article")
	public ApiResponseObject removeArticle(@RequestBody int Aid) throws ApiServiceException {
		if(Aid<1){
			return responseJSON(ApiResponseEnum.ERROR_PARAM.getCode(), ApiResponseEnum.ERROR_PARAM.getName(), null);
		}
			int removeArticle = articleService.removeArticle(Aid);
			if(removeArticle==0){
				return responseJSON(ApiResponseEnum.FAIL.getCode(), ApiResponseEnum.FAIL.getName(),
						articleService.countSize());
			}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(),
				articleService.countSize());

	}
	@RequestMapping("list/article")
	public ApiResponseObject listArticle() throws ApiServiceException {
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(),
				articleService.listArticle());
		
	}
	
	@RequestMapping("get/colum")
	public ApiResponseObject getColumn(@RequestBody int Aid) throws ApiServiceException {
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(),
				articleService.getColumns(Aid));
		
	}
	
	@RequestMapping("page/turn")
	public ApiResponseObject lastAndNextArticle(@RequestBody Map<String,Object> map )throws ApiServiceException {
		int aid =(int) map.get("aid");
		int columnID=(int)map.get("columnID");
		ArticleColumns nextArticle = articleService.getNextArticle(aid, columnID);//��һƪ
		ArticleColumns lastArticle = articleService.getLastArticle(aid,columnID);//��һƪ
		map=new HashMap<>();
		map.put("nextArticle", nextArticle);
		map.put("lastArticle", lastArticle);
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(),
				map);
	}
	@RequestMapping(value="hot/articles",method=RequestMethod.POST)
	public ApiResponseObject hotArticles(){
		return null;
	}
}
