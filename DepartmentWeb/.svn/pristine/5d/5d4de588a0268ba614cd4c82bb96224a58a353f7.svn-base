package com.ssm.service.activity;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Activity;

public interface ActivityService {
	/**
	 * 获取首页活动公告
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject indexActivitys() throws ApiServiceException;
	/**
	 * 查找指定活动公告
	 * @param id
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject findActivityById(int id)throws ApiServiceException;

	/**
	 * 上下篇活动公告
	 * @param id
	 * @return
	 */
	public ApiResponseObject pageTurnActivity(int id)throws ApiServiceException;
	/**
	 * 上下篇活动公告
	 * @param id
	 * @return
	 */
	public ApiResponseObject newestActivity()throws ApiServiceException;
}


