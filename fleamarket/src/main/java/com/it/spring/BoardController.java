package com.it.spring;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.it.spring.dao.BoardDAO;
import com.it.spring.dao.BuyDAO;
import com.it.spring.dao.evaluateDAO;
import com.it.spring.dto.BoardDTO;
import com.it.spring.dto.BuyDTO;
import com.it.spring.dto.evaluateDTO;

@Controller
public class BoardController {
	String p_number = "";
	@Autowired
	BoardDAO dao;
	
	@Autowired
	BuyDAO buyDao;
	@Autowired
	evaluateDAO evaluatedao;
	
	@Autowired
	uploadController upload;
	
	
	@RequestMapping("/newContent") 
	public String newContent(HttpServletRequest req) {
		HttpSession session = req.getSession();
		String username = (String)session.getAttribute("u_id");
		return "member/write";
	}
	
	
	
	@RequestMapping("/getBoardDetail")
	public String getBoardDetail(HttpServletRequest request, Model model) {
		
		String id = request.getParameter("id");
		
		BoardDTO dto = dao.getOne(id);
		model.addAttribute("dto",dto);
		
		List<evaluateDTO> score = evaluatedao.getScore(dto.getP_no());
		model.addAttribute("score", score);
		
		
		return "member/BoardDetail";
	}
	
	
	@RequestMapping("/evaluate")
	public String evaluate(HttpServletRequest request, Model model) {
		
		
		String id = request.getParameter("id"); //p_no 받아온값
		
		HttpSession session = request.getSession();
		String p_no = (String)session.getAttribute(id);
		
		BoardDTO dto = dao.getOne(id);
		model.addAttribute("dto",dto);
		p_number = id;
		
		System.out.println(id+"번 품목");
		
		return "member/evaluate";
	}
	

	@RequestMapping("/evaluateSave") 
	public String evaluateSave(HttpServletRequest request, Model model) {
		//불러와짐.불러와 질 시에 dao에 sql문 만들어 준 후 u_no,p_no,e_score,e_content 보내줘서 insert
		
		
		String e_name = request.getParameter("e_name");
		String e_score = request.getParameter("e_score");
		String e_content = request.getParameter("e_content");
		System.out.println(e_score);
		System.out.println(e_content);
		System.out.println(e_name);
		System.out.println(p_number);
		evaluatedao.save(e_name,p_number,e_score,e_content);
		
		return "redirect:/"; 
	}
	
	
	
	@RequestMapping("/contentSave") 
	public String contentSave(HttpServletRequest request, Model model) {
		
		String p_name = request.getParameter("p_name");
		String p_content = request.getParameter("p_content");
		String p_price = request.getParameter("p_price");
		String p_category = request.getParameter("p_category");
		String p_seller = request.getParameter("p_seller");
		String img = upload.getSrc();
		System.out.println(img);
			
		dao.save(p_name, p_content,p_price,p_category,p_seller,img);
		
		return "redirect:/"; 
	}
	
	
	@RequestMapping("/boardDelete") 
	public String boardDelete(HttpServletRequest request) {
		// 1. 사용자가 보낸 값 읽기
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		dao.delete(id);
		return "redirect:/";
		 //controller의 /list를 다시 call
	}
	
	
	
	
	
	
	@RequestMapping("/boardUpdate") 
	public String dbupdate(HttpServletRequest request, Model model) {
		
		String id = request.getParameter("id");
		
		HttpSession session = request.getSession();
		BoardDTO dto = dao.getOne(id);
		model.addAttribute("dto",dto);
		return "member/BoardUpdate";

	}
	
	@RequestMapping("/boardUpdate2") //DB수정
	public String boardUpdate2 (HttpServletRequest request, Model model) {
		
		String p_no = request.getParameter("p_no");
		String p_name = request.getParameter("p_name");
		String p_content = request.getParameter("p_content");
		
		dao.updateReal(p_no, p_name, p_content);

		return "redirect:/member/welcome";  
	}
	
//	@RequestMapping("/insertBoard") //DB수정
//	public String insertBoard (HttpServletRequest request, Model model) {
//		
//		String buyer_no = request.getParameter(u_no);
//		int product_no = request.getParameter();
//		String delivery = "배송준비중";
//		BuyDTO buy = new BuyDTO();
//		
//		buy.setDelivery(delivery);
//		buy.setBuyer_no(buyer_no);
//		buy.setProduct_no(product_no);
//		buyDao.save(buy);
//		
//
//		return "redirect:/";  
//	}
}
