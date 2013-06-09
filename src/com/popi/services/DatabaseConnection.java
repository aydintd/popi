package com.popi.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseConnection {

	Connection connection;
	PreparedStatement preparedStatement;

	private String dbName;
	private String dbUser;
	private String dbPass;
	private String url;

	public DatabaseConnection() {
		this.dbName = "popivt";
		//	Shift 	+ Ctrl + c

//		this.dbUser = "adminZYxqrs5";
//		this.dbPass = "CeJ1ri1fCnYk";
//		this.url = "jdbc:mysql://127.10.225.1:3306/" + dbName + "?useUnicode=yes&characterEncoding=UTF-8";

		this.dbUser = "root";
		this.dbPass = "password";
		// hacı şifren ney? bu reyiz mysql in şifresi passW:D:Dtamam:D:D
		
		
		this.url = "jdbc:mysql://localhost/" + dbName + "?useUnicode=yes&characterEncoding=UTF-8";

	}

	public Connection setConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = (Connection) DriverManager.getConnection(url, dbUser, dbPass);
		} catch (ClassNotFoundException driverEx) {
			driverEx.printStackTrace();
			return null;
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
			return null;
		}

		return connection;
	}

	public void closeConnection() {
		try {
			if (connection != null)
				connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeConnection(Connection connection) {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}