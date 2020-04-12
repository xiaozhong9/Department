package com.ssm.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class utils {

	/**
	 * 获取当前日期
	 * @return
	 */
	public static String getDate(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		return df.format(new Date());
	}
}
