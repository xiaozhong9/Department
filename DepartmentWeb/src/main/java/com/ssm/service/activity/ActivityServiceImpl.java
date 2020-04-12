package com.ssm.service.activity;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.common.HttpClientTool;
import com.ssm.po.Activity;
@Service
public class ActivityServiceImpl implements ActivityService {
	@Resource
	private HttpClientTool httpClientTool;
	@Override
	public ApiResponseObject indexActivitys() throws ApiServiceException{
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_INDEX_ACTIVITY,null);
	}
	@Override
	public ApiResponseObject findActivityById(int id) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_ACTIVITY_BYID,id);
	}
	@Override
	public ApiResponseObject pageTurnActivity(int id) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_ACTIVITY_PAGETURN,id);
	}
	@Override
	public ApiResponseObject newestActivity() throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_NEWEST_ACTIVITY,null);
	}
}
