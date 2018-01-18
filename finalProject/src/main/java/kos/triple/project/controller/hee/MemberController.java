package kos.triple.project.controller.hee;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kos.triple.project.service.hee.MemberService;
import kos.triple.project.service.hee.MemberServiceImpl;
import kos.triple.project.vo.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	//회원가입처리
	@RequestMapping(value="register")
	public String register(HttpServletRequest req , Model model) {

		service.inputMemberPro(req, model);
		
		return "main/main";
	}
	
	// 아이디 중복
	@RequestMapping(value="idCheck")
	public @ResponseBody String idCheck(HttpServletRequest req , Model model) {
		String cnt = "0";
		
		service.confirmId(req, model);
		cnt = (String)req.getAttribute("cnt");
		System.out.println("값 : " + cnt);
		return cnt;
	}

	
	
	//로그인처리
	@RequestMapping(value="login")
	public String login(HttpServletRequest req , Model model) {
		
		service.loginPro(req, model);

		return "main/loginRedirect";
		
	}
	
	// 아이디 비밀번호 찾기
	@RequestMapping(value="findIdAndPwd")
	public String findIdAndPwd(HttpServletRequest req , Model model) {
		

		return "mypage/findIdAndPwd";
	}
	
	// 아이디 찾기 결과 페이지
	@RequestMapping(value="findIdAndPwdReuslt")
	public String findIdAndPwdReuslt(HttpServletRequest req , Model model) {
		
		service.getIdAndPwd(req, model);
		
		return "mypage/findIdAndPwdReuslt";
		
	}
	
	// 마이 페이지
	@RequestMapping(value="myPageStart")
	public String myPageStart(HttpServletRequest req , Model model) {
	
		return "mypage/myPageStart";
		
	}
	
	// 회원 정보 수정 폼
	@RequestMapping(value="modifyForm")
	public String modifyForm(HttpServletRequest req , Model model) {
		
		return "mypage/modifyForm";
		
	}
	
	// 회원 정보 수정 상세 페이지
	@RequestMapping(value="modifyView")
	public String modifyView(HttpServletRequest req , Model model) {
		
		service.modifyView(req, model);
		
		return "mypage/modifyView";
		
	}
	
	// 회원 정보 수정 처리 페이지
	@RequestMapping(value="modifyPro")
	public String modifyPro(HttpServletRequest req , Model model) {
		
		service.modifyPro(req, model);
		
		return "mypage/modifyPro";
		
	}

	// 회원 탈퇴 페이지
	@RequestMapping(value="deleteForm")
	public String deleteForm(HttpServletRequest req , Model model) {
		
		return "mypage/deleteForm";
		
	}	
	
	// 회원 탈퇴 처리 페이지	
	@RequestMapping(value="deletePro")
	public String deletePro(HttpServletRequest req , Model model) {
		
		service.deletePro(req, model);
		
		return "mypage/deletePro";
		
	}	
		

}
