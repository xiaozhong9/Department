package com.ssm.po;

import java.util.Date;

public class Img {
	/*ͼƬID*/
	private int id;
	/* ͼƬ����*/
	private String name;
	/*ͼƬ������*/
	private String imgName;
	/* ͼƬ·��*/
	private String url;
	/*�ϴ�ʱ��*/
	private Date pubTime;
	/*ͼƬ����*/
	private String type;
	/*ͼƬ����*/
	private int catagory;
	/*ͼƬ״̬*/
	private String state;
	
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Date getPubTime() {
		return pubTime;
	}
	public void setPubTime(Date pubTime) {
		this.pubTime = pubTime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getCatagory() {
		return catagory;
	}
	public void setCatagory(int catagory) {
		this.catagory = catagory;
	}
	@Override
	public String toString() {
		return "Img [id=" + id + ", name=" + name + ", imgName=" + imgName + ", url=" + url + ", pubTime=" + pubTime
				+ ", type=" + type + ", catagory=" + catagory + ", state=" + state + "]";
	}
	public Img() {
		super();
	}

	
}
