package com.ssm.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ssm.common.ApiResponseEnum;
import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Img;
import com.ssm.service.api.img.ImgServiceAPI;

@RestController
@RequestMapping("api/img")
public class ImgApiController extends AbstractApiController {

	@Autowired
	ImgServiceAPI imgService;
	
	
	

	@RequestMapping(value = "/get/pool", method = RequestMethod.POST)
	public ApiResponseObject getPoolImgs(@RequestBody int id) throws ApiServiceException {
		List<String> list = imgService.findPoolImgs();
		if(list==null){
			return responseJSON(ApiResponseEnum.ERROR_DATA_EMPTY.getCode(), ApiResponseEnum.ERROR_DATA_EMPTY.getName(), null);
		}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(),ApiResponseEnum.SUCCESS.getName(),list);
	}
	
	@RequestMapping(value = "/get/img", method = RequestMethod.POST)

	public ApiResponseObject getImg(@RequestBody int id) throws ApiServiceException {
		if (id < 0)
			return responseJSON(ApiResponseEnum.ERROR_PARAM.getCode(), ApiResponseEnum.ERROR_PARAM.getName(), null);
		Img img = imgService.selectImgById(id);
		if (img == null) {
			return responseJSON(ApiResponseEnum.ERROR_DATA_EMPTY.getCode(), ApiResponseEnum.ERROR_DATA_EMPTY.getCode(),
					null);
		}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), img);

	}

	@RequestMapping(value = "/save/img", method = RequestMethod.POST)
	public ApiResponseObject saveImg(@RequestBody Img img) throws ApiServiceException {
		if (img == null)
			return responseJSON(ApiResponseEnum.ERROR_PARAM.getCode(), ApiResponseEnum.ERROR_PARAM.getName(), null);
		int saveImg = imgService.saveImg(img);
		if (saveImg < 1) {
			return responseJSON(ApiResponseEnum.FAIL.getCode(), ApiResponseEnum.FAIL.getCode(), 0);
		}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), img);
	}

	@RequestMapping(value = "/remove/img", method = RequestMethod.POST)
	public ApiResponseObject removeImg(@RequestBody int id) throws ApiServiceException {

		if (id < 0)
			return responseJSON(ApiResponseEnum.ERROR_PARAM.getCode(), ApiResponseEnum.ERROR_PARAM.getName(), null);
		int removeimg = imgService.removeImg(id);
		if (removeimg < 1) {
			return responseJSON(ApiResponseEnum.ERROR_DATA_EMPTY.getCode(), ApiResponseEnum.ERROR_DATA_EMPTY.getCode(),
					0);
		}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), removeimg);

	}

	@RequestMapping(value = "/update/img", method = RequestMethod.POST)
	public ApiResponseObject updateImg(@RequestBody Img img) throws ApiServiceException {
		if (img == null)
			return responseJSON(ApiResponseEnum.ERROR_PARAM.getCode(), ApiResponseEnum.ERROR_PARAM.getName(), null);
		int updateimg = imgService.updateImg(img);
		if (updateimg < 1) {
			return responseJSON(ApiResponseEnum.ERROR_DATA_EMPTY.getCode(), ApiResponseEnum.ERROR_DATA_EMPTY.getCode(),
					0);
		}
		return responseJSON(ApiResponseEnum.SUCCESS.getCode(), ApiResponseEnum.SUCCESS.getName(), updateimg);

	}
}
