package com.ssm.po;

import java.io.Serializable;
import java.util.Date;

public class Article implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/*����ID*/
	private int Aid;
	/*���±���*/
	private String title;
	/*���¸�����*/
	private String Subtitle;
	/*����*/
	private String author;
	/*����ʱ��*/
	private Date pubTime;
	/*��������*/
	private String content;
	/*���ʴ���*/
	private int viewCount;
	/*�༭��*/
	private String editor;
	/*״̬*/
	private int state;
	
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getSubtitle() {
		return Subtitle;
	}
	public void setSubtitle(String subtitle) {
		Subtitle = subtitle;
	}
	
	
	public int getAid() {
		return Aid;
	}
	public void setAid(int aid) {
		Aid = aid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getPubTime() {
		return pubTime;
	}
	public void setPubTime(Date pubTime) {
		this.pubTime = pubTime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public String getEditor() {
		return editor;
	}
	public void setEditor(String editor) {
		this.editor = editor;
	}
	public Article() {
		super();
	}
	@Override
	public String toString() {
		return "Article [Aid=" + Aid + ", title=" + title + ", Subtitle=" + Subtitle + ", author=" + author
				+ ", pubTime=" + pubTime + ", content=" + content + ", viewCount=" + viewCount + ", editor=" + editor
				+ ", state=" + state + "]";
	}

	
	
}
