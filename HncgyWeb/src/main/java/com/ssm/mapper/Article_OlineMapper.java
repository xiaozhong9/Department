package com.ssm.mapper;

import org.apache.ibatis.annotations.Param;

import com.ssm.po.Article_Oline;

public interface Article_OlineMapper {
	/**
	 * 中间表插入数据
	 * @param ao
	 * @return
	 */
	public int insertArtOli(Article_Oline ao);
	
	/**
	 * 批量删除
	 * @param arr id数组
	 * @return
	 */
	public int batchDel(@Param(value="arr")int[]arr);
}
