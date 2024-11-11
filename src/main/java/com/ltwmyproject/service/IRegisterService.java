package com.ltwmyproject.service;

import java.sql.SQLException;

import com.ltwmyproject.model.user_model;

public interface IRegisterService {
	boolean addUser(user_model user)throws SQLException;
	

}
