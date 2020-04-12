package com.ssm.po;

import java.util.Date;

public class Oline {
	private int oid;
	private String tourist;
	private String content;
	private Date pubTime;
	private int state;
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getTourist() {
		return tourist;
	}
	public void setTourist(String tourist) {
		this.tourist = tourist;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPubTime() {
		return pubTime;
	}
	public void setPubTime(Date pubTime) {
		this.pubTime = pubTime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Oline() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Oline [oid=" + oid + ", tourist=" + tourist + ", content=" + content + ", pubTime=" + pubTime
				+ ", state=" + state + "]";
	}
	
	
	
}
