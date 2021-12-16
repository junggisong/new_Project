package com.it.spring.auth;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import com.it.spring.oauth.MyOauth2UserService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Configuration // 빈(객체) 생성 후 Spring Container에 등록하라
@EnableWebSecurity // 스프링 시큐리티를 시작..
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	public AuthenticationFailureHandler authenticationFailureHandler;
	
	@Autowired
	public MyOauth2UserService myOauth2UserService;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests()
			.antMatchers("/").permitAll()
			.antMatchers("/css/**", "/js/**", "/img/**").permitAll()
			.antMatchers("/guest/**").permitAll()
			.antMatchers("/member/**").hasAnyRole("USER","ADMIN")
			.antMatchers("/admin/**").permitAll()
//			.anyRequest().authenticated();
			.anyRequest().permitAll();
		
		http.formLogin()
			.loginPage("/loginForm") // controller에 /loginForm 수행
			.loginProcessingUrl("/aaa")//class 2개 작성
			.defaultSuccessUrl("/")
				//myDetails.java, MyDetailsService.java
			.failureUrl("/loginForm?error")
			.failureHandler(authenticationFailureHandler)
//			.usernameParameter("j_username")
//			.passwordParameter("j_password")
			.usernameParameter("u_id")
			.passwordParameter("pwd")
//			.permitAll();
			.and() //sns 로긴 처리
			.oauth2Login()	//SNS 로긴 처리
			.userInfoEndpoint()
			.userService(myOauth2UserService);
		
		http.logout()
			.logoutSuccessUrl("/")
			.permitAll();
		
		http.csrf().disable();
		
		
//		System.out.println("111=>"+passwordEncoder().encode("111"));
	}
	
	
	
/*
	@Autowired
	private DataSource dataSource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{
		System.out.println("123=>"+passwordEncoder().encode("123"));
		
		auth.jdbcAuthentication()
		.dataSource(dataSource)
//		.usersByUsernameQuery("select name as userName,password,enabled from user_list where name =?")
//		.authoritiesByUsernameQuery("select name as userName,authority from user_list where name=?")
		.usersByUsernameQuery("select email as userName,password,enabled from user_list2 where email =?")
		.authoritiesByUsernameQuery("select email as userName,role from user_list2 where email=?")
		.passwordEncoder(new BCryptPasswordEncoder());
		
		
	}
*/	
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
}
