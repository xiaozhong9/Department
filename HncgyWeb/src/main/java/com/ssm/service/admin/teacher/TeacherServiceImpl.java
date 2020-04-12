package com.ssm.service.admin.teacher;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.mapper.TeacherMapper;
import com.ssm.po.Teacher;

@Service
public class TeacherServiceImpl implements TeacherService{
	@Resource
	private TeacherMapper teacherMapper;

	@Override
	public PageInfo<Teacher> findAll(int currentPage,int pageSize) {
		PageHelper.startPage(currentPage, pageSize);
		List<Teacher> findAll = teacherMapper.findAll();
		return new PageInfo<Teacher>(findAll);
	}

	@Override
	public int deleteTeacherById(int id) {
		return teacherMapper.deleteTeacherById(id);
	}

	@Override
	public int updateTeacher(Teacher teacher) {
		return teacherMapper.updateTeacher(teacher);
	}

	@Override
	public int saveTeacher(Teacher teacher) {
		return teacherMapper.saveTeacher(teacher);
	}

	@Override
	public int deleteTeachers(int[] ids) {
		return teacherMapper.deleteTeachers(ids);
	}

	@Override
	public Teacher findTeacherById(int id) {
		return teacherMapper.findTeacherById(id);
	}
}
