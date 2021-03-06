package com.ssm.service.api.article;

import java.util.List;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Article;
import com.ssm.po.ArticleColumns;
import com.ssm.po.Column;

public interface ArticleService {
	/**
	 * 获取栏目
	 * @param columnTitle
	 * @return
	 * @throws ApiServiceException
	 */
	public List<Column> getColumns(int Aid)throws ApiServiceException;
	
	/**
	 * 根据ID获取文章
	 * @param Aid 文章id
	 * @return
	 * @throws ApiServiceException
	 */
	public Article getArticle(int Aid) throws ApiServiceException ;
	/**
	 * 获取所有文章
	 * @return
	 * @throws ApiServiceException
	 */
	public List<Article> listArticle()throws ApiServiceException;
	/**
	 * 根据文章个数
	 * @return
	 * @throws ApiServiceException
	 */
	public int countSize()throws ApiServiceException;
	/**
	 * 新增文章
	 * @param article 文章对象
	 * @return
	 * @throws ApiServiceException
	 */
	public int saveArticle(Article article)throws ApiServiceException;
	/**
	 * 根据id删除文章
	 * @param Aid 文章id
	 * @return
	 * @throws ApiServiceException
	 */
	public int removeArticle(int Aid)throws ApiServiceException;
	/**
	 * 修改文章
	 * @param article 文章对象
	 * @return
	 * @throws ApiServiceException
	 */
	public int updateArticle(Article article)throws ApiServiceException;
	/**
	 * 文章访问增加
	 * @param article 文章对象
	 * @return
	 * @throws ApiServiceException
	 */
	public int updateViewCount(int Aid)throws ApiServiceException;

	/**
	 * 获取上一篇文章
	 * @param aid
	 * @param columnID
	 * @return
	 */
	public ArticleColumns getLastArticle(int aid,int columnID)throws ApiServiceException;
	/**
	 * 获取下一篇文章
	 * @param aid
	 * @param columnID
	 * @return
	 */
	public ArticleColumns getNextArticle(int aid,int columnID)throws ApiServiceException;
	
	/**
	 * 获取热门文章
	 * @return
	 */
	public List<Article> findHotArticles();
}
