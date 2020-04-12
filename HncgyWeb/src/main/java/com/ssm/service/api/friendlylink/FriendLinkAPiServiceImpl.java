package com.ssm.service.api.friendlylink;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.FriendlyLinkMapper;
import com.ssm.po.FriendlyLink;

@Service
public class FriendLinkAPiServiceImpl implements FriendLinkAPiService {
	@Autowired
	private FriendlyLinkMapper mapper;

	@Override
	public List<FriendlyLink> findAll() {
		return mapper.findAll();
	}

}
