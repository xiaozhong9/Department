package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.common.ApiServiceException;
import com.ssm.po.Teacher;

public interface TeacherMapper {
	/**
	 * 获取所有教师
	 * 
	 * @return
	 */
	public List<Teacher> findAll();

	/**
	 * 查找指定教师
	 * 
	 * @param id
	 *            教师id
	 * @return
	 */
	public Teacher findTeacherById(int id);

	/**
	 * 根据id删除教师
	 * 
	 * @param id
	 *            教师id
	 * @return
	 */
	public int deleteTeacherById(int id);

	/**
	 * 根据教师id修改信息
	 * 
	 * @param teacher 
	 *           
	 * @return
	 */
	public int updateTeacher(Teacher teacher);

	/**
	 * 添加教师数据
	 * 
	 * @param teacher
	 *            教师对象
	 * @return
	 */
	public int saveTeacher(Teacher teacher);

	/**
	 * 批量删除数据
	 * 
	 * @param ids
	 *            教师id
	 * @return
	 */
	public int deleteTeachers(@Param(value="ids")int[] ids);
	
	
	/**
	 * 获取上一个教师
	 * @param aid
	 * @param columnID
	 * @return
	 */
	public Teacher getLastTeacher(int id);
	/**
	 * 获取下一个教师
	 * @param aid
	 * @param columnID
	 * @return
	 */
	public Teacher getNextTeacher(int id);
}
