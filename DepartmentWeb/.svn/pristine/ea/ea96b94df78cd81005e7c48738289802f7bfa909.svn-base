package com.ssm.service.img;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.common.HttpClientTool;
import com.ssm.po.Img;
@Service
public class ImgServiceImpl implements ImgService {
	@Resource
	private HttpClientTool httpClientTool;
	
	@Override
	public ApiResponseObject getImg(int id) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_IMG, id);
	}

	@Override
	public ApiResponseObject saveImg(Img img) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_ADD_IMG, img);
	}

	@Override
	public ApiResponseObject removeImg(int id) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_REMOVE_IMG, id);
	}

	@Override
	public ApiResponseObject updateImg(Img img) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_UPDATE_IMG, img);
	}

	@Override
	public ApiResponseObject findLoopImgs() throws ApiServiceException {
		// TODO Auto-generated method stub
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_POOL,null);
	}


}
