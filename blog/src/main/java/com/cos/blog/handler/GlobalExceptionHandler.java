package com.cos.blog.handler;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;

@ControllerAdvice // 어디서든 이 함수를 가져와 사용할 수 있게 만들기
@RestController
public class GlobalExceptionHandler {

	@ExceptionHandler(value = IllegalArgumentException.class)              // IllegalArgumentException가 동작하면 그 Exception에 대한 에러를
	public String handleArgumemntException(IllegalArgumentException e) {   // e 함수에 전달
		return "<h1>" + e.getMessage() + "</h1>";
	}
}
