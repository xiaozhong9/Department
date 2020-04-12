package com.ssm.mapper;

import java.util.List;

import com.ssm.po.Admin;

public interface AdminMapper {
	
	/**
	 *管理员账号查重
	 * @param account
	 * @return
	 */
	public int remoteAccount(String account);
	
	/**
	 * 管理员登录
	 * @param admin
	 * @return
	 */
	public Admin login(Admin admin);
	
	/**
	 * 查看邮箱是否存在
	 * @param email
	 * @return
	 */
	public Admin selectByEmail(String email);
	
	/**
	 * 查看手机号码是否存在
	 * @param email
	 * @return
	 */
	public Admin selectByPhone(String phone);
	
	/**
	 * 添加管理员
	 * @param admin
	 * @return
	 */
	public int saveAdmin(Admin admin);
	/**
	 * 添加管理员
	 * @param admin
	 * @return
	 */
	public int updateAdmin(Admin admin);
	/**
	 * 修改密码
	 * @param admin
	 * @return
	 */
	public int updatePassword(Admin admin);
	/**
	 * 获取所有管理员
	 * @return
	 */
	public List<Admin> findAdminALl();
	/**
	 * 删除管理员
	 * @param id
	 * @return
	 */
	public int delAdmin(int id);
}
