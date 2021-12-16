package com.it.springboot;

import javax.servlet.http.HttpServletRequest;

import com.it.springboot.daodto.IProductDao;
import com.it.springboot.daodto.IUserlistDao;
import com.it.springboot.daodto.ProductlistDto;
import com.it.springboot.daodto.UserlistDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	
	@Autowired
	private IUserlistDao userlistDao;
	@Autowired
	private IProductDao productDao;
//	@Autowired
//	private BCryptPasswordEncoder pwdEncoder;




	@RequestMapping("/productSaveDB")
	public  String productSaveDB(HttpServletRequest req){
		String buyer = req.getParameter("buyer");
		String name = req.getParameter("name");
		String seller = req.getParameter("seller");
		String price = req.getParameter("price");

		ProductlistDto dto = new ProductlistDto();
		dto.setBuyer(buyer);
		dto.setPrice(price);
		dto.setSeller(seller);

		productDao.save(dto);
		return "main";
	}
	@RequestMapping("/memberSaveDB")
	public String memberSaveDB(HttpServletRequest req) {
		String id =req.getParameter("id");
		String name = req.getParameter("name");
		String address = req.getParameter("address");
		String phone = req.getParameter("phone");
//		String encpwd= pwdEncoder.encode(req.getParameter("pwd"));
		String urole = req.getParameter("urole");
		String auth = "ROLE_USER";
		int en = 1;

		UserlistDto dto = new UserlistDto();
		dto.setId(id);
//		dto.setPw(encpwd);
		dto.setAddress(address);
		dto.setPhone(phone);
		dto.setName(name);
		dto.setAuthority(auth);
		dto.setUrole(urole);



		userlistDao.save(dto);
		
		return "main";
	}

	@RequestMapping("/")
	public String root() throws Exception {

		return "main";
	}
	@RequestMapping("/member/buy")
	public String buy() {

		return "member/buy";
	}
	@RequestMapping("/guest/memberjoin")
	public String memberjoin() {

		return "guest/memberjoin";
	}
	
	@RequestMapping("/security/evaluation")
	public String evaluation() {
		
		return "security/evaluation";
	}
	
	@RequestMapping("/member/mypage")
	public String mypage() {
		return "member/mypage";
	}

	@RequestMapping("/admin/product")
	public String product() {
		return "admin/product";
	}

	@RequestMapping("/member/sell")
	public String sell() {
		return "member/sell";
	}

	@RequestMapping("/admin/usercorrect")
	public String usercorrect() {
		return "admin/usercorrect";
	}

	@RequestMapping("/guest/login")
	public String login() {
		return "guest/login";
	}




}
