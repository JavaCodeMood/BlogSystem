package com.lhf.model;

import java.util.Date;
  
//���ķ�����Ϣʵ��
public class BlogInfo {
	private int id;  //id
	private String title="";  //���ı���
	private String context="";   //��������
	private String className="";  
	private Date createdtime;  //����ʱ��
	private int classid;  //����������
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public Date getCreatedtime() {
		return createdtime;
	}
	public void setCreatedtime(Date createdtime) {
		this.createdtime = createdtime;
	}
	public int getClassid() {
		return classid;
	}
	public void setClassid(int classid) {
		this.classid = classid;
	}
	
	
	

}
