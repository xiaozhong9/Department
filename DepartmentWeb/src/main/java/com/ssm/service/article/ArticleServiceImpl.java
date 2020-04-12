package com.ssm.service.article;


import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.common.HttpClientTool;
import com.ssm.po.Article;
@Service
public class ArticleServiceImpl implements ArticleService {
	
	@Resource
	private HttpClientTool httpClientTool;
	
	@Override
	public ApiResponseObject getArticle(int Aid) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_ARTICLE, Aid);
	}

	@Override
	public ApiResponseObject listArticle() throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_LIST_ARTICLE, null);
	}

	@Override
	public ApiResponseObject countSize() throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_SIZE_ARTICLE, null);
	}

	@Override
	public ApiResponseObject saveArticle(Article article) throws ApiServiceException {
			return httpClientTool.doPostJson(HttpClientTool.API_URL_ADD_ARTICLE, article);
	}

	@Override
	public ApiResponseObject removeArticle(int Aid) throws ApiServiceException {
			return httpClientTool.doPostJson(HttpClientTool.API_URL_REMOVE_ARTICLE, Aid);
	}

	@Override
	public ApiResponseObject updateArticle(Article article) throws ApiServiceException {
			return httpClientTool.doPostJson(HttpClientTool.API_URL_UPDATE_ARTICLE, article);
	}

	@Override
	public ApiResponseObject getColumnTitle(int []arr) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_IS_COLUMN_ARTICLE, arr);
	}

	@Override
	public ApiResponseObject lastAndNextArticle(Map<String, Integer> map) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_PAGETURN, map);
		
	}


	

}
