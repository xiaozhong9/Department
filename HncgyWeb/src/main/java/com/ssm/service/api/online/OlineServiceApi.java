package com.ssm.service.api.online;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Oline;

public interface OlineServiceApi {
	/**
	 * ��������
	 * @param oline ���۶���
	 * @return
	 */
	public int insertOline(Oline oline) throws ApiServiceException ;
	
	/**
	 * ��ȡָ����Ŀ�����µ���������
	 * @param pageSize ��ǰҳ
	 * @param article_Id ����id
	 * @param column_Id	��Ŀid
	 * @return
	 * @throws ApiServiceException
	 */
	public PageInfo<Oline>  findOlineByArt(int article_Id,int column_Id,int currentPage) throws ApiServiceException ;
}
