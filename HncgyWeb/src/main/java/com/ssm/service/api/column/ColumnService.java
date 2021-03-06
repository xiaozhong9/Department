package com.ssm.service.api.column;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Article;
import com.ssm.po.ColumnArticleTitle;
import com.ssm.po.Column;

public interface ColumnService {
	/**
	 * 文章分页
	 * @param columnID 栏目ID
	 * @param currentPage 第几页
	 * @param pageSize	一页多少行
	 * @return
	 */
	public PageInfo<Article> findArticleByPage(int columnID,int currentPage, int pageSize);
	/**
	 * 根据 栏目ID 获取栏目标题
	 * @param Aid
	 * @return
	 */
	public String getColumnTitleById(int columnID);
	/**
	 * 根据 文章ID 栏目ID 获取栏目标题
	 * @param Aid
	 * @return
	 */
	public String getColumnTitle(int Aid,int columnID);
	
	/**
	 * 获取所有首页 栏目ID
	 * @return
	 * @throws ApiServiceException
	 */
	public List<Integer> index()throws ApiServiceException;
	
	/**
	 * 获取所有栏目以及文章标题
	 * @return
	 * @throws ApiServiceException
	 */
	public List<ColumnArticleTitle> getColumnArticleTitle(List<Integer> arr) throws ApiServiceException ;
	
	
	/**
	 * 获取所有栏目
	 * @return
	 * @throws ApiServiceException
	 */
	public List<Column> getColumns() throws ApiServiceException ;
	/**
	 * 获取所有栏目标题
	 * @return
	 * @throws ApiServiceException
	 */
	public List<Column> getColumnTitles()throws ApiServiceException;
	/**
	 * 根据栏目ID获取文章
	 * @param columnID 栏目id
	 * @return
	 * @throws ApiServiceException
	 */
	public List<Article> getArticles(int columnID) throws ApiServiceException ;
	/**
	 * 获取指定栏目的文章数量
	 * @param columnID 栏目id
	 * @return
	 * @throws ApiServiceException
	 */
	public int countSize(int columnID) throws ApiServiceException ;
	/**
	 * 新增栏目
	 * @param column 栏目对象
	 * @return
	 * @throws ApiServiceException
	 */
	public int saveColumn(Column column) throws ApiServiceException ;
	/**
	 * 修改栏目
	 * @param column 栏目对象
	 * @return
	 * @throws ApiServiceException
	 */
	public int updateColumn(Column column) throws ApiServiceException ;
	
	/**
	 * 删除栏目
	 * @param columnID 栏目ID
	 * @return
	 * @throws ApiServiceException
	 */
	public int removeColumn(int columnID) throws ApiServiceException ;
	
	/**
	 * 获取指定栏目下热门文章
	 * @param columnsID
	 * @return
	 * @throws ApiServiceException
	 */
	public List<Article> hotArticles(int columnId) throws ApiServiceException ;
}
