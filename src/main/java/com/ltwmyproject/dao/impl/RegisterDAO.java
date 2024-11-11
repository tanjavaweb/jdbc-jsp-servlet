package com.ltwmyproject.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ltwmyproject.dao.IRegisterDAO;
import com.ltwmyproject.model.user_model;

public class RegisterDAO implements IRegisterDAO {

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
	public boolean addUser(user_model user) throws SQLException {
		user_model users = new user_model();
		String sql = "INSERT INTO user ( name, email, password,roleid) VALUES ( ?, ?, ?, ?)";
		Connection connection = getConnection();
		PreparedStatement statement = null;
		if (connection != null) {
			try {

				statement = connection.prepareStatement(sql);

				statement.setString(1, user.getName());
				statement.setString(2, user.getEmail());
				statement.setString(3, user.getPassword());
				statement.setLong(4, 1);
				int status = statement.executeUpdate();
				if (status != 0) {
					return true;
				} else {
					System.out.println("INSERTED fail");
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				connection.close();
				statement.close();
			}
		}
		return false;
	}

	@Override
	public boolean checkUser(String username) {
		// TODO Auto-generated method stub
		return false;
	}

}
