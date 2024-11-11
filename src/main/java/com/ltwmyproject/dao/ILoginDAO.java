package com.ltwmyproject.dao;

import java.sql.SQLException;

public interface ILoginDAO {
	
	boolean checkLogin(String username, String pass) throws SQLException;

}
