package com.ssm.service.tourist;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;

public interface TouristService {
	
	/**
	 * 游客邮箱验证
	 * @param email 游客邮箱
	 * @return
	 */
	public ApiResponseObject touristEmail(String email)throws ApiServiceException;
	
	/**
	 * 游客手机验证
	 * @param email 游客邮箱
	 * @return
	 */
	public ApiResponseObject touristPhone(String phone)throws ApiServiceException;
	
}
