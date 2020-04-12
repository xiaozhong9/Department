package com.ssm.service.admin.img;

import java.util.List;

import com.ssm.po.Img;

public interface ImgService {
	/**
	 * ����ͼƬ
	 * @param img
	 */
	public int saveImg(Img img);
	
	/**
	 * ��ȡ�ֲ�����ͼƬ
	 * @return
	 */
	public List<Img> findLoopAll();
	/**
	 * ��ȡ����ͼƬ
	 * @return
	 */
	public List<Img> getPictureAll();
	
	/**
	 * �鿴ָ��ͼƬ
	 * @param id ͼƬid
	 * @return
	 */
	public Img selectImgById(int id);
	
	/**
	 * ɾ���ֲ�ͼ
	 * @param id
	 * @return
	 */
	public int deleteImgById(int id);
	/**
	 * ɾ��ͼƬ�������ͼƬ
	 * @param id
	 * @return
	 */
	public int removeImg(int id);
	/**
	 * ɾ������վ�����ͼƬ
	 * @param id
	 * @return
	 */
	public int dustbinImg(int id);
	/**
	 * ��ԭ����վ�����ͼƬ
	 * @param id
	 * @return
	 */
	public int reductionPicture(int id);
	
	/**
	 * ����ɾ���ֲ�ͼ
	 * @param ids
	 * @return
	 */
	public int deleteSelection(int[] ids);
	/**
	 * ����ɾ������վͼƬ
	 * @param ids
	 * @return
	 */
	public int remvoeDustbinImgs(int[] ids);
	/**
	 * ����ɾ��ͼ�������ͼƬ
	 * @param ids
	 * @return
	 */
	public int remvoeImgs(int[] ids);
	/**
	 * ��ȡ����վͼƬ
	 * @param ids
	 * @return
	 */
	public List<Img> PictureRecovery();
	
	/**
	 * ͼƬ����ʶ��
	 * @param url ͼƬ·��
	 * @return
	 */
	public String ocrGeneral(String url);
	
	/**
	 * ��ȡָ��ͼƬurl����ɾ���ļ���ͼƬ
	 * @param ids
	 * @return
	 */
	public String[] findUrlById(int []ids);
}
