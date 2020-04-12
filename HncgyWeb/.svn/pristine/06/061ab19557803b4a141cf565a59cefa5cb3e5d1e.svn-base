package com.ssm.service.admin.verification;

import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.json.JSONException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import com.github.qcloudsms.SmsSingleSender;
import com.github.qcloudsms.SmsSingleSenderResult;
import com.github.qcloudsms.httpclient.HTTPException;
import com.ssm.po.MailModel;

public class LoginServiceImpl implements LoginService {

	
	@Resource
	private JavaMailSender mailSender;
	private MimeMessage mimeMessage;
	
	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	public void setMimeMessage(MimeMessage mimeMessage) {
	this.mimeMessage = mimeMessage;
	}
	private static Logger logger = Logger.getLogger(LoginServiceImpl.class);
	
	/**
	* 发送html格式的，带附件的邮件
	*/
	public String selectUserByEmail(String email,MailModel mail,HttpServletRequest request) {
			String uuid="";
			try {
			MimeMessageHelper mailMessage = new MimeMessageHelper(
			this.mimeMessage, true, "UTF-8");
			mailMessage.setFrom(mail.getFromAddress());// 设置邮件消息的发送者
		
			mailMessage.setSubject(mail.getSubject());//设置邮件消息的主题
			mailMessage.setSentDate(new Date());// 设置邮件消息发送的时间
			int x;
			for(int i=0;i<6;i++){
				x=(int)(Math.random()*10);
				uuid+=x;
			}
			HttpSession session = request.getSession();
			session.setAttribute("key", uuid);
			session.setAttribute("email", email);
			//设置session域，
			StringBuffer sb = new StringBuffer();
			sb.append("您好！这是一验证码邮件，不是您本人操作请忽略!<br>");
			sb.append("验证码："+uuid+"<br/>");
			mail.setContent(sb.toString());	
			mailMessage.setText(mail.getContent(), true); // 设置邮件正文，true表示以html的格式发送
			String[] toAddresses = mail.getToAddresses().split(";");// 得到要发送的地址数组
			for (int i = 0; i < toAddresses.length; i++) {
			mailMessage.setTo(toAddresses[i]);
			// 发送邮件
			this.mailSender.send(this.mimeMessage);
			logger.info("send mail ok=" + toAddresses[i]);
			}
			} catch (Exception e) {
			logger.error(e);
			e.printStackTrace();
			}
			return uuid;	
	}
	
		private  int appid = 1400252146;
	    private  String appkey = "6aaf52005e36be51902f4fd3af01b5a5";



	    //发送验证码
	    public String sendVerificationCode(String mobile,HttpServletRequest request){
	    	System.err.println("====================================");
	    	System.out.println(mobile);
	    	System.err.println("====================================");
	    	int x;
	    	String code="";
			for(int i=0;i<6;i++){
				x=(int)(Math.random()*10);
				code+=x;
			}
			HttpSession session = request.getSession();
			session.setAttribute("mobile", mobile);
			session.setAttribute("mCode", code);
			session.setMaxInactiveInterval(30);
	        String msg = "{管理员登录验证}:您的验证码为:"+code+",请妥善保管，请务泄露,如不是本人操作请忽略";
	        try {
	            SmsSingleSender ssender = new SmsSingleSender(appid, appkey);
	            SmsSingleSenderResult result = ssender.send(0, "86", mobile,
	                    msg, "", "");
	            System.out.print("===="+result);
	        } catch (HTTPException e) {
	            // HTTP响应码错误
	            e.printStackTrace();
	        } catch (JSONException e) {
	            // json解析错误
	            e.printStackTrace();
	        } catch (IOException e) {
	            // 网络IO错误
	            e.printStackTrace();
	        }
	        return code;
	    }
}
