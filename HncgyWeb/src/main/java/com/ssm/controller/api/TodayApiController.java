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
import com.ssm.common.ApiServiceException;
import com.ssm.po.Article;
import com.ssm.po.Today;
import com.ssm.service.api.today.TodayApiService;

@RestController
@RequestMapping("api/today")
public class TodayApiController extends AbstractApiController {
	@Autowired
	private TodayApiService service;

	@RequestMapping(value = "/get/today", method = RequestMethod.POST)
	public ApiResponseObject getTeachers(@RequestBody int id) throws ApiServiceException {
		int existence = service.isExistence(id);
		if (existence < 1) {
			return responseJSON(ApiResponseEnum.ERROR_DATA_EMPTY.getCode(), ApiResponseEnum.ERROR_DATA_EMPTY.getName(),
					null);
		}
		Article article = service.getArticle(id);
		if (article == null) {
			return responseJSON(ApiResponseEnum.ERROR_DATA_EMPTY.getCode(), ApiResponseEnum.ERROR_DATA_EMPTY.getName(),
					null);
		}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), article);
	}
	
	@RequestMapping(value="all",method=RequestMethod.POST)
	public ApiResponseObject findALl() throws ApiServiceException {
		List<Map<String, Object>> findAll = service.findAll();
		if(findAll==null){
			return responseJSON(ApiResponseEnum.ERROR_DATA_EMPTY.getCode(), ApiResponseEnum.ERROR_DATA_EMPTY.getName(),
					null);
		}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), findAll);
	}
	
	@RequestMapping(value="page/turn",method=RequestMethod.POST)
	public ApiResponseObject todayPageTurn(@RequestBody int id){
		Today lastToday = service.getLastToday(id);
		Today nextToday = service.getNextToday(id);
		Map <String,Object>map=new HashMap<>();
		map.put("lastToday", lastToday);
		map.put("nextToday", nextToday);
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), map);
	}
}
