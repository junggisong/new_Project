package com.it.spring.oauth;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.it.spring.auth.MyDetails;
import com.it.spring.dao.IUser_listDAO;
import com.it.spring.dto.User_listDTO;
import com.it.spring.oauth.provider.GoogleUserInfo;
import com.it.spring.oauth.provider.NaverUserInfo;
import com.it.spring.oauth.provider.OAuth2UserInfo;

@Service
public class MyOauth2UserService extends DefaultOAuth2UserService{
	
	//@Autowired
	//private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	private IUser_listDAO dao;
	
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException{
		
		//sns로 로그인 성공한 경우에 여기에 온다.
		OAuth2User oAuth2User = super.loadUser(userRequest);
		System.out.println("getAttributes:"+oAuth2User.getAttributes());
		//from google로부터 받은 정보 출력
		//getAttributes:{sub=107364474726174720805, name=송중기, given_name=중기, family_name=송, picture=https://lh3.googleusercontent.com/a/AATXAJzhZT8fBQ_vXIApSl9Qh8ruQUaDqQ2URVQi_bAY=s96-c, email=jgjg0515@gmail.com, email_verified=true, locale=ko}
		//from naver로부터 받은 정보 출력
		//getAttributes:{resultcode=00, message=success, response={id=koB1zB-lq3iiHXjW1rkpXnIVH6H3YebeE8vE0ddRYdI, email=jgjg05@naver.com, name=송중기}}
		
		
		//구글 등의 사용자에 대하여 강제로 회원가입 진행
		OAuth2UserInfo oAuth2UserInfo = null;
		if(userRequest.getClientRegistration().getRegistrationId().equals("google")) {
			System.out.println("구글 로그인 요청...");
			oAuth2UserInfo = new GoogleUserInfo(oAuth2User.getAttributes());
		}else if(userRequest.getClientRegistration().getRegistrationId().equals("naver")) {
			System.out.println("네이버 로그인 요청...");
			oAuth2UserInfo = new NaverUserInfo((Map)oAuth2User.getAttributes().get("response"));
		}else {
			System.out.println("우리는 구글과 네이버만 가능합니다..");
		}
		String provider = oAuth2UserInfo.getProvider();
		String providerID = oAuth2UserInfo.getProviderId();
		String username = provider +"_" + providerID;
//		String password = bCryptPasswordEncoder.encode("park");
		String email = oAuth2UserInfo.getEmail();
		String role = "ROLE_USER";
		
		//구글 or 네이버로부터 받은 정보 => 내사이트 회원정보에 강제 가입
		System.out.println("provider="+provider);
		System.out.println("providerID="+providerID);
		System.out.println("username="+username);
//		System.out.println("password="+password);
		System.out.println("email="+email);
		
		User_listDTO dto = null;
		List<User_listDTO> list = dao.getUser(username.substring(0,20));
		if(list.size() == 0) {
			System.out.println("sns로 로그인이 최초입니다.");
			dto = new User_listDTO();
			dto.setName(username.substring(0,20));
			dto.setPassword("111");
			dto.setAuthority("ROLE_USER");
			dto.setEnabled(1);
			
			dao.save(dto);
		}else {//이미 강제가입 되어 있는 sns 사용자.
			dto = list.get(0);
			System.out.println("sns 로그인 한적이 있습니다. 당신은 자동회원으로 가입되어 있습니다.");
		}
		return new MyDetails(dto, oAuth2User.getAttributes());
	}
}
