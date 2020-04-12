package com.ssm.service.api.online;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Oline;

public interface OlineServiceApi {
	/**
	 * 插入评论
	 * @param oline 评论对象
	 * @return
	 */
	public int insertOline(Oline oline) throws ApiServiceException ;
	
	/**
	 * 获取指定栏目下文章的所有评论
	 * @param pageSize 当前页
	 * @param article_Id 文章id
	 * @param column_Id	栏目id
	 * @return
	 * @throws ApiServiceException
	 */
	public PageInfo<Oline>  findOlineByArt(int article_Id,int column_Id,int currentPage) throws ApiServiceException ;
}
