package com.ltwmyproject.service.impl;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import com.ltwmyproject.dao.IProductDAO;
import com.ltwmyproject.model.product_model;
import com.ltwmyproject.service.IProductService;

public class ProductService implements IProductService {
	@Inject
	private IProductDAO productDAO;
	@Override
	public List<product_model> findByCategoryId(Long categoryId) {
		return productDAO.findByCategoryId(categoryId);
	}
	@Override
	public void save(product_model product) throws SQLException {
		 productDAO.save(product);
		 	 
	}
	@Override
	public void delete(Long id) throws SQLException {
		productDAO.delete(id);
		
	}
	@Override
	public void update(product_model product, Long idF) throws SQLException {
		productDAO.update(product, idF);
		
	}
	@Override
	public List<product_model> findAll() {
		
		return productDAO.findAll();
	}
	@Override
	public product_model findProductById(Long prodductId) throws SQLException {
		return productDAO.findProductById(prodductId);
		
	}

}
