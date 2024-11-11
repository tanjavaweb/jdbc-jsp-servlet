package com.ltwmyproject.dao;

import com.ltwmyproject.model.product_model;

public interface IShoppingCartDAO {

	void deleteProductInShoppingCart(Long id);

	void addProductInShoppingCart(product_model product);

	double totalMoney();

}
