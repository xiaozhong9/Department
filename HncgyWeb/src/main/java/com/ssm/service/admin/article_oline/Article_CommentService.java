package com.ssm.service.admin.article_oline;

import org.apache.ibatis.annotations.Param;

public interface Article_CommentService {
	/**
	 * ����ɾ��
	 * @param arr id����
	 * @return
	 */
	public int batchDel(@Param(value="arr")int[]arr);
}
