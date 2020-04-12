package com.ssm.service.api.img;

import java.util.List;

import com.ssm.common.ApiServiceException;
import com.ssm.po.Img;

public interface ImgServiceAPI {
	/**
	 * ��ȡ�ֲ�ͼ·��
	 * @return
	 * @throws ApiServiceException
	 */
	public List<String> findPoolImgs() throws ApiServiceException ;
	/**
	 * ����ID��ȡͼƬ
	 * @param id ͼƬid
	 * @return
	 * @throws ApiServiceException
	 */
	public Img selectImgById(int id) throws ApiServiceException ;
	/**
	 *����ͼƬ
	 * @param img ͼƬ����
	 * @return
	 * @throws ApiServiceException
	 */
	public int saveImg(Img img) throws ApiServiceException ;
	/**
	 *ɾ��ͼƬ
	 * @param id ͼƬid
	 * @return
	 * @throws ApiServiceException
	 */
	public int removeImg(int id) throws ApiServiceException ;
	/**
	 *�޸�ͼƬ
	 * @param img ͼƬ����
	 * @return
	 * @throws ApiServiceException
	 */
	public int updateImg(Img img) throws ApiServiceException ;
}
