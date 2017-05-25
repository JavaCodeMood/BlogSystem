package com.lhf.common;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * ����ת����,ʵ��һЩ�������ݵ�ת��
 * @author lhf
 *
 */
public class DataConverter {
	
	/**
	 * �����ڸ�ʽ��Ϊ�ַ���
	 * @param date
	 * @return
	 */
	public static String dataToString(Date date){
		return dataToString(date, "yyyy-MM-dd HH:mm:ss");
	}
	
	/**
	 * �����ڸ�ʽת��Ϊ�ַ���
	 * @param date
	 * @param formatType
	 * @return
	 */
	public static String dataToString(Date date,String formatType){
		if(date==null){
			date=Utility.getNowDateTime();
		}
		SimpleDateFormat formatter=new SimpleDateFormat(formatType);
		return formatter.format(date);
	}
	
	/**
	 * ���ַ���ת�����ڣ�yyyy-MM-dd HH:mm:ss)
	 * @param input -�����ַ���
	 * @return
	 */
	public static Date toDate(String input){
		return toDate(input,"yyyy-MM-dd HH:mm:ss");
	}
	
	/**
	 * ���ַ���ת������
	 * @param input-�����ַ���
	 * @param formatType-��ʽ������
	 * @return  �������ͣ��������쳣ʱ���ص�ǰ����
	 */
	public static Date toDate(String input,String formatType){
		SimpleDateFormat format=new SimpleDateFormat(formatType);
		Date dt = new Date();
		if(DataValidator.isNullOrEmpty(input)){
			return dt;
		}
		try {
			dt=format.parse(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dt;
	}
	
	/**
	 * ���ַ���ת�ɶ����ڸ�ʽ
	 * @param input-�����ַ���
	 * @return  �������ͣ��������쳣ʱ���ص�ǰ����
	 */
	public static java.util.Date toShortDate(String input){
		return toDate(input,"yyyy-MM-dd");
	}
	
	/**
	 * ���ַ���ת���ɳ����ڸ�ʽ
	 * @param input-�����ַ���
	 * @return  �������ͣ��������쳣ʱ���ص�ǰ����
	 */
	public static java.util.Date toFullDate(String input){
		return toDate(input,"yyyy-MM-dd HH:mm:ss");
	}
	
	/**
	 * ���ַ���ת��Ϊ����
	 * @param input--Ҫת�����ַ���
	 * @return--�����������쳣����0
	 */
	public static int toInt(String input){
		try {
			return Integer.parseInt(input);
		} catch (Exception e) {
			return 0;
		}
	}

}
