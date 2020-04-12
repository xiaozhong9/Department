package com.ssm.service.api.teacher;

import java.util.List;

import com.ssm.common.ApiServiceException;
import com.ssm.po.ArticleColumns;
import com.ssm.po.Teacher;

public interface TeacherServiceApi {
	/**
	 * 获取所有教师信息
	 * @return
	 * @throws ApiServiceException
	 */
	public List<Teacher>  getTeachers() throws ApiServiceException;
	/**
	 * 获取指定教师信息
	 * @return
	 * @throws ApiServiceException
	 */
	public Teacher getTeacher(int id) throws ApiServiceException;
	
	/**
	 * 获取上一个教师
	 * @param aid
	 * @param columnID
	 * @return
	 */
	public Teacher getLastTeacher(int id)throws ApiServiceException;
	/**
	 * 获取下一个教师
	 * @param aid
	 * @param columnID
	 * @return
	 */
	public Teacher getNextTeacher(int id)throws ApiServiceException;
	

}
