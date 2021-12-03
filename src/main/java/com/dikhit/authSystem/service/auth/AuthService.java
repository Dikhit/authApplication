package com.dikhit.authSystem.service.auth;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.dikhit.authSystem.dao.DatabaseConnection;
import com.dikhit.authSystem.model.User;
import com.dikhit.authSystem.service.user.UserRowMapper;


@Service
public class AuthService {
	private JdbcTemplate jdbcTemplate = new JdbcTemplate(DatabaseConnection.dataSource());

	public User logIn(String email, String password) {
		String sql = "select * from users where email = ? and password = ?";
		User user = null;
		try {
			user = jdbcTemplate.queryForObject(sql, new UserRowMapper(), email, password);
		}
		catch (Exception error) {
			System.out.println(error.getLocalizedMessage());
		}
		return user;
	}

	public int register(User user) {
		String sql = "insert into users (id, name, email, password, phoneNumber, address) values (?,?,?,?,?,?)";
		int result = (Integer) jdbcTemplate.update(sql, user.getId(), user.getName(), user.getEmail(),
				user.getPassword(), user.getPhoneNumber(), user.getAddress());
		return result;
	}
}
