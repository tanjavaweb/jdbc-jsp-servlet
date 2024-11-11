package com.ltwmyproject.dao;

import java.sql.SQLException;

import com.ltwmyproject.model.user_model;

public interface IRegisterDAO {
	 boolean addUser (user_model user) throws SQLException;
	 boolean checkUser(String username);

}
