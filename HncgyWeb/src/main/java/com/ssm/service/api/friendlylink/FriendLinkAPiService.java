package com.ssm.service.api.friendlylink;

import java.util.List;

import com.ssm.po.FriendlyLink;

public interface FriendLinkAPiService {
	
	/**
	 * ����������������
	 * @return
	 */
	public List<FriendlyLink> findAll();
}
