package com.it.springboot.auth;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import com.it.springboot.daodto.UserlistDto;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

public class MyUserDetails implements UserDetails, OAuth2User{

	private UserlistDto user; //컴포지션 - 객체속의 객체

	private Map<String, Object> attributes;

	//OAuth 로그인 시
	public MyUserDetails(UserlistDto user,  Map<String, Object> attributes) {
		this.user = user;
		this.attributes = attributes;
	}

	public MyUserDetails(UserlistDto user) {
		this.user = user;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Collection<GrantedAuthority> collectors = new ArrayList<>();
		collectors.add( ()->{
		   return user.getAuthority();
		});
		return collectors;
	}

	@Override
	public String getPassword() {

		return user.getPw();
	}

	@Override
	public String getUsername() {

		return user.getId();
	}

	@Override
	public boolean isAccountNonExpired() {

		return true;
	}

	@Override
	public boolean isAccountNonLocked() {

		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {

		return true;
	}

	@Override
	public boolean isEnabled() {

		return true;
	}

	@Override
	public Map<String, Object> getAttributes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return null;
	}

}
