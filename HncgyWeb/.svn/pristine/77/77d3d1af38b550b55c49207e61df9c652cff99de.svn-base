package com.ssm.service.admin.article_oline;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.Article_OlineMapper;
@Service
public class Article_CommentServiceImpl implements Article_CommentService{
	@Autowired
	private Article_OlineMapper article_OlineMapper;
	@Override
	public int batchDel(int[] arr) {
		return article_OlineMapper.batchDel(arr);
	}

}
