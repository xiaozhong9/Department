package com.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Img;
import com.ssm.service.img.ImgService;

@RestController
@RequestMapping("img")
public class ImgController {

	@Autowired
	ImgService imgService;
	
	
	

	@RequestMapping(value="/loop/imgs", method = RequestMethod.POST)
	public ApiResponseObject getpoolImgs() throws ApiServiceException{
		ApiResponseObject findLoopImgs = imgService.findLoopImgs();
		return findLoopImgs;
	}
	
	@RequestMapping(value="/get/img", method = RequestMethod.POST)
	
	public ApiResponseObject getImg(int id) throws ApiServiceException {
		
		ApiResponseObject img = imgService.getImg(id);
		return img;
	}

	@RequestMapping(value="/save/img", method = RequestMethod.POST)
	public ApiResponseObject saveImg(Img img) throws ApiServiceException {
	
		return imgService.saveImg(img);

	}
	@RequestMapping(value="/remove/img", method = RequestMethod.POST)
	public ApiResponseObject removeImg(int id) throws ApiServiceException {
		return imgService.removeImg(id);

	}
	@RequestMapping(value="/update/img", method = RequestMethod.POST)
	public ApiResponseObject updateImg(Img img) throws ApiServiceException {
		return imgService.updateImg(img);

	}

}
