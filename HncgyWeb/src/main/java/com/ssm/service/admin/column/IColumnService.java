package com.ssm.service.admin.column;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Article;
import com.ssm.po.Column;
import com.ssm.po.HotArticle;

public interface IColumnService {
	/**
	 * 获取所有栏目
	 * @return
	 * @throws ApiServiceException
	 */
	public List<Column> getColumns() throws Exception ;
	/**
	 * 根据栏目ID获取文章
	 * @param columnID 栏目id
	 * @return
	 * @throws ApiServiceException
	 */
	public List<Article> getArticles(int columnID) throws ApiServiceException ;
	
	/**
	 * 文章分页
	 * @param currentPage 第几页
	 * @param pageSize	一页多少条
	 * @return
	 */
	public PageInfo<Article> findArticleByPage(int pageSize,int currentPage,int columnID);
	
	/**
	 * 批量删除 栏目 下的 所选中文章
	 * @param Aids
	 * @param columnID
	 * @return
	 * @throws Exception
	 */
	public int removeArticles(int[] Aids,int columnID)throws Exception;
	/**
	 * 删除 栏目 下的 所选中文章
	 * @param Aids
	 * @param columnID
	 * @return
	 * @throws Exception
	 */
	public int deleteArticle(int aid,int columnID)throws Exception;
	
	/**
	 * 增加热门文章
	 * @param hot
	 * @return
	 */
	public int hotArticle(HotArticle hot);
	/**
	 * 取消热门文章
	 * @param hot
	 * @return
	 */
	public int reduceArticle(HotArticle hot);
}
