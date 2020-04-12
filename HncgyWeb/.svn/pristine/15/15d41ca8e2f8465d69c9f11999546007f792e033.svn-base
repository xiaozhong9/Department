package com.ssm.service.admin.today;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.mapper.TodayMapper;
import com.ssm.po.Today;

@Service
public class TodayServiceImpl implements TodayService {
	@Autowired
	private TodayMapper mapper;

	@Override
	public  PageInfo<List<Map<String, Object>>> findAll(int pageSize, int currentPage) {
		PageHelper.startPage(currentPage,pageSize);
		List<Map<String, Object>> findAll = mapper.findAll();
		return new PageInfo(findAll);
	}
	
	@Override
	public int saveToday(Today today) {
		return mapper.saveToday(today);
	}

	@Override
	public int delToday(int aid) {
		return mapper.delToday(aid);
	}

}
