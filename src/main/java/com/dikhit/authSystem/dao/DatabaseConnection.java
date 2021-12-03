package com.dikhit.authSystem.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class DatabaseConnection {
	public static DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/practice");
		dataSource.setUsername("root");
		dataSource.setPassword("kaku0001");
		return dataSource;
	}
}
