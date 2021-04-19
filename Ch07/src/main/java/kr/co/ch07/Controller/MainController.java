package kr.co.ch07.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.ch07.vo.UserVo;

@Controller
public class MainController {
	
	@GetMapping(value={"/", "/index"})
	public String index(Model model) {
		String title = "SpringBoot Thymeleaf Practice";
		String hello = "Hello Thymeleaf";
		
		UserVo user = new UserVo();
		user.setUid("a101");
		user.setName("Stella Kim");
		user.setHp("010-0000-0000");
		user.setAge(25);
		
		List<UserVo> users = new ArrayList<>();
		users.add(new UserVo("a101", "Stella", "010-1111-1111", 21));
		users.add(new UserVo("a102", "Jenn", "010-2222-2222", 21));
		users.add(new UserVo("a103", "Ashley", "010-3333-3333", 21));
		users.add(new UserVo("a104", "Sally", "010-4444-4444", 21));
		users.add(new UserVo("a105", "Michelle", "010-5555-5555", 21));
		
		model.addAttribute("title", title);
		model.addAttribute("hello", hello);
		model.addAttribute(user);
		model.addAttribute("users", users);
		
		return "/index";
	}
	
	@GetMapping("/include")
	public String include() {
		return "/include";
	}
}
