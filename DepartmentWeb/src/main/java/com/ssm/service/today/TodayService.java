package com.ssm.service.today;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;

public interface TodayService {
	/**
	 * 查看指定今日关注
	 * @param id
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getTodayById(int id) throws ApiServiceException ;
	/**
	 * 获取所有今日关注
	 * @param id
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject findAll() throws ApiServiceException ;
	/**
	 * 获取今日关注上下篇
	 * @param id
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getTodayPageTurn(int id) throws ApiServiceException ;
}
