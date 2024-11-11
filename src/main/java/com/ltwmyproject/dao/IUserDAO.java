package com.ltwmyproject.dao;

import java.util.List;

import com.ltwmyproject.model.user_model;

public interface IUserDAO {
	List<user_model> findAll();

}
