package com.ssm.service.admin.today;

import java.util.List;
import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.ssm.po.Today;

public interface TodayService {
	/**
	 * 获取今日关注
	 * @param pageSize 一页多少条
	 * @param currentPage 当前页
	 * @return
	 */
	public PageInfo<List<Map<String, Object>>> findAll(int pageSize, int currentPage);
	/**
	 * 插入数据
	 * @param today
	 * @return
	 */
	public int saveToday(Today today);
	/**
	 * 删除指定数据
	 * @param aid
	 * @return
	 */
	public int delToday(int aid);
}
