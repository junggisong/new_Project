package com.it.springboot.oauth2.provider;

public interface OAuth2UserInfo {
	String getProviderId();
	String getProvider(); //google, naver 등
	String getEmail();
	String getName();
}
