package com.lhf.common;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * ������֤��ʵ�����ݼ���
 * @author lhf
 *
 */
public class DataValidator {

	/**
	 * ��֤�ַ����Ƿ�Ϊ�� = "" or = null
	 * @param input - ��Ҫ��֤���ַ���
	 * @return true/false
	 */
	public static boolean isNullOrEmpty(String input){
		return "".equals(input) || input == null;
	}
	
	/**
	 * ��֤���������ַ
	 * @param input - ��Ҫ��֤���ַ���
	 * @return true/false
	 */
	public static boolean isEmail(String input)
    {
        if (isNullOrEmpty(input))
        {
            return false;
        }
        return regexMatch(input, "^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
    }
	
	/**
	 * ƥ��������ʽ
	 * @param input - ��Ҫ����ƥ����ַ���
	 * @param pattern - ������ʽ
	 * @return  true/false
	 */
	public static boolean regexMatch(String input, String pattern)
    {
        if (isNullOrEmpty(input))
        {
            return false;
        }
        return Pattern.compile(pattern).matcher(input).matches();
    }
	/**
	 * TML���룬֧�ֻ��з�
	 * @param input - ��Ҫ������ַ���
	 * @return �������ַ���
	 */
	public static String htmlEncode(String input) {
		if (!DataValidator.isNullOrEmpty(input)) {
			input = input.replace("&", "&amp;");
			input = input.replace("<", "&lt;");
			input = input.replace(">", "&gt;");
			input = input.replace("'", "&#39;");
			input = input.replace("\"", "&quot;");
			input = input.replace("\r\n", "<br>");
			input = input.replace("\n", "<br>");
		}
		return input;
	}

	/**
	 * HTML�����룬֧�ֻ��з�
	 * @param input - ��Ҫ��������ַ���
	 * @return ����ǰ��ԭʼ�ַ���
	 */
	public static String htmlDecode(String input){
		if (!DataValidator.isNullOrEmpty(input)) {
			input = input.replace("<br>", "\n");
			input = input.replace("&gt;", ">");
			input = input.replace("&lt;", "<");
			input = input.replace("&#39;", "'");
			input = input.replace("&quot;", "\"");
            input = input.replace("&amp;", "&");
		}
		return input;
	}
	
	/**
	 * HTML���룬��֧�ֻ��з�
	 * @param input - ��Ҫ������ַ���
	 * @return �������ַ���
	 */
	public static String serverHtmlEncode(String input){
		if(DataValidator.isNullOrEmpty(input))
			return input;
		input = input.replace("&", "&amp;");
		input = input.replace("<", "&lt;");
		input = input.replace(">", "&gt;");
		input = input.replace("'", "&#39;");
		input = input.replace("\"", "&quot;");
		return input;
	}
	
	/**
	 * HTML�����룬��֧�ֻ��з�
	 * @param input - ��Ҫ��������ַ���
	 * @return  ����ǰ��ԭʼ�ַ���
	 */
	public static String serverHtmlDecode(String input){
		if(DataValidator.isNullOrEmpty(input))
			return input;
		input = input.replace("&gt;", ">");
		input = input.replace("&lt;", "<");
        input = input.replace("&#39;", "'");
        input = input.replace("&quot;", "\"");
        input = input.replace("&amp;", "&");
        return input;
	}
	
	/**
	 * ��������HTML����
	 * @param input - ��Ҫ���˵��ַ���
	 * @return ���˺���ַ���
	 */
	public static String removeHtml(String input) {
		if (DataValidator.isNullOrEmpty(input))
			return input;
		Pattern p = Pattern.compile("<[^>]*>", Pattern.MULTILINE
				| Pattern.UNICODE_CASE);
		Matcher m = p.matcher(input);
		return m.replaceAll("");
	}
	
}
