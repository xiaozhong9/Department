package com.ssm.service.api.img;

import java.util.List;

import com.ssm.common.ApiServiceException;
import com.ssm.po.Img;

public interface ImgServiceAPI {
	/**
	 * 获取轮播图路径
	 * @return
	 * @throws ApiServiceException
	 */
	public List<String> findPoolImgs() throws ApiServiceException ;
	/**
	 * 根据ID获取图片
	 * @param id 图片id
	 * @return
	 * @throws ApiServiceException
	 */
	public Img selectImgById(int id) throws ApiServiceException ;
	/**
	 *新增图片
	 * @param img 图片对象
	 * @return
	 * @throws ApiServiceException
	 */
	public int saveImg(Img img) throws ApiServiceException ;
	/**
	 *删除图片
	 * @param id 图片id
	 * @return
	 * @throws ApiServiceException
	 */
	public int removeImg(int id) throws ApiServiceException ;
	/**
	 *修改图片
	 * @param img 图片对象
	 * @return
	 * @throws ApiServiceException
	 */
	public int updateImg(Img img) throws ApiServiceException ;
}
