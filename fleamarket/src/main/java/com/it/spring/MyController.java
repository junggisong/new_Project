package com.it.spring;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.it.spring.dao.BoardDAO;
import com.it.spring.dao.BuyDAO;
import com.it.spring.dao.IUser_listDAO;
import com.it.spring.dao.myPageDAO;
import com.it.spring.dto.BoardDTO;
import com.it.spring.dto.BuyDTO;
import com.it.spring.dto.User_listDTO;
import com.it.spring.dto.loginData;

@Controller
public class MyController {
	
	@Autowired
	BCryptPasswordEncoder pwdEncoder;
	
	@Autowired
	IUser_listDAO user_listDao;
	
	@Autowired
	BoardDAO dao;
	
	@Autowired
	myPageDAO mypageDAO;
	@Autowired
	BuyDAO BuyDAO;
	
//	@RequestMapping("/")
//	public @ResponseBody String root() {
//		return "Security (1)";
//	}
	@RequestMapping("/")
	public String root() {
		return "index";
	}
	@RequestMapping("/security/joinForm")
	public String joinForm() {
		return "security/joinForm"; // security/joinForm.jsp
	}
	
	@RequestMapping("/userinfo")
	public @ResponseBody String userinfo(Authentication auth) {
		UserDetails ud = (UserDetails)auth.getPrincipal();
		String username = ud.getUsername();
		return username;
	}
	@RequestMapping("/guest/welcome")
	public String welcome1() {
		return "guest/welcome1"; // guest/welcome1.jsp
	}	
	@RequestMapping("/userSave")
	public String userSave(HttpServletRequest req) {	//user_list 테이블에 저장
		String name = req.getParameter("name");
		String pwd = pwdEncoder.encode(req.getParameter("pwd"));
		String authority = req.getParameter("authority");
		String insertauth ="1";
		if(authority.equals("회원")) {
			insertauth = "ROLE_USER";
		}else if(authority.equals("평가단")
				) {
			insertauth = "ROLE_ADMIN";
		} else if (authority.equals("관리자")) {
			insertauth = "ROLE_ADMIN";
		};	
		int enabled = 1;
		String id = req.getParameter("id");
		String address = req.getParameter("address");
		String phone = req.getParameter("phone");
		
		User_listDTO dto = new User_listDTO();
		dto.setName(name);
		dto.setPassword(pwd);
		dto.setAuthority(insertauth);
		dto.setEnabled(enabled);
		dto.setU_address(address);
		dto.setU_id(id);
		dto.setU_phone(phone);
		user_listDao.save(dto);
		System.out.println("ok");
		return "redirect:/"; // guest/welcome1.jsp
	}
	
	@RequestMapping("/member/welcome")
	public String welcome2(Model model) {
		
		List<BoardDTO> list = dao.boardList();
		model.addAttribute("list", list);
		return "member/welcome2"; // member/welcome2.jsp
	}
	
	@RequestMapping("/member/clothesWelcome")
	public String clothWelcome(Model model){
		
		List<BoardDTO> list = dao.boardList();
		model.addAttribute("list", list);
		return "member/clothesWelcome";
	}
	
	
	@RequestMapping("/member/loginOkIndex")
	public String loginOkIndex(loginData ad) {
		return "member/loginOkIndex"; // member/welcome2.jsp
	}
	
	
	@RequestMapping("/member/buyPage")
	public String buyPage(HttpServletRequest request, Model model) {
		
		String id = request.getParameter("id");
		
		BoardDTO dto = dao.getOne(id);
		model.addAttribute("dto",dto);

		return "member/buyPage"; // member/welcome2.jsp
	}
	
	
	@RequestMapping("/admin/welcome")
	public String welcome3(Model model) {
		
		List<User_listDTO> userinfo = mypageDAO.userinfo();
		model.addAttribute("userinfo",userinfo);
		List<BuyDTO> adminBuy = BuyDAO.adminBuy();
		model.addAttribute("adminBuy",adminBuy);
		return "admin/adminForm"; 
	}
	
	@RequestMapping("/changeDelivery")
	public String changeDelivery(Model model) {
		
		List<BuyDTO> adminBuy = BuyDAO.adminBuy();
		model.addAttribute("adminBuy",adminBuy);
		
		
		return "admin/changeDelivery"; // security/loginForm.jsp
	}
	
	
	
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "security/loginForm"; // security/loginForm.jsp
	}
	
	@RequestMapping("/loginError")
	public String loginError() {
		return "security/loginError"; // security/loginError.jsp
	}
	@RequestMapping("/mypage")
	public String mypage(HttpServletRequest request, Model model) {
		
		User_listDTO my = mypageDAO.getOne();
		model.addAttribute("my",my);
		System.out.println(my.getU_id());
		
		List<BuyDTO> buy = BuyDAO.buyList(my.getU_no());
		model.addAttribute("buy",buy);
		

		return "member/myPage"; // security/loginError.jsp
	}
	@RequestMapping("/fileUploadAction")
	public String fileUploadAction() {
		return "fileUploadAction";
	}

}



















