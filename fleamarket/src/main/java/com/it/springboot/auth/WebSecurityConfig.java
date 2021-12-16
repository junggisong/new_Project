package com.it.springboot.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.sql.DataSource;

//import com.it.springboot.oauth2.MyOauth2UserService;

@Configuration 
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {


    @Autowired
    private UserDetailsService userDetailsService;
    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
        		.antMatchers("/").permitAll()
                .antMatchers("/css/**", "/js/**", "/img/**").permitAll()
                .antMatchers("/guest/**").permitAll()
                .antMatchers("/member/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/security/**").hasAnyRole("EVALUATE","ADMIN")
                .antMatchers("/admin/**").hasRole("ADMIN")
                //.anyRequest().authenticated();
                .anyRequest().permitAll();

        http.formLogin()
                .loginPage("/guest/login")
                .loginProcessingUrl("/guest/aaa")
                //.defaultSuccessUrl("/")
                .usernameParameter("j_username")
                .passwordParameter("j_password")
                .failureForwardUrl("/members/loginerror?login_error=1")
                .permitAll();

        http.logout()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/")
                .permitAll();

        http.csrf().disable();
    }

    @Autowired
    private DataSource dataSource;
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception{
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());

        auth.jdbcAuthentication()
                .dataSource(dataSource)
                .usersByUsernameQuery("select u_id, u_pw from Users where name =?")
                .authoritiesByUsernameQuery( "select u_id from Users where name = ?");



    }



}



