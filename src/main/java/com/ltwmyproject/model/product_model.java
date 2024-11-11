package com.ltwmyproject.model;

public class product_model extends abstractModel {

	private Long catalog_id;
	private String name;
	private int price;
	private String content;
	private int discount;
	private String img_link;
	private String img_list;

	public Long getCatalog_id() {
		return catalog_id;
	}
	public void setCatalog_id(Long catalog_id) {
		this.catalog_id = catalog_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getImg_link() {
		return img_link;
	}
	public void setImg_link(String img_link) {
		this.img_link = img_link;
	}
	public String getImg_list() {
		return img_list;
	}
	public void setImg_list(String img_list) {
		this.img_list = img_list;
	}

	
	
	

}
