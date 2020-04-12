package com.ssm.service.teacher;


import java.util.Map;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;


public interface TeacherService {
	
	/**
	 * 查找所有教师
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getTeachers() throws ApiServiceException ;
	/**
	 * 查找指定老师
	 * @param id
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getTeacherById(int id) throws ApiServiceException ;
	
	/**
	 * 获取上一个教师
	 * @param aid
	 * @param columnID
	 * @return
	 */
	public ApiResponseObject lastAndNextTeacher(int id)throws ApiServiceException;

}
