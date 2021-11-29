package com.it.springboot.oauth2.provider;

import java.util.Map;

public class NaverUserInfo implements OAuth2UserInfo{

	private Map<String, Object> attributes; //oAuth2User.getAttributes()
	
	public NaverUserInfo(Map<String, Object> attributes) {
		this.attributes = attributes;
		//System.out.println("Pid=>"+getProviderId());
		//System.out.println("Pro=>"+getProvider());
		//System.out.println("Name=>"+getName());
	}
	
	@Override
	public String getProviderId() {		
		return (String)attributes.get("id");
	}

	@Override
	public String getProvider() {
		return "naver";
	}

	@Override
	public String getEmail() {
		return (String)attributes.get("email");
	}

	@Override
	public String getName() {
		return (String)attributes.get("name");
	}

}
