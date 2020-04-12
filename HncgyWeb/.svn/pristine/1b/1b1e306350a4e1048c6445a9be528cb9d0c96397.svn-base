package com.ssm.service.api.today;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.TodayMapper;
import com.ssm.po.Article;
import com.ssm.po.Today;

@Service
public class TodayApiServiceImpl implements TodayApiService {
	@Autowired
	private TodayMapper mapper;
	@Override
	public Article getArticle(int id) {
		return mapper.getArticle(id);
	}
	@Override
	public int isExistence(int aid) {
		return mapper.isExistence(aid);
	}
	@Override
	public List<Map<String, Object>> findAll() {
		return mapper.findAllToday();
	}
	@Override
	public Today getNextToday(int id) {
		return mapper.getNextToday(id);
	}
	@Override
	public Today getLastToday(int id) {
		return mapper.getLastToday(id);
	}
	

}
