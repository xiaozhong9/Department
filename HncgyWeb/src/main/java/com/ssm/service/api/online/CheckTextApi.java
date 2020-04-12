package com.ssm.service.api.online;
 
import java.util.HashMap;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ssm.po.CheckTextResult;
import com.ssm.utils.HttpUtil;



public class CheckTextApi {
	private static final String URL = "https://aip.baidubce.com/rest/2.0/antispam/v2/spam";
    /**
     * @param content 需要审核的文本
     *
     * @return 0通过审核  1不通过审核 2人审核
     */
    public int check(String content){
        //获取access_token
        String access_token = AuthService.getAuth();
        Map<String,String> parameters = new HashMap<>();
        //添加调用参数
        parameters.put("access_token",access_token);
        parameters.put("content",content);
        //调用文本审核接口
        String result = HttpUtil.doPost(URL, parameters);
        System.out.println(result);
        JSONObject jsonObject = JSON.parseObject(result);
        CheckTextResult javaObject= JSONObject.toJavaObject(jsonObject,CheckTextResult.class);
        return javaObject.getResult().getSpam();
    }
 
}
