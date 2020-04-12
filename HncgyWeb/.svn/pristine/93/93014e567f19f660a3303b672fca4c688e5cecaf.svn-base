package com.ssm.service.api.today;

import java.util.List;
import java.util.Map;

import com.ssm.po.Article;
import com.ssm.po.Today;

public interface TodayApiService {
	/**
	 * 查看文章是否存在
	 * 
	 * @param aid
	 * @return
	 */
	public int isExistence(int aid);

	/**
	 * 查看指定文章
	 * 
	 * @param id
	 * @return
	 */
	public Article getArticle(int id);

	/**
	 * 获取所有今日关注
	 * 
	 * @return
	 */
	public List<Map<String, Object>> findAll();

	/**
	 * 下一篇
	 * 
	 * @param id
	 * @return
	 */
	public Today getNextToday(int id);

	/**
	 * 上一篇
	 * 
	 * @param id
	 * @return
	 */
	public Today getLastToday(int id);
}
