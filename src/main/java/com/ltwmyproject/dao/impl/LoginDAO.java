package com.ltwmyproject.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ltwmyproject.dao.ILoginDAO;

public class LoginDAO implements ILoginDAO {

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
	public boolean checkLogin(String username, String pass) throws SQLException {
		
			boolean isvalid = false;
		
	        String sql = "SELECT * FROM user WHERE name = ? and password =?";
			// open connection
			Connection connection = getConnection();
			PreparedStatement statement = null;
			ResultSet resultSet = null;
			if (connection != null) {
				try {

					statement = connection.prepareStatement(sql);
					
					statement.setString(1, username);
					statement.setString(2, pass);
					
					ResultSet status = statement.executeQuery();
					if (status.next()) {
						isvalid = true;
					} else {
						isvalid = false;	
					}

				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					connection.close();
					statement.close();
				}

			}
			return isvalid;
		
	}

}
