package com.ssm.po;

import java.io.Serializable;
import java.util.Date;

public class Article implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/*文章ID*/
	private int Aid;
	/*文章标题*/
	private String title;
	/*文章副标题*/
	private String Subtitle;
	/*作者*/
	private String author;
	/*发布时间*/
	private Date pubTime;
	/*文章内容*/
	private String content;
	/*访问次数*/
	private int viewCount;
	/*编辑人*/
	private String editor;
	/*状态*/
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
