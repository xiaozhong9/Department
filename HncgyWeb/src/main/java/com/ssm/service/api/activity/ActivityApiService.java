package com.ssm.service.api.activity;

import java.util.List;

import com.ssm.po.Activity;

public interface ActivityApiService {

	/**
	 * 查找5条活动公告在页面显示
	 * @return
	 */
	public List<Activity> apiFindActivity();
	/**
	 * 查找指定活动公告
	 * @param id
	 * @return
	 */
	public Activity findActivityById(int id);
	
	/**
	 * 下一篇
	 * @param id
	 * @return
	 */
	public Activity nextActivity(int id);
	/**
	 * 上一篇
	 * @param id
	 * @return
	 */
	public Activity lastActivity(int id);
	/**
	 * 最新活动公告
	 * @return
	 */
	public List<Activity> newestActivity();
}
