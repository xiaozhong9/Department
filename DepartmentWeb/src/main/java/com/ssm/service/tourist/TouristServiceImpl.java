package com.ssm.service.tourist;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.common.HttpClientTool;

@Service
public class TouristServiceImpl implements TouristService {
	@Resource
	private HttpClientTool httpClientTool;

	@Override
	public ApiResponseObject touristEmail(String email) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_TOURIST_EMAIL,email);
	}

	@Override
	public ApiResponseObject touristPhone(String phone) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_TOURIST_PHONE,phone);
	}
}
