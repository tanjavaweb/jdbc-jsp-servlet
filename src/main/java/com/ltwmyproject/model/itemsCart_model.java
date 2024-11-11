package com.ltwmyproject.model;

public class itemsCart_model extends abstractModel {
	private product_model product;
	private int quantity;
	private double price;
	
	public itemsCart_model (){ 
		
	}

	public itemsCart_model(product_model product, int quantity, double price) {
		super();
		this.product = product;
		this.quantity = quantity;
		this.price=price;
	}

	public product_model getProduct() {
		return product;
	}

	public void setProduct(product_model product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	

}
