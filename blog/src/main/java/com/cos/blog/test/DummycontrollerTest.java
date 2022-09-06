package com.cos.blog.test;

import java.util.function.Supplier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cos.blog.model.RoleType;
import com.cos.blog.model.User;
import com.cos.blog.repositroy.UserRepositroy;

// html 파일이 아니라 data를 return 해주는 Controller = RestController
@RestController
public class DummycontrollerTest {
	
	@Autowired    // 의존성 주입(DI)
	private UserRepositroy UserRepositroy;
	
	// {id} 주소로 파라메타를 전달 받을 수 있음
	// http://localhost:8000/blog/dummy/user/3 과 같이 들어가게 된다.
//	@GetMapping("/dummy/user/{id}")
//	public User detail(@PathVariable int id) {
//		User user = UserRepositroy.findById(id).orElseGet(new Supplier<User>() {
//			@Override
//			public User get() {
//				return new User();
//			}
//		});
//		return user;
//	}
	
	// IllegalArgumentException 사용
	@GetMapping("/dummy/user/{id}")
	public User detail(@PathVariable int id) {
		User user = UserRepositroy.findById(id).orElseThrow(new Supplier<IllegalArgumentException>() {
			@Override
			public IllegalArgumentException get() {
				// TODO Auto-generated method stub
				return new IllegalArgumentException("해당 유저는 없습니다. id : " + id);
			}
		});
		// 요청 : 웹브라우저
		// user 객체 : java object
		// 변환(웹브라우저가 이해할 수 있는 데이터) -> json
		// spring boot의 MessageConverter 작동
		return user;
	}
	
	// 람다식
//	@GetMapping("/dummy/user/{id}")
//	public User detail(@PathVariable int id) {
//		User user = UserRepositroy.findById(id).orElseThrow(()->{
//			return new IllegalArgumentException("해당 사용자가 없습니다.");
//		});
//		return user;
//	}

	// http://localhost:8000/blog/dummy/join (요청)
	// http의 body에 username, password, email 데이터를 가지고 요청
	@PostMapping("/dummy/join")
	public String join(User user) {
		
		System.out.println("id : " + user.getId());
		System.out.println("username : " + user.getUsername());
		System.out.println("password : " + user.getPassword());
		System.out.println("email : " + user.getEmail());
		System.out.println("role : " + user.getRole());
		System.out.println("createdate : " + user.getCreateDate());
		
		user.setRole(RoleType.USER);
		UserRepositroy.save(user);
		
		return "회원가입이 완료되었습니다.";	
	}
}
