package com.ssm.service.admin.article;


import java.util.List;

import com.github.pagehelper.PageInfo;
import com.ssm.po.Article;
import com.ssm.po.Column;

public interface IArticleService {

	/**
	 * 新增文章
	 * @param article 文章对象
	 * @return Aid 文章ID
	 */
	public int saveArticle(Article article)throws Exception;
	
	/**
	 * 文章分页
	 * @param currentPage 第几页
	 * @param pageSize	一页多少条
	 * @return
	 */
	public PageInfo<Article> findArticleByPage(int pageSize,int currentPage)throws Exception;
	/**
	 * 草稿文章分页
	 * @param currentPage 第几页
	 * @param pageSize	一页多少条
	 * @return
	 */
	public PageInfo<Article> findDraftsByPage(int pageSize,int currentPage)throws Exception;
	/**
	 * 根据ID获取文章
	 * @param Aid 文章id
	 * @return
	 * @throws Exception
	 */
	public Article getArticle(int Aid) throws Exception;
	
	/**
	 * 批量删除垃圾箱里的文章 
	 * @param Aids
	 * @return
	 */
	public int removeArticles(int[] Aids)throws Exception;
	/**
	 * 批量删除文章至垃圾箱 
	 * @param Aids
	 * @return
	 */
	public int recycling(int[] Aids)throws Exception;
	
	/**
	 *回收站文章  
	 * @return
	 */
	public List<Article> recovery()throws Exception;
	/**
	 * 文章还原
	 * @param Aid
	 * @return
	 */
	public int reductionArticle(int Aid)throws Exception;
	
	/**
	 * 删除指定文章
	 * @param Aid 文章ID
	 * @return
	 */
	public int removeArticle(int Aid)throws Exception;
	
	/**
	 * 用于文章下架
	 * @param Aid
	 * @return
	 */
	public int rejectArticle(int Aid)throws Exception;
	
	/**
	 * 用于文章删除 设置设置状态为 -1
	 * @param Aid
	 * @return
	 */
	public int deleteArticle(int Aid)throws Exception;
	
	/**
	 * 用于文章修改 获取该文章所在的栏目
	 * @param Aid
	 * @return
	 */
	public List<Column> getColumnsByAid(int Aid) throws Exception;
	
	/**
	 * 修改文章
	 * @param article 文章对象
	 * @return
	 * @
	 */
	public int updateArticle(Article article)throws Exception;
	/**
	 * 草稿文章发布
	 * @param article 文章对象
	 * @return
	 * @
	 */
	public int feleaseArticle(int aid)throws Exception;
	
	/**
	 * 指定时间内按条件搜索指定文章
	 * @param start开始时间
	 * @param end结束时间
	 * @param condition条件(作者，标题)
	 * @return
	 */
	public List<Article> searchArticle(String start ,String end,String condition);
}
