package com.lhf.common;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 数据转换类,实现一些常用数据的转换
 * @author lhf
 *
 */
public class DataConverter {
	
	/**
	 * 将日期格式化为字符串
	 * @param date
	 * @return
	 */
	public static String dataToString(Date date){
		return dataToString(date, "yyyy-MM-dd HH:mm:ss");
	}
	
	/**
	 * 将日期格式转化为字符串
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
	 * 将字符串转成日期（yyyy-MM-dd HH:mm:ss)
	 * @param input -日期字符串
	 * @return
	 */
	public static Date toDate(String input){
		return toDate(input,"yyyy-MM-dd HH:mm:ss");
	}
	
	/**
	 * 将字符串转成日期
	 * @param input-日期字符串
	 * @param formatType-格式化类型
	 * @return  日期类型，当出现异常时返回当前日期
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
	 * 将字符串转成短日期格式
	 * @param input-日期字符串
	 * @return  日期类型，当出现异常时返回当前日期
	 */
	public static java.util.Date toShortDate(String input){
		return toDate(input,"yyyy-MM-dd");
	}
	
	/**
	 * 将字符串转化成长日期格式
	 * @param input-日期字符串
	 * @return  日期类型，当出现异常时返回当前日期
	 */
	public static java.util.Date toFullDate(String input){
		return toDate(input,"yyyy-MM-dd HH:mm:ss");
	}
	
	/**
	 * 将字符串转化为整型
	 * @param input--要转换的字符串
	 * @return--整数，出现异常返回0
	 */
	public static int toInt(String input){
		try {
			return Integer.parseInt(input);
		} catch (Exception e) {
			return 0;
		}
	}

}
