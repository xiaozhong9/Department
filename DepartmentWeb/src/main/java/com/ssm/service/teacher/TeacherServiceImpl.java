package com.ssm.service.teacher;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.common.HttpClientTool;
@Service
public class TeacherServiceImpl implements TeacherService {

	@Resource
	private HttpClientTool httpClientTool;

	@Override
	public ApiResponseObject getTeachers() throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_TEACHERS, null);
	}

	@Override
	public ApiResponseObject getTeacherById(int id) throws ApiServiceException {
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_TEACHER_BYID, id);
	}

	@Override
	public ApiResponseObject lastAndNextTeacher(int id) throws ApiServiceException {
		// TODO Auto-generated method stub
		return httpClientTool.doPostJson(HttpClientTool.API_URL_GET_TEACHERTURN, id);
	}
	
}
