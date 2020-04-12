package com.ssm.service.admin.oline;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.common.ApiServiceException;
import com.ssm.mapper.OlineMapper;
import com.ssm.po.Article;
import com.ssm.po.Oline;
@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	private OlineMapper mapper;
	@Override
	public PageInfo<List<Map<String,Object>>> findOlineByState(int currentPage, int pageSize,int state) {
		PageHelper.startPage(currentPage, pageSize);
		List<HashMap<String, Object>> findOlineByState = mapper.findOlineByState(state);
		 return  new PageInfo(findOlineByState);
	}
	@Override
	public int updateStateById(int id) {
		return mapper.updateStateById(id);
	}
	@Override
	public int notPass(int id) {
		return mapper.notPass(id);
	}
	@Override
	public List<HashMap<String, Object>> findNotPass(int state) {
		return mapper.findOlineByState(3);
	}
	@Override
	public int batchDel(int[] arr) {
		return mapper.batchDel(arr);
	}
	@Override
	public int delById(int id) {
		return mapper.delById(id);
	}
	@Override
	public PageInfo<List<Map<String, Object>>> administrationComment(int columnId, int articleId, int currentPage,
			int pageSize) {
			PageHelper.startPage(currentPage, pageSize);
		  List<Oline> findOlineByArt = null;
		try {
			findOlineByArt = mapper.findOlineByArt(articleId, columnId);
		} catch (ApiServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return  new PageInfo(findOlineByArt);
	}
	
}
