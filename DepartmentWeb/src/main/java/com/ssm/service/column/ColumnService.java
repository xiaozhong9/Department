package com.ssm.service.column;

import java.util.Map;

import com.ssm.common.ApiResponseObject;
import com.ssm.common.ApiServiceException;
import com.ssm.po.Column;

public interface ColumnService {
	/**
	 * ��Ŀ��ҳ
	 * @param columnID ��Ŀ ID
	 * @param currentPage �ڼ�ҳ
	 * @param pageSize	һҳ����������
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject findArticleByPage(Map<String,Integer> map)throws ApiServiceException;
	/**
	 * ������ĿID��ȡ��Ŀ��
	 * @param columnID
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getColumnTitleById(int columnID)throws ApiServiceException;
	/**
	 * ������ҳ��������
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject index()throws ApiServiceException;
	/**
	 * ��ȡ������Ŀ�¶�Ӧ����
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getColumnArticleTitle()throws ApiServiceException;
	/**
	 * ��ȡ������Ŀ����
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getColumns()throws ApiServiceException;
	/**
	 * ��ȡ������Ŀ����
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getColumnTitles()throws ApiServiceException;
	/**
	 * ������ĿID��ȡ����
	 * @param columnID ��Ŀid
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject getArticles(int columnID) throws ApiServiceException ;
	/**
	 * ��ȡָ����Ŀ����������
	 * @param columnID ��Ŀid
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject countSize(int columnID) throws ApiServiceException ;
	/**
	 * ������Ŀ
	 * @param column ��Ŀ����
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject saveColumn(Column column) throws ApiServiceException ;
	/**
	 * �޸���Ŀ
	 * @param column ��Ŀ����
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject updateColumn(Column column) throws ApiServiceException ;
	
	/**
	 * ɾ����Ŀ
	 * @param columnID ��ĿID
	 * @return
	 * @throws ApiServiceException
	 */
	public ApiResponseObject updateColumn(int columnID) throws ApiServiceException ;
	
	/**
	 * ��ȡָ����Ŀ��������
	 * @param columnid ��Ŀid
	 * @return
	 */
	public ApiResponseObject  findHotArticles(int columnId)throws ApiServiceException ;
}

