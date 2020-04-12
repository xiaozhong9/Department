package com.ssm.po;

public class ArticleJoinColumn {
	private Object article;
	private Column column;
	public ArticleJoinColumn() {
		super();
	}
	public Object getArticle() {
		return article;
	}
	public void setArticle(Object article) {
		this.article = article;
	}
	public Column getColumn() {
		return column;
	}
	public void setColumn(Column column) {
		this.column = column;
	}
}
