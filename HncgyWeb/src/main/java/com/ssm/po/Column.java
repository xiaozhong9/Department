package com.ssm.po;

import javax.xml.rpc.encoding.Serializer;

public class Column implements Serializer{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/*��ĿID*/
	private int columnID;
	/*��Ŀ����*/
	private String columnTitle;
	/*��Ŀ���*/
	private String explains;
	
	
	public int getColumnID() {
		return columnID;
	}
	public void setColumnID(int columnID) {
		this.columnID = columnID;
	}
	public String getColumnTitle() {
		return columnTitle;
	}
	public void setColumnTitle(String columnTitle) {
		this.columnTitle = columnTitle;
	}
	public String getExplains() {
		return explains;
	}
	public void setExplains(String explains) {
		this.explains = explains;
	}
	@Override
	public String toString() {
		return "Columns [columnID=" + columnID + ", columnTitle=" + columnTitle + ", explains=" + explains + "]";
	}
	public Column() {
		super();
	}
	@Override
	public String getMechanismType() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}