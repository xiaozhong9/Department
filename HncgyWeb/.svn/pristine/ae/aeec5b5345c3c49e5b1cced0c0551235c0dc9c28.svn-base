package com.ssm.service.admin.img;

import java.util.List;

import com.ssm.po.Img;

public interface ImgService {
	/**
	 * 保存图片
	 * @param img
	 */
	public int saveImg(Img img);
	
	/**
	 * 获取轮播所有图片
	 * @return
	 */
	public List<Img> findLoopAll();
	/**
	 * 获取所有图片
	 * @return
	 */
	public List<Img> getPictureAll();
	
	/**
	 * 查看指定图片
	 * @param id 图片id
	 * @return
	 */
	public Img selectImgById(int id);
	
	/**
	 * 删除轮播图
	 * @param id
	 * @return
	 */
	public int deleteImgById(int id);
	/**
	 * 删除图片库里面的图片
	 * @param id
	 * @return
	 */
	public int removeImg(int id);
	/**
	 * 删除回收站里面的图片
	 * @param id
	 * @return
	 */
	public int dustbinImg(int id);
	/**
	 * 还原回收站里面的图片
	 * @param id
	 * @return
	 */
	public int reductionPicture(int id);
	
	/**
	 * 批量删除轮播图
	 * @param ids
	 * @return
	 */
	public int deleteSelection(int[] ids);
	/**
	 * 批量删除回收站图片
	 * @param ids
	 * @return
	 */
	public int remvoeDustbinImgs(int[] ids);
	/**
	 * 批量删除图库里面的图片
	 * @param ids
	 * @return
	 */
	public int remvoeImgs(int[] ids);
	/**
	 * 获取回收站图片
	 * @param ids
	 * @return
	 */
	public List<Img> PictureRecovery();
	
	/**
	 * 图片文字识别
	 * @param url 图片路径
	 * @return
	 */
	public String ocrGeneral(String url);
	
	/**
	 * 获取指定图片url用于删除文件夹图片
	 * @param ids
	 * @return
	 */
	public String[] findUrlById(int []ids);
}
