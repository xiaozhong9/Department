package com.ssm.service.admin.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.AdminMapper;
import com.ssm.po.Admin;

@Service
public class IAdminServiceImpl implements IAdminService {

	@Autowired
	private AdminMapper adminMapper;
	@Override
	public Admin login(Admin admin)  {
		
		return adminMapper.login(admin);
	}
	@Override
	public Admin selectByEmail(String email) {
		return adminMapper.selectByEmail(email);
	}
	@Override
	public Admin selectByPhone(String phone) {
		return adminMapper.selectByPhone(phone);
	}
	@Override
	public int saveAdmin(Admin admin) {
		return adminMapper.saveAdmin(admin);
	}
	@Override
	public int updateAdmin(Admin admin) {
		return adminMapper.updateAdmin(admin);
	}
	@Override
	public int updatePassword(Admin admin) {
		return adminMapper.updatePassword(admin);
	}
	@Override
	public List<Admin> findAdminALl() {
		return adminMapper.findAdminALl();
	}
	@Override
	public int delAdmin(int id) {
		return adminMapper.delAdmin(id);
	}
	@Override
	public int remoteAccount(String account) {
		// TODO Auto-generated method stub
		return adminMapper.remoteAccount(account);
	}

}
