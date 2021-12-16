package com.it.spring.dao;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.it.spring.dto.BoardDTO;
import com.it.spring.dto.BuyDTO;
@Repository
public class BuyDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	public List<BuyDTO> buyList(int u_no){ 
		List<BuyDTO> buy = new ArrayList<BuyDTO>();
		String sql = "select * from buy where buyer_no=?";
		
		buy = jdbcTemplate.query(sql, new BeanPropertyRowMapper<BuyDTO>(BuyDTO.class),u_no);
	
		return buy;
	
	}
	
	public List<BuyDTO> adminBuy(){ 
		List<BuyDTO> adminBuy = new ArrayList<BuyDTO>();
		String sql = "select * from buy";
		
		adminBuy = jdbcTemplate.query(sql, new BeanPropertyRowMapper<BuyDTO>(BuyDTO.class));
	
		return adminBuy;
	
	}
	public void save(String buyer_no,int product_no, String delivery) {
		String sql = "insert into buy(buyer_no, product_no, delivery) values(?,?,?)";
		
		jdbcTemplate.update(sql, buyer_no,product_no,delivery);
	}
}
