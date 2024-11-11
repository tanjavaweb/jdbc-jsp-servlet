package com.ltwmyproject.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ltwmyproject.dao.IProductDAO;
import com.ltwmyproject.model.catalog_model;
import com.ltwmyproject.model.product_model;

public class ProductDAO implements IProductDAO {

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
	public List<product_model> findByCategoryId(Long categoryId) {
		List<product_model> results = new ArrayList<>();
		String sql = "SELECT * FROM product WHERE catalog_id = ?";
		// open connection
		Connection connection = getConnection();
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		if (connection != null) {
			try {
				statement = connection.prepareStatement(sql);
				statement.setLong(1, categoryId);
				resultSet = statement.executeQuery();
				while (resultSet.next()) {
					product_model product = new product_model();
					product.setId(resultSet.getLong("id"));
					product.setCatalog_id(resultSet.getLong("catalog_id"));
					product.setName(resultSet.getString("name"));
					product.setPrice(resultSet.getInt("price"));
					product.setContent(resultSet.getString("content"));
					product.setDiscount(resultSet.getInt("discount"));
					product.setImg_link(resultSet.getString("img_link"));
					product.setImg_list(resultSet.getString("img_list"));
					results.add(product);
				}

				return results;
			} catch (SQLException e) {
				return null;
			} finally {
				try {
					if (connection != null) {
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
	public void save(product_model product) throws SQLException {

		String sql = "INSERT INTO product (catalog_id, name, price, content, discount, img_link, img_list) VALUES (?, ?, ?, ?, ?,?, ?)";

		// open connection
		Connection connection = getConnection();
		PreparedStatement statement = null;
		if (connection != null) {
			try {

				statement = connection.prepareStatement(sql);

				statement.setLong(1, product.getCatalog_id());
				statement.setString(2, product.getName());
				statement.setInt(3, product.getPrice());
				statement.setString(4, product.getContent());
				statement.setInt(5, product.getDiscount());
				statement.setString(6, product.getImg_link());
				statement.setString(7, product.getImg_link());
				int status = statement.executeUpdate();
				if (status != 0) {
					System.out.println("INSERTED OK");
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
	}

	@Override
	public void delete(Long id) throws SQLException {
		;
		String sql = "DELETE FROM product WHERE id = ?";

		// open connection
		Connection connection = getConnection();
		PreparedStatement statement = null;

		if (connection != null) {
			try {

				statement = connection.prepareStatement(sql);
				statement.setLong(1, id);
				int status = statement.executeUpdate();
				if (status != 0) {
					System.out.println("DELETE OK");
				} else {
					System.out.println("DELETE faile");
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				connection.close();
				statement.close();
			}

		}

	}

	@Override
	public void update(product_model product, Long idF) throws SQLException {

		String sql = "UPDATE product SET catalog_id = ?, name = ?, price= ?, content= ?, discount = ?, img_link = ?, img_list =? WHERE id="
				+ idF;
		// open connection
		Connection connection = getConnection();
		PreparedStatement statement = null;
		if (connection != null) {
			try {

				statement = connection.prepareStatement(sql);

				statement.setLong(1, product.getCatalog_id());
				statement.setString(2, product.getName());
				statement.setInt(3, product.getPrice());
				statement.setString(4, product.getContent());
				statement.setInt(5, product.getDiscount());
				statement.setString(6, product.getImg_link());
				statement.setString(7, product.getImg_link());
				int status = statement.executeUpdate();
				if (status != 0) {
					System.out.println("UPDATE OK");
				} else {
					System.out.println("UPDATE fail");
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				connection.close();
				statement.close();
			}

		}

//		
//		try {
//
//			statement = connection.prepareStatement(sql);
//			statement.setLong(1, product.getCatalog_id());
//			statement.setString(2, product.getName());
//			statement.setInt(3, product.getPrice());
//			statement.setString(4, product.getContent());
//			statement.setInt(5, product.getDiscount());
//			statement.setString(6, product.getImg_link());
//			statement.setString(7, product.getImg_link());
//			int status = statement.executeUpdate();
//			if (status != 0) {
//				System.out.println("UPDATE OK");
//			} else {
//				System.out.println("UPDATE fail");
//			}
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			connection.close();
//			statement.close();
//		}
	}

	@Override
	public ArrayList<product_model> getListProductByCategory(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<product_model> findAll() {
		List<product_model> results = new ArrayList<>();
		String sql = "SELECT * FROM product";
		// open connection
		Connection connection = getConnection();
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		if (connection != null) {
			try {
				statement = connection.prepareStatement(sql);
				resultSet = statement.executeQuery();
				while (resultSet.next()) {
					product_model product = new product_model();
					product.setCatalog_id(resultSet.getLong("catalog_id"));
					product.setPrice(resultSet.getInt("price"));
					product.setDiscount(resultSet.getInt("discount"));
					product.setImg_link(resultSet.getString("img_link"));
					results.add(product);
				}

				return results;
			} catch (SQLException e) {
				return null;
			} finally {
				try {
					if (connection != null) {
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
	public product_model findProductById(Long prodductId) throws SQLException {
		String sql = "SELECT * FROM product WHERE id = ?";
		// open connection
		Connection connection = getConnection();
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		if (connection != null) {
			try {
				statement = connection.prepareStatement(sql);
				statement.setLong(1, prodductId);

				while (resultSet.next()) {
					product_model product = new product_model();
					product.setId(resultSet.getLong("id"));
					product.setCatalog_id(resultSet.getLong("catalog_id"));
					product.setName(resultSet.getString("name"));
					product.setPrice(resultSet.getInt("price"));
					product.setContent(resultSet.getString("content"));
					product.setDiscount(resultSet.getInt("discount"));
					product.setImg_link(resultSet.getString("img_link"));
					product.setImg_list(resultSet.getString("img_list"));
					resultSet = statement.executeQuery();
					if (resultSet != null) {
						System.out.println("UPDATE OK");
					} else {
						System.out.println("UPDATE fail");
					}
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				connection.close();
				statement.close();
			}

		}
		return null;
	}
}
