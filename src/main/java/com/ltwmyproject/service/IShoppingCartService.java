package com.ltwmyproject.service;

import com.ltwmyproject.model.product_model;

public interface IShoppingCartService {
	
	void deleteProductInShoppingCart(Long id);

	void addProductInShoppingCart(product_model product);

	double totalMoney();

}
