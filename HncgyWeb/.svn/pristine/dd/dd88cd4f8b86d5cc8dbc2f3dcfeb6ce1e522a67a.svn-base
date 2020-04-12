package com.ssm.service.admin.AraticleColumns;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.mapper.ArticleColumnsMapper;
import com.ssm.po.Article;
import com.ssm.po.ColArticle;
import com.ssm.po.IncreaseArticle;


@Service
public class IArticleColumnsImpl implements IArticleColumns {

	@Autowired
	private ArticleColumnsMapper articleColumns;
	
	
	
	@Override
	public int saveArticleColumns(IncreaseArticle art) {
		// TODO Auto-generated method stub
		return articleColumns.saveArticleColumn(art);
	}





	@Override
	public PageInfo<Article> findArticleByPage(int pageSize, int currentPage,int columnID) {
		PageHelper.startPage(currentPage,pageSize);
		List<Article> list= articleColumns.listArticlePage(columnID);
		return new PageInfo<Article>(list);
	}



	@Override
	public List<Article> selectArticle(int columnID) {
		// TODO Auto-generated method stub
		return articleColumns.selectArticle(columnID);
	}





	@Override
	public int saveColArticles(ColArticle colArticle) {
		// TODO Auto-generated method stub
		return articleColumns.saveColArticles(colArticle);
	}









}
