package com.dikhit.authSystem.service.user;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dikhit.authSystem.model.User;

public class UserRowMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User(
					rs.getString("id"),
					rs.getString("name"),
					rs.getString("email"),
					rs.getString("password"),
					rs.getString("phoneNumber"),
					rs.getString("address"),
					rs.getDate("createdAt")
				);
		
		return user;
	}
	
}
