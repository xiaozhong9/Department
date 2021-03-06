package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Article;
import com.ssm.po.ArticleColumns;
import com.ssm.po.Column;

public interface ArticleMapper {
	/**
	 * 根据文章ID 获取栏目
	 * @param Aid
	 * @return
	 * @
	 */
	public List<Column> getColumns(int Aid);

	/**
	 * 根据ID获取文章
	 * @param Aid 文章id
	 * @return
	 * @
	 */
	public Article getArticle(int Aid)  ;
	/**
	 * 文章分页
	 * @return
	 * @
	 */
	public List<Article> listArticlePage();
	/**
	 * 草稿文章分页
	 * @return
	 * @
	 */
	public List<Article> listDraftsPage();
	/**
	 * 获取所有文章 
	 * @return
	 * @
	 */
	public List<Article> listArticle();
	/**
	 * 根据文章个数
	 * @return
	 * @
	 */
	public int countSize();
	/**
	 * 新增文章
	 * @param article 文章对象
	 * @return
	 * @
	 */
	public int saveArticle(Article article);
	/**
	 * 根据id删除文章
	 * @param Aid 文章id
	 * @return
	 * @
	 */
	public int removeArticle(int Aid);
	/**
	 * 修改文章
	 * @param article 文章对象
	 * @return
	 * @
	 */
	public int updateArticle(Article article);
	
	
	/**
	 * 批量删除文章 
	 * @param Aids
	 * @return
	 */
	public int removeArticles(@Param(value="Aids") int[] Aids);
	/**
	 * 批量删除文章 
	 * @param Aids
	 * @return
	 */
	public int recycling(@Param(value="Aids") int[] Aids);
	
	/**
	 *回收站文章  
	 * @return
	 */
	public List<Article> recovery();
	
	
	/**
	 * 文章还原
	 * @param Aid
	 * @return
	 */
	public int reductionArticle(int Aid);
	
	/**
	 * 用于文章下架
	 * @param Aid
	 * @return
	 */
	public int rejectArticle(int Aid);
	
	/**
	 * 用于文章删除 设置设置状态为 -1
	 * @param Aid
	 * @return
	 */
	public int deleteArticle(int Aid);
	
	/**
	 * 用于文章修改 获取该文章所在的栏目
	 * @param Aid
	 * @return
	 */
	public List<Column> getColumnsByAid(int Aid);
	
	/**
	 * 文章访问增加
	 * @param article 文章对象
	 * @return
	 * @throws ApiServiceException
	 */
	public int updateViewCount(int Aid)throws ApiServiceException;
	
	/**
	 * 指定时间内按条件搜索指定文章
	 * @param start开始时间
	 * @param end结束时间
	 * @param condition条件(作者，标题)
	 * @return
	 */
	public List<Article> searchArticle(String start ,String end,String condition);
	
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
