package kos.triple.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	//main페이지
	@RequestMapping(value="main", method=RequestMethod.GET)
	public String main(HttpServletRequest req, Model model) {
		System.out.println("main()");
		return "main/main";
	}
	
	//관리자페이지
	@RequestMapping(value="adminMain")
	public String adminMain() {
		return "main/adminMain";
	}
	
	//로그아웃
	@RequestMapping(value="logout")
	public String logout(HttpServletRequest req) {
		req.getSession().invalidate();
		return "main/main";
	}
	
	
}


