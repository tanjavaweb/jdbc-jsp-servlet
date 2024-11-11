package com.ltwmyproject.dao;

import java.util.ArrayList;
import java.util.List;

import com.ltwmyproject.model.catalog_model;

public interface ICategoryDAO {
	List<catalog_model> findAll();
	ArrayList<catalog_model> getListCategoryChild (int idCategory);

}
