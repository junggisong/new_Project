//package com.it.springboot.oauth2;
//
//import java.util.List;
//import java.util.Map;
//
//import com.it.springboot.daodto.IUserlistDao;
//import com.it.springboot.daodto.UserlistDto;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
//import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
//import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
//import org.springframework.security.oauth2.core.user.OAuth2User;
//import org.springframework.stereotype.Service;
//
////import com.it.springboot.auth.MyUserDetails;
//import com.it.springboot.oauth2.provider.GoogleUserInfo;
//import com.it.springboot.oauth2.provider.NaverUserInfo;
//import com.it.springboot.oauth2.provider.OAuth2UserInfo;
//
//@Service
//public class MyOauth2UserService extends DefaultOAuth2UserService {
//
//	@Autowired
//	private IUserlistDao dao;
//
//	@Override
//	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
//		OAuth2User oAuth2User = super.loadUser(userRequest);
//		System.out.println("loadUser=======================");
//		System.out.println("userRequest=>"+userRequest);
//    	System.out.println("oAuth2User.getAttributes:"+oAuth2User.getAttributes());
//		//naver로 부터 받은 정보
//
//		OAuth2UserInfo oAuth2UserInfo = null;
//
//		if(userRequest.getClientRegistration().getRegistrationId().equals("google")) {
//			System.out.println("Google 로그인요청...");
//			oAuth2UserInfo = new GoogleUserInfo(oAuth2User.getAttributes());
//		} else if(userRequest.getClientRegistration().getRegistrationId().equals("naver")) {
//			System.out.println("Naver 로그인요청...");
//			oAuth2UserInfo = new NaverUserInfo((Map)oAuth2User.getAttributes().get("response"));
//		} else {
//			System.out.println("Google Naver 만 로그인 가능");
//		}
//
//		String provider = oAuth2UserInfo.getProvider(); // google, naver
//		String providerID = oAuth2UserInfo.getProviderId(); // google에 등록된 사용자 ID
//		String username = provider+"_"+providerID; //google_109... => 사실 OAuth로 로긴하기 때문에 이것은 필요없지만 그냥 만들어 준다.
//		//String password = bCryptPasswordEncoder.encode("park"); // => 사실 OAuth로 로긴하기 때문에 이것은 필요없지만 그냥 만들어 준다.
//    	String email = oAuth2UserInfo.getEmail();
//        String role = "ROLE_USER";
//
//		//이미 가입된 회원인지 검사
//        UserlistDto dto = null;
//        List<UserlistDto> list = dao.findUser(username.substring(0,20)); //name)
//		if(list.size() == 0) {
//			System.out.println("sns로 로그인이 최초입니다.");
//            dto = new UserlistDto();
//
//        	 dto.setName(username.substring(0,20)); //DB(user_list)의 size가 20칸으로 작다 그래서..
//        	 dto.setPw("111");
//
//        	 dao.save(dto);
//		} else {
//			System.out.println("sns 로그인 한적이 있습니다. 당신은 자동회원으로 가입되어 있습니다.");
//			dto = list.get(0);
//		}
//
//		MyUserDetails pd = new MyUserDetails(dto, oAuth2User.getAttributes());
//		return pd;
//	}
//
//}
