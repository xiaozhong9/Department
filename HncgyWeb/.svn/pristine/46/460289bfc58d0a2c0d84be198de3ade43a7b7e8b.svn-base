package com.ssm.service.api.activity;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.mapper.ActivityMapper;
import com.ssm.po.Activity;

@Service
public class ActivityApiServiceImpl implements ActivityApiService {

	@Autowired
	private ActivityMapper activityMapper;

	@Override
	public List<Activity> apiFindActivity() {
		return activityMapper.apiFindActivity();
	}

	@Override
	public Activity findActivityById(int id) {
		return activityMapper.findActivityById(id);
	}

	@Override
	public Activity nextActivity(int id) {
		return activityMapper.nextActivity(id);
	}

	@Override
	public Activity lastActivity(int id) {
		return activityMapper.lastActivity(id);
	}

	@Override
	public List<Activity> newestActivity() {
		return activityMapper.newestActivity();
	}
}
