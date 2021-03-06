package com.ssm.service.admin.activity;


import com.github.pagehelper.PageInfo;
import com.ssm.po.Activity;

public interface ActivityService {
	/**
	 * 分页查询活动公告
	 * @param currentPage 当前页 
	 * @param pageSize 一页的数量
	 * @return
	 */
	public PageInfo<Activity> findActivityByPage(int currentPage,int pageSize);
	
	/**
	 * 删除活动公告
	 * @param id
	 * @return
	 */
	public int delActivity(int id);
	
	/**
	 * 修改活动公告
	 * @param id
	 * @return
	 */
	public int updateActivity(Activity activity);
	
	/**
	 * 添加活动公告
	 * @param id
	 * @return
	 */
	public int saveActivity(Activity activity);
	

	/**
	 * 查找指定公告
	 * @param id
	 * @return
	 */
	public Activity findActivityById(int id);

	
	/**
	 * 批量删除
	 * @param ids
	 * @return
	 */
	public int batchDel(int[]ids);
	
	/**
	 * 修改状态为1
	 * @param id
	 * @return
	 */
	public int modifyState(int id);
	/**
	 * 修改状态为0
	 * @param id
	 * @return
	 */
	public int remState(int id);
	/**
	 * 查看前端显示的活动公告数量
	 * @return
	 */
	public int findStateSize();
}
