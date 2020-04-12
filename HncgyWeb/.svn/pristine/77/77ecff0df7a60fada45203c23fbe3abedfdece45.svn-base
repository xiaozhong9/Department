package com.ssm.controller.api;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ssm.common.ApiResponseEnum;
import com.ssm.common.ApiResponseObject;
import com.ssm.po.Activity;
import com.ssm.service.api.activity.ActivityApiService;

@RestController
@RequestMapping("api/activity")
public class ActivityApiController extends AbstractApiController {
	@Autowired
	private ActivityApiService service;

	@RequestMapping(value = "index", method = RequestMethod.POST)
	public ApiResponseObject indexActivity() {
		List<Activity> list = service.apiFindActivity();
		if (list == null) {
			responseJSON(ApiResponseEnum.ERROR_DATA_EMPTY.getCode(), ApiResponseEnum.ERROR_DATA_EMPTY.getName(), null);
		}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), list);
	}

	@RequestMapping(value = "get/byid", method = RequestMethod.POST)
	public ApiResponseObject getActivityById(@RequestBody int id) {
		Activity findActivityById = service.findActivityById(id);
		if (findActivityById == null) {
			responseJSON(ApiResponseEnum.ERROR_DATA_EMPTY.getCode(), ApiResponseEnum.ERROR_DATA_EMPTY.getName(), null);
		}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), findActivityById);
	}

	@RequestMapping(value = "page/turn", method = RequestMethod.POST)
	public ApiResponseObject lastActivity(@RequestBody int id) {
		Activity lastActivity = service.lastActivity(id);
		Activity nextActivity = service.nextActivity(id);
		Map<String, Object> map = new HashMap<>();
		map.put("lastActivity", lastActivity);
		map.put("nextActivity", nextActivity);
		if (nextActivity == null) {
			responseJSON(ApiResponseEnum.ERROR_DATA_EMPTY.getCode(), ApiResponseEnum.ERROR_DATA_EMPTY.getName(), null);
		}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), map);
	}

	@RequestMapping(value = "newest", method = RequestMethod.POST)
	public ApiResponseObject newestActivity() {
		 List<Activity> newestActivity = service.newestActivity();
		 if(newestActivity==null){
			 responseJSON(ApiResponseEnum.ERROR_DATA_EMPTY.getCode(), ApiResponseEnum.ERROR_DATA_EMPTY.getName(), null);
		 }
		 return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), newestActivity);
	}
}
