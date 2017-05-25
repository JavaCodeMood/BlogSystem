package com.lhf.model;

import java.util.Date;

//博文评论信息表
public class CommentInfo {
	private int id;
	private String context="";  //评论内容
	private Date createdtime;  //评论时间
	private String username="";   //评论人
	private int blogid;   //评论的博文编号
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public Date getCreatedtime() {
		return createdtime;
	}
	public void setCreatedtime(Date createdtime) {
		this.createdtime = createdtime;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getBlogid() {
		return blogid;
	}
	public void setBlogid(int blogid) {
		this.blogid = blogid;
	}
	
	

}
