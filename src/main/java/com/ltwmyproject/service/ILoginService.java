package com.ltwmyproject.service;

import java.sql.SQLException;

public interface ILoginService {
	boolean checkLogin (String username, String pass) throws SQLException;

}
