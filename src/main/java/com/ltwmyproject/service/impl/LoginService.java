package com.ltwmyproject.service.impl;

import java.sql.SQLException;

import javax.inject.Inject;

import com.ltwmyproject.dao.ILoginDAO;
import com.ltwmyproject.service.ILoginService;

public class LoginService implements ILoginService{
	@Inject
	private ILoginDAO loginDAO;

	@Override
	public boolean checkLogin(String username, String pass) throws SQLException {
		
			return loginDAO.checkLogin(username, pass);

	}

}
