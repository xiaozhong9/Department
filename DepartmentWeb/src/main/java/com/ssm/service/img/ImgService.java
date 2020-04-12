package com.ssm.service.img;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Img;

public interface ImgService {	
	
	/**
	 * 获取轮播图
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject findLoopImgs()throws ApiServiceException;
	
	/**
	 * 根据ID获取图片
	 * @param id 图片id
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getImg(int id) throws ApiServiceException ;
	/**
	 *新增图片
	 * @param img 图片对象
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject saveImg(Img img) throws ApiServiceException ;
	/**
	 *删除图片
	 * @param id 图片id
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject removeImg(int id) throws ApiServiceException ;
	/**
	 *修改图片
	 * @param img 图片对象
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject updateImg(Img img) throws ApiServiceException ;
	
}
