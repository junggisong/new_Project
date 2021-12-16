package com.it.spring.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.it.spring.dto.BoardDTO;

@Repository
public class BoardDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	public List<BoardDTO> boardList (){ 
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		String sql = "select * from Product where p_category='1'";
		
		list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<BoardDTO>(BoardDTO.class));
	
		return list;
	}
	
	public  void update(String title ){
		String sql = "update simple_bbs set title =?";
	
		jdbcTemplate.update(sql, title);
		
	}
	
	public void updateReal(String p_no, String p_name, String p_content){ //회원저장	(id, name)		
		String sql = "update Product set  p_name=?, p_content=? where p_no=?";
	
		jdbcTemplate.update(sql, p_name, p_content, p_no);
		
	}
	
	
	public BoardDTO getOne(String p_no) {
		
		BoardDTO dto = new BoardDTO();
		
		String sql = "select * from Product where p_no=?";
	
		dto = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<BoardDTO>(BoardDTO.class),p_no);
		

		return dto;
	}
	public BoardDTO getP_name(String p_no) {
		
		BoardDTO p_name = new BoardDTO();
		
		String sql = "select p_name from Product where p_no=?";
	
		p_name = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<BoardDTO>(BoardDTO.class),p_no);
		

		return p_name;
	}
	
	
	public void save (String p_name, String p_content, String p_price, String p_category ,String p_seller,String img) {
		String sql = "insert into Product(p_name, p_content, p_price, p_category,p_seller,img) values(?,?,?,?,?,?)";
		
		jdbcTemplate.update(sql, p_name, p_content,p_price,p_category,p_seller,img);
	}
	
	
	
	public void delete (String p_no) {
		String sql = "delete from Product where p_no = ?";
		
		jdbcTemplate.update(sql, p_no);
	}

		
	
}
