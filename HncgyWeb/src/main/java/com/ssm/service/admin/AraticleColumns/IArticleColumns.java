package com.ssm.service.admin.AraticleColumns;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.ssm.po.Article;
import com.ssm.po.ColArticle;
import com.ssm.po.IncreaseArticle;

public interface IArticleColumns {

	/**
	 * 添加文章栏目表
	 * @param articleColumns
	 * @return
	 */
	public int saveArticleColumns(IncreaseArticle art);
	
	/**
	 * 为栏目添加文章
	 * @param colArticle
	 * @return
	 */
	public int saveColArticles(ColArticle colArticle);

	/**
	 * 根据栏目ID 查找 该栏目的文章
	 * @param columnID
	 */
	public List<Article> selectArticle(int columnID);
	/**
	 * 文章分页
	 * @param currentPage 第几页
	 * @param pageSize	一页多少条
	 * @return
	 */
	public PageInfo<Article> findArticleByPage(int pageSize,int currentPage,int columnID);
	
}
