package com.ltwmyproject.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ltwmyproject.model.catalog_model;
import com.ltwmyproject.model.product_model;

public interface IProductDAO {

	List<product_model> findByCategoryId(Long categoryId);

	void save(product_model product) throws SQLException ;
	void delete(Long id) throws SQLException;
	void update(product_model product, Long idF) throws SQLException;
	ArrayList<product_model> getListProductByCategory (Long id);
	List<product_model> findAll();
	product_model findProductById(Long prodductId) throws SQLException;

}
