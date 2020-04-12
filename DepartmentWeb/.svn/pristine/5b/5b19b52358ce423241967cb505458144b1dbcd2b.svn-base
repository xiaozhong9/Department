package com.ssm.service.column;

import java.util.Map;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Column;

public interface ColumnService {
	/**
	 * 栏目分页
	 * @param columnID 栏目 ID
	 * @param currentPage 第几页
	 * @param pageSize	一页多少条数据
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject findArticleByPage(Map<String,Integer> map)throws ApiServiceException;
	/**
	 * 根据栏目ID获取栏目名
	 * @param columnID
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getColumnTitleById(int columnID)throws ApiServiceException;
	/**
	 * 进入首页返回数据
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject index()throws ApiServiceException;
	/**
	 * 获取所有栏目下对应文章
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getColumnArticleTitle()throws ApiServiceException;
	/**
	 * 获取所有栏目对象
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getColumns()throws ApiServiceException;
	/**
	 * 获取所有栏目标题
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getColumnTitles()throws ApiServiceException;
	/**
	 * 根据栏目ID获取文章
	 * @param columnID 栏目id
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getArticles(int columnID) throws ApiServiceException ;
	/**
	 * 获取指定栏目的文章数量
	 * @param columnID 栏目id
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject countSize(int columnID) throws ApiServiceException ;
	/**
	 * 新增栏目
	 * @param column 栏目对象
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject saveColumn(Column column) throws ApiServiceException ;
	/**
	 * 修改栏目
	 * @param column 栏目对象
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject updateColumn(Column column) throws ApiServiceException ;
	
	/**
	 * 删除栏目
	 * @param columnID 栏目ID
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject updateColumn(int columnID) throws ApiServiceException ;
	
	/**
	 * 获取指定栏目热门文章
	 * @param columnid 栏目id
	 * @return
	 */
	public ApiResponseObject  findHotArticles(int columnId)throws ApiServiceException ;
}

