package com.ltwmyproject.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ltwmyproject.dao.IUserDAO;
import com.ltwmyproject.model.user_model;

public class UserDAO implements IUserDAO {
	
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/fruitsql";
			String user = "root";
			String password = "tienNguye1n";
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			return null;

		}

	}
	@Override
	public List<user_model> findAll() {
		List<user_model> results = new ArrayList<>();
		String sql ="SELECT * FROM user";
		// open connection
		Connection connection = getConnection();
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		if (connection != null) {
			try {
				statement = connection.prepareStatement(sql);
				resultSet = statement.executeQuery();
				while (resultSet.next()) {	
					user_model user = new user_model();
					user.setId(resultSet.getLong("id"));
					user.setName(resultSet.getString("name"));
					user.setEmail(resultSet.getString("email"));
					user.setPassword(resultSet.getString("password"));
					user.setRoleid(resultSet.getLong("roleid"));
					results.add(user);		
				}
			
					return results;
			} catch (SQLException e) {
				return null;
			}finally {
				try {
					if(connection != null) {
						connection.close();
					}
					if (statement != null) {
						statement.close();
					}
					if (resultSet != null) {
						resultSet.close();
					}
					
				} catch (SQLException e) {
					return null;
				}

			}
			
		}
		return null;

	}

}
