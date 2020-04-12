package com.ssm.service.today;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.common.HttpClientTool;
@Service
public class TodayServiceImpl implements TodayService {
	@Resource
	private HttpClientTool httpClientTool;
	@Override
	public ApiResponseObject getTodayById(int id) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_TODAY, id);
	}
	@Override
	public ApiResponseObject findAll() throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_TODAY_ALL,null);
	}
	@Override
	public ApiResponseObject getTodayPageTurn(int id) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_TODAY_PAGE_TURN,id);
	}

}
