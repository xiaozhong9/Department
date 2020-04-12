package com.ssm.service.api.online;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.common.ApiServiceException;
import com.ssm.mapper.OlineMapper;
import com.ssm.po.Oline;
@Service
public class OlineServiceImplApi implements OlineServiceApi {
	@Autowired
	private OlineMapper olineMapper;
	@Override
	public int insertOline(Oline oline) throws ApiServiceException  {
		return olineMapper.insertOline(oline);
	}
	@Override
	public PageInfo<Oline>  findOlineByArt(int article_Id,int column_Id,int currentPage) throws ApiServiceException {
		PageHelper.startPage(currentPage,10);
		 List<Oline> findOlineByArt = olineMapper.findOlineByArt(article_Id, column_Id);
		 System.err.println("=====================ÊÇÊÇÊÇ==============="+findOlineByArt);
		return new PageInfo<Oline>(findOlineByArt);
	}

}
