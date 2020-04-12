package com.ssm.service.api.friendlylink;

import java.util.List;

import com.ssm.po.FriendlyLink;

public interface FriendLinkAPiService {
	
	/**
	 * 查找所有友情链接
	 * @return
	 */
	public List<FriendlyLink> findAll();
}
