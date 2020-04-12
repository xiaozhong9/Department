package com.ssm.service.oline;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.common.HttpClientTool;
@Service
public class OlineServiceImpl implements OlineService {
	@Resource
	private HttpClientTool httpClientTool;

	@Override
	public ApiResponseObject saveComment(Map<String, Object> map) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_SAVE_COMMENT, map);
	}

	@Override
	public ApiResponseObject findOlineByArt(Map<String, Integer> map) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_OLINES, map);
	}
	
}
