package com.ssm.service.friendlylink;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.common.HttpClientTool;
@Service
public class FriendlyLInkServiceImpl implements FriendlyLInkService {
	@Resource
	private HttpClientTool httpClientTool;
	@Override
	public ApiResponseObject findAll() throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_FRIENDLYLINK, null);
	}

}
