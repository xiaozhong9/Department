package com.ssm.service.admin.column;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.common.ApiServiceException;
import com.ssm.mapper.ColumnMapper;
import com.ssm.po.Article;
import com.ssm.po.Column;
import com.ssm.po.HotArticle;

@Service
public class IColumnServiceImpl implements IColumnService {

	
	@Autowired
	private ColumnMapper columnMapper;
	@Override
	public List<Column> getColumns() throws Exception {
		// TODO Auto-generated method stub
		return columnMapper.getColumns();
	}
	

	@Override
	public List<Article> getArticles(int columnID) throws ApiServiceException {
		return columnMapper.getArticles(columnID);
	}
	
	@Override
	public PageInfo<Article> findArticleByPage(int pageSize, int currentPage,int columnID) {
		PageHelper.startPage(currentPage,pageSize);
		List<Article> list= columnMapper.listArticlePage(columnID);
		return new PageInfo<Article>(list);
	}


	@Override
	public int removeArticles(int[] Aids, int columnID) throws Exception {
 		return columnMapper.removeArticles(Aids, columnID);
	}
	@Override
	public int deleteArticle(int aid, int columnID) throws Exception {
		return columnMapper.deleteArticle(aid, columnID);
	}


	@Override
	public int hotArticle(HotArticle hot) {
		return columnMapper.hotArticle(hot);
	}


	@Override
	public int reduceArticle(HotArticle hot) {
		return columnMapper.reduceArticle(hot);
	}

}
