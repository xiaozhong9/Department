package com.ssm.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class utils {

	/**
	 * ��ȡ��ǰ����
	 * @return
	 */
	public static String getDate(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		return df.format(new Date());
	}
}
