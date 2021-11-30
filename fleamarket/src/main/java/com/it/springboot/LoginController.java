//package com.it.springboot;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
//import org.springframework.security.web.savedrequest.RequestCache;
//import org.springframework.security.web.savedrequest.SavedRequest;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import java.util.Map;
//
//@Controller
//public class LoginController {
//    @Controller
//    @RequestMapping("/login")
//    public class UserContorller {
//
//        @Autowired
//        private UserService userService;
//
//        @GetMapping(value = "/login")
//        public String login() {
//            return "user/login";
//        }
//
//        @PostMapping("/login")
//        public String login(@RequestParam Map<String, String> map, Model model, HttpSession session) {
//            try {
//                if (map.get("userid") == null || map.get("userpwd") == null) {
//                    model.addAttribute("msg", "아이디 또는 비밀번호를 입력해주세요");
//                    return "error/error";
//                }
//                User user = userService.login(map);
//                if (user != null) {
//                    session.setAttribute("user", user);
//                } else {
//                    model.addAttribute("msg", "아이디 또는 비밀번호가 올바르지 않습니다.");
//                    return "error/error";
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//                model.addAttribute("msg", "로그인 중 문제가 발생했습니다.");
//                return "error/error";
//            }
//            return "index";
//        } // end of PostMapping("login")
//    }
//
//}
