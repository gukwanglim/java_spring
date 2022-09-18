package com.cos.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	
//	@GetMapping("user/joinForm")
	// 스프링 시큐리티 사용 -> header.jsp에서 주소 변경 필요
	@GetMapping("/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}

//	@GetMapping("user/loginForm")
	// 스프링 시큐리티 사용 -> header.jsp에서 주소 변경 필요
	@GetMapping("/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
}