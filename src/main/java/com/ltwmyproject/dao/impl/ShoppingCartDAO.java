package com.ltwmyproject.dao.impl;

import java.util.ArrayList;

import com.ltwmyproject.dao.IShoppingCartDAO;
import com.ltwmyproject.model.product_model;

public class ShoppingCartDAO implements IShoppingCartDAO {

	ArrayList<product_model> listProductInShoppingCart;

	public ShoppingCartDAO() {
		listProductInShoppingCart = new ArrayList<product_model>();

	}

	@Override
	public void addProductInShoppingCart(product_model product) {

		if (listProductInShoppingCart.contains(product)) {
			product_model hang = listProductInShoppingCart.get(listProductInShoppingCart.indexOf(product));
			hang.setDiscount(hang.getDiscount() + product.getDiscount());
		} else {
			listProductInShoppingCart.add(product);
		}

	}

	@Override
	public void deleteProductInShoppingCart(Long id) {
		for (int i = 0; i < listProductInShoppingCart.size(); i++) {
			if (listProductInShoppingCart.get(i).getId().equals(id)) {
				listProductInShoppingCart.remove(listProductInShoppingCart.get(i));

			}
		}

	}

	public double totalMoney() {
		double money = 0;
		for (product_model mh : listProductInShoppingCart) {
			money += mh.getPrice() * mh.getDiscount();
		}
		return money;
	}

}
