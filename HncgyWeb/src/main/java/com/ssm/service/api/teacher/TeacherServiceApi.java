package com.ssm.service.api.teacher;

import java.util.List;

import com.ssm.common.ApiServiceException;
import com.ssm.po.ArticleColumns;
import com.ssm.po.Teacher;

public interface TeacherServiceApi {
	/**
	 * ��ȡ���н�ʦ��Ϣ
	 * @return
	 * @throws ApiServiceException
	 */
	public List<Teacher>  getTeachers() throws ApiServiceException;
	/**
	 * ��ȡָ����ʦ��Ϣ
	 * @return
	 * @throws ApiServiceException
	 */
	public Teacher getTeacher(int id) throws ApiServiceException;
	
	/**
	 * ��ȡ��һ����ʦ
	 * @param aid
	 * @param columnID
	 * @return
	 */
	public Teacher getLastTeacher(int id)throws ApiServiceException;
	/**
	 * ��ȡ��һ����ʦ
	 * @param aid
	 * @param columnID
	 * @return
	 */
	public Teacher getNextTeacher(int id)throws ApiServiceException;
	

}
