package com.ltwmyproject.service;

import java.util.List;

import com.ltwmyproject.model.user_model;

public interface IUserService {
	List<user_model> findAll();
}
