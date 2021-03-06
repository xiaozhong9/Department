package com.ssm.utils;

import java.io.File;

import org.springframework.util.DigestUtils;

import com.qcloud.image.ImageClient;
import com.qcloud.image.exception.AbstractImageException;
import com.qcloud.image.request.GeneralOcrRequest;

public class utils {



		private static String appId = "1259582131";// 根据你的帐号信息修改
		private static String secretId = "AKIDkFWquiQAl64qLalMsACcniNl7B5kJ1HG";// 根据你的帐号信息修改
		private static String secretKey = "uYw4w2sSIvLaaK7f7QVebfWgcIlzzjET";// 根据你的帐号信息修改
		private static String bucketName = "";// 历史遗留字段, 无需修改
		/**
	     * 通用印刷体OCR
	     */

		public static void ocrGeneral(ImageClient imageClient, String bucketName) {
			String ret = null;
			// 1. url方式
			GeneralOcrRequest request = new GeneralOcrRequest(bucketName, "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2569921819,979720679&fm=26&gp=0.jpg");
			try {
				ret = imageClient.generalOcr(request);
			} catch (AbstractImageException e) {
				e.printStackTrace();
			}

			// 2. 图片内容方式
			 request = new GeneralOcrRequest(bucketName, new File( "F://xx.jpg"));
			try {
				ret = imageClient.generalOcr(request);
			} catch (AbstractImageException e) {
				e.printStackTrace();
			}
		}
		
		public static boolean isEmpty(Object obj){
			if(obj==null||"".equals(obj.toString().trim())){
				return true;
			}
			return false;
		}
		
		public static String md5Encryption(String str){
			return DigestUtils.md5DigestAsHex(str.getBytes());
		}

}
