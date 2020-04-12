package com.ssm.service.admin.today;

import java.util.List;
import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.ssm.po.Today;

public interface TodayService {
	/**
	 * ��ȡ���չ�ע
	 * @param pageSize һҳ������
	 * @param currentPage ��ǰҳ
	 * @return
	 */
	public PageInfo<List<Map<String, Object>>> findAll(int pageSize, int currentPage);
	/**
	 * ��������
	 * @param today
	 * @return
	 */
	public int saveToday(Today today);
	/**
	 * ɾ��ָ������
	 * @param aid
	 * @return
	 */
	public int delToday(int aid);
}
