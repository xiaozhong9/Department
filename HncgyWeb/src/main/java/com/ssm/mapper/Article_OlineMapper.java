package com.ssm.mapper;

import org.apache.ibatis.annotations.Param;

import com.ssm.po.Article_Oline;

public interface Article_OlineMapper {
	/**
	 * �м���������
	 * @param ao
	 * @return
	 */
	public int insertArtOli(Article_Oline ao);
	
	/**
	 * ����ɾ��
	 * @param arr id����
	 * @return
	 */
	public int batchDel(@Param(value="arr")int[]arr);
}
