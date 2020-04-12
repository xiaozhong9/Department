package com.ssm.service.admin.article;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.mapper.ArticleColumnsMapper;
import com.ssm.mapper.ArticleMapper;
import com.ssm.po.Article;
import com.ssm.po.Column;
@Service
public class IArticleServiceImpl implements IArticleService{

	@Resource
	ArticleMapper articleMapper;
	
	@Resource
	ArticleColumnsMapper articleColumnsMapper;
	
	@Override
	public int saveArticle(Article article) throws Exception {
		 return articleMapper.saveArticle(article);
	}


	@Override
	public PageInfo<Article> findArticleByPage(int pageSize, int currentPage)throws Exception {
		PageHelper.startPage(currentPage,pageSize);
		List<Article> list= articleMapper.listArticlePage();
		return new PageInfo<Article>(list);
	}
	@Override
	public PageInfo<Article> findDraftsByPage(int pageSize, int currentPage)throws Exception {
		PageHelper.startPage(currentPage,pageSize);
		List<Article> list= articleMapper.listDraftsPage();
		return new PageInfo<Article>(list);
	}


	@Override
	public Article getArticle(int Aid) throws Exception {
		return articleMapper.getArticle(Aid);
	}


	@Override
	public int removeArticles(int[] Aids) throws Exception {
		int row_article = articleMapper.removeArticles(Aids);
		articleColumnsMapper.removeArticles(Aids);
		return row_article;
	}


	@Override
	public List<Article> recovery() throws Exception{
		return articleMapper.recovery();
	}


	@Override
	public int reductionArticle(int Aid)throws Exception {
		return articleMapper.reductionArticle(Aid);
	}


	@Override
	public int removeArticle(int Aid) throws Exception{
		return articleMapper.removeArticle(Aid);
	}


	@Override
	public int rejectArticle(int Aid) throws Exception {
		// TODO Auto-generated method stub
		return articleMapper.rejectArticle(Aid);
	}


	@Override
	public int deleteArticle(int Aid) throws Exception {
		// TODO Auto-generated method stub
		return articleMapper.deleteArticle(Aid);
	}


	@Override
	public List<Column> getColumnsByAid(int Aid)throws Exception  {
		// TODO Auto-generated method stub
		return articleMapper.getColumnsByAid(Aid);
	}


	@Override
	public int updateArticle(Article article) throws Exception {
		// TODO Auto-generated method stub
		return articleMapper.updateArticle(article);
	}


	@Override
	public List<Article> searchArticle(String start, String end, String condition) {
		return articleMapper.searchArticle(start, end, condition);
	}


	@Override
	public int recycling(int[] Aids) throws Exception {
		
		return articleMapper.recycling(Aids);
	}


	@Override
	public int feleaseArticle(int aid) throws Exception {
		
		return articleMapper.reductionArticle(aid);
	}


}
