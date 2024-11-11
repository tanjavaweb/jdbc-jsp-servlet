package com.ltwmyproject.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.ltwmyproject.dao.ICategoryDAO;
import com.ltwmyproject.model.catalog_model;

public class CategoryDAO implements ICategoryDAO{
	
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
	public List<catalog_model> findAll() {
		List<catalog_model> results = new ArrayList<>();
		String sql ="SELECT * FROM catalog";
		// open connection
		Connection connection = getConnection();
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		if (connection != null) {
			try {
				statement = connection.prepareStatement(sql);
				resultSet = statement.executeQuery();
				while (resultSet.next()) {	
					catalog_model catalog = new catalog_model();
					catalog.setId(resultSet.getLong("id"));
					catalog.setName(resultSet.getString("name"));
					catalog.setParent_id(resultSet.getLong("parent_id"));
					catalog.setSort_order(resultSet.getLong("sort_order"));
					results.add(catalog);		
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

	@Override
	public ArrayList<catalog_model> getListCategoryChild(int idCategory) {
		Connection connection = getConnection();
		String sql ="SELECT * FROM catalog WHERE id = '"+idCategory+"'";
		ArrayList<catalog_model> arr = new ArrayList<>();
		
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			ResultSet resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				catalog_model catalog = new catalog_model();
				catalog.setId(resultSet.getLong("id"));
				catalog.setName(resultSet.getString("name"));
				catalog.setParent_id(resultSet.getLong("parent_id"));
				catalog.setSort_order(resultSet.getLong("sort_order"));
				arr.add(catalog);		
				
			}
			connection.close();
		} catch (SQLException e) {
				Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, e);
		}
		return arr;
	}
	
	

}
