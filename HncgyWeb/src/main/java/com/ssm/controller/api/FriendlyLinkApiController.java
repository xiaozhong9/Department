package com.ssm.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ssm.common.ApiResponseEnum;
import com.ssm.common.ApiResponseObject;
import com.ssm.service.api.friendlylink.FriendLinkAPiService;
@RequestMapping("api/friendlylink")
@RestController
public class FriendlyLinkApiController extends AbstractApiController {
		@Autowired
		private FriendLinkAPiService service;
		@RequestMapping(value="all",method=RequestMethod.POST)
		public ApiResponseObject all(){
			return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), service.findAll());
		}
		
}
