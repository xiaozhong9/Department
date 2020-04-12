package com.ssm.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.ssm.common.ApiServiceException;
import com.ssm.po.Oline;

public interface OlineMapper {
	/**
	 * 获取需要审核的评论
	 *
	 * @return
	 */
	 
	public List<HashMap<String,Object>> findOlineByState(int state);
	
	
	
	
	/**
	 * 审核通过
	 * @param id
	 * @return
	 */
	public int updateStateById(int id);
	
	/**
	 * 审核不通过
	 * @param id
	 * @return
	 */
	public int notPass(int id);
	
	/**
	 * 插入评论
	 * @param oline 评论对象
	 * @return
	 */
	public int insertOline(Oline oline);
	
	/**
	 * 获取指定栏目下文章的所有评论
	 * @param pageSize 当前页
	 * @param article_Id 文章id
	 * @param column_Id	栏目id
	 * @return
	 * @throws ApiServiceException
	 */
	public List<Oline> findOlineByArt(int article_Id,int column_Id) throws ApiServiceException ;
	
	/**
	 * 批量删除
	 * @param arr id数组
	 * @return
	 */
	public int batchDel(@Param(value="arr")int[]arr);
	
	/**
	 * 删除指定评论
	 * @param id
	 * @return
	 */
	public int delById(int id);
	

}
