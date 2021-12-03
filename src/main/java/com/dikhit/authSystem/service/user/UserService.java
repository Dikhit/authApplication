package com.dikhit.authSystem.service.user;

import org.springframework.jdbc.core.JdbcTemplate;

import com.dikhit.authSystem.dao.DatabaseConnection;

public class UserService {
	private JdbcTemplate jdbcTemplate = new JdbcTemplate(DatabaseConnection.dataSource());
}
