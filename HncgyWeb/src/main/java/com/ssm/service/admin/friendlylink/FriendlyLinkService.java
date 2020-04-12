package com.ssm.service.admin.friendlylink;

import java.util.List;

import com.ssm.po.FriendlyLink;

public interface FriendlyLinkService {
	/**
	 * 通过id查找友情链接
	 * @param id
	 * @return
	 */
	public FriendlyLink findFriendlyLinkById(int id);
	/**
	 * 查找所有友情链接
	 * @return
	 */
	public List<FriendlyLink> findAll();
	/**
	 * 插入友情链接
	 * @param friendlyLink
	 * @return
	 */
	public int saveFriendLink(FriendlyLink friendlyLink);
	
	/**
	 * 删除友情链接
	 * @param id 
	 * @return
	 */
	public int deleteLinkById(int id);
	
	/**
	 * 批量删除友情连接
	 * @param arr id数组
	 * @return
	 */
	public int batchDeletion(int []arr);
	/**
	 * 修改友情链接
	 * @param friendlyLink
	 * @return
	 */
	public int updateFriendlyLink(FriendlyLink friendlyLink);
	
	/**
	 * 查找指定友情链接图片路径
	 * @param arr
	 * @return
	 */
	public String[] findImgUrlById(int []arr);
	
}
