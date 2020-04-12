package com.ssm.controller.api;


import com.ssm.common.ApiResponseObject;

public abstract class AbstractApiController {
	public ApiResponseObject responseJSON(String errorCode, String errorMsg, Object resData) {
		ApiResponseObject apiResponseObject = new ApiResponseObject();
		apiResponseObject.setErrorCode(errorCode);
		apiResponseObject.setErrorMsg(errorMsg);
		apiResponseObject.setData(resData);
		return apiResponseObject;
	}
	
}
