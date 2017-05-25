package com.lhf.model;

//博文分类信息实体类
public class ClassInfo {
	private int id;  //id
	private String name="";   //分类名称
	private int sort;  //排序
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	
	
	

}
