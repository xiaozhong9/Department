package com.ssm.service.admin.img;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qcloud.image.ImageClient;
import com.qcloud.image.exception.AbstractImageException;
import com.qcloud.image.request.GeneralOcrRequest;
import com.ssm.mapper.ImgMapper;
import com.ssm.po.Img;
@Service
public class ImgServiceImpl implements ImgService {
	private String appId = "1259582131";// 根据你的帐号信息修改
	private String secretId = "AKIDkFWquiQAl64qLalMsACcniNl7B5kJ1HG";// 根据你的帐号信息修改
	private String secretKey = "uYw4w2sSIvLaaK7f7QVebfWgcIlzzjET";// 根据你的帐号信息修改
	private String bucketName = "";// 历史遗留字段, 无需修改
	@Autowired
	private ImgMapper imgMapper;
	@Override
	public int saveImg(Img img) {
		return imgMapper.saveImg(img);
	}
	@Override
	public List<Img> findLoopAll(){
		return imgMapper.findLoopAll();
	}
	@Override
	public Img selectImgById(int id) {
		return imgMapper.selectImgById(id);
	}
	@Override
	public int deleteImgById(int id) {
		
		return imgMapper.updateloopimg(id);
	}
	@Override
	public int deleteSelection(int[] ids) {
		return imgMapper.deleteSelection(ids);
	}
	@Override
	public List<Img> PictureRecovery() {
		return imgMapper.PictureRecovery();
	}
	@Override
	public int dustbinImg(int id) {
		return imgMapper.dustbinImg(id);
	}
	@Override
	public int reductionPicture(int id) {
		return imgMapper.reductionPicture(id);
	}
	@Override
	public int remvoeDustbinImgs(int[] ids) {
		return imgMapper.remvoeDustbinImgs(ids);
	}
	@Override
	public List<Img> getPictureAll() {
		return imgMapper.getPictureAll();
	}
	@Override
	public int removeImg(int id) {
		return imgMapper.removeImg(id);
	}
	@Override
	public int remvoeImgs(int[] ids) {
		return imgMapper.remvoeDustbinImgs(ids);
	}
	@Override
	public String ocrGeneral(String url) {
		ImageClient imageClient = new ImageClient(appId,secretId,secretKey,ImageClient.NEW_DOMAIN_recognition_image_myqcloud_com);
		String ret = null;
		int len=url.indexOf("https://");
		GeneralOcrRequest request=null;
		if(len>=0){
		// 1. http_url
		 request = new GeneralOcrRequest(bucketName, url);
		try {
			ret = imageClient.generalOcr(request);
		} catch (AbstractImageException e) {
			e.printStackTrace();
		}
		return ret;
		}
		
		// 2.本地图片
		 request = new GeneralOcrRequest(bucketName, new File( url));
		try {
			ret = imageClient.generalOcr(request);
		} catch (AbstractImageException e) {
			e.printStackTrace();
		}
		
		return ret;
	}
	@Override
	public String[] findUrlById(int[] ids) {
		return imgMapper.findUrlById(ids);
	}

}
