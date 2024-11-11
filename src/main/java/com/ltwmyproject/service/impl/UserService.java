package com.ltwmyproject.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.ltwmyproject.dao.IUserDAO;
import com.ltwmyproject.model.user_model;
import com.ltwmyproject.service.IUserService;

public class UserService implements IUserService {
	@Inject
	private IUserDAO userDAO;
	@Override
	public List<user_model> findAll() {
		return userDAO.findAll();
	}

}
