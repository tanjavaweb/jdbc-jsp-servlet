package com.ltwmyproject.model;

public class catalog_model extends abstractModel {
	private String name;
	private Long parent_id;
	private Long sort_order;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public Long getParent_id() {
		return parent_id;
	}
	public void setParent_id(Long parent_id) {
		this.parent_id = parent_id;
	}
	public Long getSort_order() {
		return sort_order;
	}
	public void setSort_order(Long sort_order) {
		this.sort_order = sort_order;
	}

	
	
	

}
