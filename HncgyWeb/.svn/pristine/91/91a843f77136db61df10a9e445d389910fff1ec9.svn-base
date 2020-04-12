package com.ssm.service.api.img;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.common.ApiServiceException;
import com.ssm.mapper.ImgMapper;
import com.ssm.po.Img;
@Service
public class ImgServiceImplAPI implements ImgServiceAPI {
	
	@Resource
	ImgMapper imgMapper;

	@Override
	public Img selectImgById(int id) throws ApiServiceException {
		return imgMapper.selectImgById(id);
	}

	@Override
	public int saveImg(Img img) throws ApiServiceException {
		return  imgMapper.saveImg(img);
	}

	@Override
	public int removeImg(int id) throws ApiServiceException {
		return imgMapper.removeImg(id);
	}

	@Override
	public int updateImg(Img img) throws ApiServiceException {
		return imgMapper.updateImg(img);
	}

	@Override
	public List<String> findPoolImgs() throws ApiServiceException {
		return imgMapper.findPoolImgs();
	}
	
	
	
	

}
