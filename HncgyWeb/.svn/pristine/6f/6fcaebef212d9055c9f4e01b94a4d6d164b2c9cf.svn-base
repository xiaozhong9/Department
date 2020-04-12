package com.ssm.service.admin.oline;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.github.pagehelper.PageInfo;

public interface CommentService {
	/**
	 * 获取需要审核的评论
	 * @param currentPage 第几页
	 * @param pageSize	一页多少行
	 * @return
	 */
	public PageInfo<List<Map<String,Object>>> findOlineByState(int currentPage, int pageSize,int state);
	
	/**
	 * 获取不通过评论
	 *
	 * @return
	 */
	 
	public List<HashMap<String,Object>> findNotPass(int state);
	
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
	 * 批量删除
	 * @param arr id数组
	 * @return
	 */
	public int batchDel(int[]arr);
	
	/**
	 * 删除指定评论
	 * @param id
	 * @return
	 */
	public int delById(int id);
	
	/**
	 * 获得指定栏目下文章的评论
	 * @param columnId 栏目id
	 * @param articleId 文章id
	 * @param currentPage 当前页
	 * @param pageSize 一个多少条
	 * @return
	 */
	public PageInfo<List<Map<String,Object>>> administrationComment(int columnId,int articleId,int currentPage,int pageSize);
	
}
