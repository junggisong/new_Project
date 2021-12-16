package com.it.spring.auth;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.it.spring.MyController;
import com.it.spring.dao.IUser_listDAO;
import com.it.spring.dao.myPageDAO;
import com.it.spring.dto.User_listDTO;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class MyDetailsService implements UserDetailsService{
	@Autowired
	private IUser_listDAO user_listDAO;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		List<User_listDTO> list = user_listDAO.getUser(username);
		User_listDTO dto;
		
		if(list.size() != 0) {
			dto = list.get(0);
			System.out.println("회원 맞다..");
		}else {
			dto = new User_listDTO();
			System.out.println("회원 아니다..");
		}
		String userName = username;
		myPageDAO mypage = new myPageDAO();
		mypage.myPageDA(userName);
		MyDetails pd = new MyDetails(dto);
		return pd;
		
	}
}
