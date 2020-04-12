package com.ssm.service.admin.teacher;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.ssm.po.Teacher;

public interface TeacherService {
	/**
	 * ��ȡ���н�ʦ
	 * @param currentPage �ڼ�ҳ
	 * @param pageSize	һҳ������
	 * @return
	 */
	public PageInfo<Teacher> findAll(int currentPage,int pageSize);
	
	/**
	 * ����ָ����ʦ
	 * @param id ��ʦid
	 * @return
	 */
	public Teacher findTeacherById(int id);
	
	/**
	 * ����idɾ����ʦ
	 * @param id ��ʦid
	 * @return
	 */
	public int deleteTeacherById(int id);
	
	/**
	 * ���ݽ�ʦid�޸���Ϣ
	 * @param teacher ��ʦ����
	 * @return
	 */
	public int updateTeacher(Teacher teacher);
	
	/**
	 * ��ӽ�ʦ����
	 * @param teacher ��ʦ����
	 * @return
	 */
	public int saveTeacher(Teacher teacher);
	
	/**
	 * ����ɾ������
	 * @param ids ��ʦid
	 * @return
	 */
	public int deleteTeachers(int[] ids);
	
}
