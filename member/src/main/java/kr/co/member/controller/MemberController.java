package kr.co.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.member.service.MemberService;
import kr.co.member.vo.MemberVo;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	@GetMapping("/register")
	public String register() {
		return "/register";
	}
	
	@PostMapping("/register")
	public String register(MemberVo vo) {
		service.insertMember(vo);
		return "/register";
	}
	
	@GetMapping("/list")
	public String list(Model model) {
		List<MemberVo> members = service.selectMembers();
		model.addAttribute("members", members);
		return "/list";
	}
	
	@GetMapping("/modify")
	public String modify(Model model, String uid) {
		MemberVo member = service.selectMember(uid);
		model.addAttribute(member);
		return "/modify";
	}
	
	@PostMapping("/modify")
	public String modify(MemberVo vo) {
		service.updateMember(vo);
		return "redirect:/list";
	}

	@GetMapping("/delete")
	public String delete(String uid) {
		service.deleteMember(uid);
		return "redirect:/list";
	}
}


