package com.ssm.service.api.article_oline;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.Article_OlineMapper;
import com.ssm.po.Article_Oline;
@Service
public class Article_OlineServiceImpl implements Article_OlineService {
	@Autowired
	private Article_OlineMapper article_OlineMapper;
	@Override
	public int insertArtOli(Article_Oline ao) {
		return article_OlineMapper.insertArtOli(ao);
	}

}
