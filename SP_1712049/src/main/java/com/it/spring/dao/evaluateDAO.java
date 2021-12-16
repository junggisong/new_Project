package com.it.spring.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.it.spring.dto.BoardDTO;
import com.it.spring.dto.BuyDTO;
import com.it.spring.dto.evaluateDTO;
@Repository
public class evaluateDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;


	public void save (String e_name,String e_product,String e_score,String e_content) {
		String sql = "insert into evaluate(e_name, e_product, e_score, e_content) values(?,?,?,?)";
		
		jdbcTemplate.update(sql, e_name,e_product,e_score,e_content);
	}
	
	public List<evaluateDTO> getScore(int p_no){ 
	List<evaluateDTO> score = new ArrayList<evaluateDTO>();
	String sql = "select * from evaluate where e_product=?";
	
	score = jdbcTemplate.query(sql, new BeanPropertyRowMapper<evaluateDTO>(evaluateDTO.class),p_no);

	return score;

}
}
