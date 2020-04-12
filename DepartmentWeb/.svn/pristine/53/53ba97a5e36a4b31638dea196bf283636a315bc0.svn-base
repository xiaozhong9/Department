package com.ssm.service.article;


import java.util.Map;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Article;

public interface ArticleService {
	
	
		/**
		 * 根据ID获取文章
		 * @param Aid 文章id
		 * @return
		 * @throws ApiServiceException
		 */
		public ApiResponseObject getArticle(int Aid) throws ApiServiceException ;
		/**
		 * 获取所有文章
		 * @return
		 * @throws ApiServiceException
		 */
		public ApiResponseObject listArticle()throws ApiServiceException;
		/**
		 * 根据文章个数
		 * @return
		 * @throws ApiServiceException
		 */
		public ApiResponseObject countSize()throws ApiServiceException;
		/**
		 * 新增文章
		 * @param article 文章对象
		 * @return
		 * @throws ApiServiceException
		 */
		public ApiResponseObject saveArticle(Article article)throws ApiServiceException;
		/**
		 * 根据id删除文章
		 * @param Aid 文章id
		 * @return
		 * @throws ApiServiceException
		 */
		public ApiResponseObject removeArticle(int Aid)throws ApiServiceException;
		/**
		 * 修改文章
		 * @param article 文章对象
		 * @return
		 * @throws ApiServiceException
		 */
		public ApiResponseObject updateArticle(Article article)throws ApiServiceException;
		
		/**
		 * 根据栏目ID文章ID查找文件标题
		 * @param Aid
		 * @param columnID
		 * @return
		 * @throws ApiServiceException
		 */
		public ApiResponseObject getColumnTitle(int []arr) throws ApiServiceException ;
		
		/**
		 * 获取上一篇文章
		 * @param aid
		 * @param columnID
		 * @return
		 */
		public ApiResponseObject lastAndNextArticle(Map<String,Integer> map)throws ApiServiceException;
		
}
