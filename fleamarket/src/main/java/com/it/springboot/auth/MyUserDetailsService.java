package com.it.springboot.auth;

import java.util.List;

import com.it.springboot.daodto.IUserlistDao;
import com.it.springboot.daodto.UserlistDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	IUserlistDao dao;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		List<UserlistDto> list = dao.findUser(username);

		UserlistDto dto;

		if(list.size() > 0 ) {
			dto = list.get(0);  //회원 정보가 dto에 담김
			System.out.println("회원");
		}
		else {
			dto = new UserlistDto(); //빈객체
			System.out.println("비회원");
		}

		MyUserDetails pd = new MyUserDetails(dto);   		                                          // 시큐리티 세션에 저장됨
		return pd;
	}

}
