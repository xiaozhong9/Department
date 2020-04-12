package com.ssm.service.admin.teacher;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.ssm.po.Teacher;

public interface TeacherService {
	/**
	 * 获取所有教师
	 * @param currentPage 第几页
	 * @param pageSize	一页多少行
	 * @return
	 */
	public PageInfo<Teacher> findAll(int currentPage,int pageSize);
	
	/**
	 * 查找指定教师
	 * @param id 教师id
	 * @return
	 */
	public Teacher findTeacherById(int id);
	
	/**
	 * 根据id删除教师
	 * @param id 教师id
	 * @return
	 */
	public int deleteTeacherById(int id);
	
	/**
	 * 根据教师id修改信息
	 * @param teacher 教师对象
	 * @return
	 */
	public int updateTeacher(Teacher teacher);
	
	/**
	 * 添加教师数据
	 * @param teacher 教师对象
	 * @return
	 */
	public int saveTeacher(Teacher teacher);
	
	/**
	 * 批量删除数据
	 * @param ids 教师id
	 * @return
	 */
	public int deleteTeachers(int[] ids);
	
}
