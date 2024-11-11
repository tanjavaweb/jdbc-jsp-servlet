package com.ltwmyproject.service.impl;

import java.sql.SQLException;

import javax.inject.Inject;

import com.ltwmyproject.dao.IRegisterDAO;
import com.ltwmyproject.model.user_model;
import com.ltwmyproject.service.IRegisterService;

public class RegisterService implements IRegisterService {
	@Inject
	private IRegisterDAO loginDAO;
	@Override
	public boolean addUser(user_model user) throws SQLException {
		return loginDAO.addUser(user);
		
	}

}
