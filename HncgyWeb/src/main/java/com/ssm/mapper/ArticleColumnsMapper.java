package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.po.Article;
import com.ssm.po.ColArticle;
import com.ssm.po.Column;
import com.ssm.po.IncreaseArticle;

public interface ArticleColumnsMapper {
	/**
	 * 用于修改文章 根据文章id 从栏目中移除
	 * 
	 * @param Aid
	 * @param arr
	 * @return
	 */
	public int deleteArticleColumns(int Aid, int[] arr);

	/**
	 * 用于新增文章 为新文章 添加到指定栏目
	 * 
	 * @param Aid
	 * @param arr
	 * @return
	 */
	public int saveArticleColumn(IncreaseArticle obj);
	
	/**
	 * 根据栏目ID 查找 该栏目里没有的文章
	 * @param columnID
	 */
	public List<Article> selectArticle(int columnID);
	/**
	 * 文章分页
	 * @return
	 * @
	 */
	public List<Article> listArticlePage(int columnID);
	
	/**
	 * 为栏目添加文章
	 * @param colArticle
	 * @return
	 */
	public int saveColArticles(ColArticle colArticle);
	
	/**
	 * 批量删除 文章   栏目联系 
	 * @param Aids
	 * @return
	 */
	public int removeArticles(@Param(value="Aids")int[] Aids);
}
