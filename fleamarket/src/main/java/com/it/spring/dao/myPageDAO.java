package com.it.spring.dao;

import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.it.spring.dto.BoardDTO;
import com.it.spring.dto.User_listDTO;
import com.it.spring.dto.loginData;

import lombok.Getter;

@Repository
public class myPageDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	private IUser_listDAO user_listDAO;
	
	public static String username;
	
	public static void myPageDA(String name) {
		username = name;
		System.out.println("1");
		System.out.println(username);
	}
	
	public User_listDTO getOne() { //회원리스트를 가져옴
		
		User_listDTO dto = new User_listDTO();
		System.out.println(username);
		String sql = "select * from Users where u_id=?";
		dto = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<User_listDTO>(User_listDTO.class),username);
		System.out.println("aaaaaa");

		System.out.println(dto.getU_id());
		return dto;
	}
	public List<User_listDTO> userinfo(){ 
	
		List<User_listDTO> userinfo = new ArrayList<User_listDTO>();
		String sql = "select u_id,name,u_phone,u_address from Users";
		
		userinfo = jdbcTemplate.query(sql, new BeanPropertyRowMapper<User_listDTO>(User_listDTO.class));
		
		return userinfo;
	}
	
	
}
