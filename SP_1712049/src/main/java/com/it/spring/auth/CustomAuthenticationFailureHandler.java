package com.it.spring.auth;

import java.io.IOException;

import javax.security.auth.login.CredentialExpiredException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

@Configuration //bean 생성 후 스프링컨테이너에 담아라 =>DI에 활용가능.
public class CustomAuthenticationFailureHandler implements AuthenticationFailureHandler{

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		String loginid = request.getParameter("u_id");
		//String pwd = request.getParameter("j_password");// password 부분은 sc가 알아서 처리한다.
		String errormsg = "";
		
		if(exception instanceof BadCredentialsException) {
			loginFailure(loginid);
			errormsg = "아이디나 비밀번호가 맞지 않습니다. 다시 하세요...";
		}else if(exception instanceof InternalAuthenticationServiceException){
			loginFailure(loginid);
			errormsg = "아이디나 비밀번호가 맞지 않습니다. 다시 하세요...";
		}else if(exception instanceof DisabledException){
			loginFailure(loginid);
			errormsg = "계정이 비활성화 되었습니다..관리자에게 문의하세요..";
		}
		/*
		else if(exception instanceof CredentialExpiredException){
			loginFailure(loginid);
			errormsg = "비밀번호 유효기간이 만료되었습니다.관리자에게 문의하세요.";
		}
		*/
		request.setAttribute("u_id", loginid);
		request.setAttribute("error_message", errormsg);
		request.getRequestDispatcher("/loginForm?error=true").forward(request, response);
		
		
	}
	protected void loginFailure(String username) {
		
	}

}
