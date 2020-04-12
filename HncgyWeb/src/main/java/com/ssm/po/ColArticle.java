package com.ssm.po;

import java.util.List;

public class ColArticle {
	private List<Article> articles;
	private Column column;
	public List<Article> getArticles() {
		return articles;
	}
	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
	public Column getColumn() {
		return column;
	}
	public void setColumn(Column column) {
		this.column = column;
	}
	@Override
	public String toString() {
		return "ColArticle [articles=" + articles + ", column=" + column + "]";
	}
	
	
	
}
