package com.ltwmyproject.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.ltwmyproject.dao.ICategoryDAO;
import com.ltwmyproject.model.catalog_model;
import com.ltwmyproject.service.ICategoryService;

public class CategoryService implements ICategoryService {
	@Inject
	private ICategoryDAO categoryDAO;
	@Override
	public List<catalog_model> findAll() {
		return categoryDAO.findAll();
	}

}
