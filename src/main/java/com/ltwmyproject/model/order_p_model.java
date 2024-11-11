package com.ltwmyproject.model;

import java.util.List;

public class order_p_model extends abstractModel {
	private Long transaction_id;
	private Long product_id;
	private int quantity;
	private int amount;
	private String data;
	private int status;
	private user_model user;
	private List<itemsCart_model> items;

	public Long getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(Long transaction_id) {
		this.transaction_id = transaction_id;
	}

	public Long getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public user_model getUser() {
		return user;
	}

	public void setUser(user_model user) {
		this.user = user;
	}

	public List<itemsCart_model> getItems() {
		return items;
	}

	public void setItems(List<itemsCart_model> items) {
		this.items = items;
	}

}
