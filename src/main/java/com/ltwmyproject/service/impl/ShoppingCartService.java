package com.ltwmyproject.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.ltwmyproject.dao.IShoppingCartDAO;
import com.ltwmyproject.model.product_model;
import com.ltwmyproject.service.IShoppingCartService;


public class ShoppingCartService implements IShoppingCartService{
	
	@Inject
	private IShoppingCartDAO shoppingCartDAO;

	@Override
	public void deleteProductInShoppingCart(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addProductInShoppingCart(product_model product) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public double totalMoney() {
		// TODO Auto-generated method stub
		return 0;
	}


}
