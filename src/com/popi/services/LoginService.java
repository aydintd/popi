package com.popi.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.popi.beans.User;

public class LoginService {
	Connection connection;
	PreparedStatement preparedStatement;
	ResultSet resultSet;
	DatabaseConnection dbConnection;
	
	public LoginService() {
		dbConnection = new DatabaseConnection();
	}
	
	public User getUser(String username, String password) {
		User user = new User();

		connection = dbConnection.setConnection();
		String sql = "select * from user where username=? and passwd=?";

		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);

			resultSet = preparedStatement.executeQuery();

			if (!resultSet.next())
				return null;

			
			// evet müdür dediğim gibi senin eski get/set metodlarından id olanı düzgün çalışıyor ama diğeri çalışmıyordu
			
			user.setID(resultSet.getInt("id"));
			user.setUsername(username);	// ok?
			user.setPasswd(password);
			user.setEmail(resultSet.getString("email"));
			user.setIs_admin(resultSet.getBoolean("is_admin"));

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}

}