package com.ssm.service.api.article;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.mapper.ArticleMapper;
import com.ssm.po.Article;
import com.ssm.po.ArticleColumns;
import com.ssm.po.Column;

@Service
public class ArticleServiceImpl implements ArticleService {
	
	@Resource
	ArticleMapper articleMapper;
	
	@Override
	public Article getArticle(int Aid) throws ApiServiceException {
		return articleMapper.getArticle(Aid);
	}

	@Override
	public List<Article> listArticle() throws ApiServiceException {
		return  articleMapper.listArticle();
	}

	@Override
	public int countSize() throws ApiServiceException {
		return articleMapper.countSize();
	}

	@Override
	public int saveArticle(Article article) throws ApiServiceException {
		return articleMapper.saveArticle(article);
	}

	@Override
	public int removeArticle(int Aid) throws ApiServiceException {
		return	articleMapper.removeArticle(Aid);
	}

	@Override
	public int updateArticle(Article article) throws ApiServiceException {
		return 	articleMapper.updateArticle(article);
	}

	@Override
	public List<Column> getColumns(int Aid) throws ApiServiceException {
		return articleMapper.getColumns(Aid);
	}

	@Override
	public int updateViewCount(int Aid) throws ApiServiceException {
		return articleMapper.updateViewCount(Aid);
	}

	@Override
	public ArticleColumns getLastArticle(int aid, int columnID) throws ApiServiceException {
		return articleMapper.getLastArticle(aid, columnID);
	}

	@Override
	public ArticleColumns getNextArticle(int aid, int columnID) throws ApiServiceException {
		return articleMapper.getNextArticle(aid, columnID);
	}

	@Override
	public List<Article> findHotArticles() {
		return articleMapper.findHotArticles();
	}

}
