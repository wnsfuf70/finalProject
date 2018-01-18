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
	
	//ȸ������ó��
	@RequestMapping(value="register")
	public String register(HttpServletRequest req , Model model) {

		service.inputMemberPro(req, model);
		
		return "main/main";
	}
	
	// ���̵� �ߺ�
	@RequestMapping(value="idCheck")
	public @ResponseBody String idCheck(HttpServletRequest req , Model model) {
		String cnt = "0";
		
		service.confirmId(req, model);
		cnt = (String)req.getAttribute("cnt");
		System.out.println("�� : " + cnt);
		return cnt;
	}

	
	
	//�α���ó��
	@RequestMapping(value="login")
	public String login(HttpServletRequest req , Model model) {
		
		service.loginPro(req, model);

		return "main/loginRedirect";
		
	}
	
	// ���̵� ��й�ȣ ã��
	@RequestMapping(value="findIdAndPwd")
	public String findIdAndPwd(HttpServletRequest req , Model model) {
		

		return "mypage/findIdAndPwd";
	}
	
	// ���̵� ã�� ��� ������
	@RequestMapping(value="findIdAndPwdReuslt")
	public String findIdAndPwdReuslt(HttpServletRequest req , Model model) {
		
		service.getIdAndPwd(req, model);
		
		return "mypage/findIdAndPwdReuslt";
		
	}
	
	// ���� ������
	@RequestMapping(value="myPageStart")
	public String myPageStart(HttpServletRequest req , Model model) {
	
		return "mypage/myPageStart";
		
	}
	
	// ȸ�� ���� ���� ��
	@RequestMapping(value="modifyForm")
	public String modifyForm(HttpServletRequest req , Model model) {
		
		return "mypage/modifyForm";
		
	}
	
	// ȸ�� ���� ���� �� ������
	@RequestMapping(value="modifyView")
	public String modifyView(HttpServletRequest req , Model model) {
		
		service.modifyView(req, model);
		
		return "mypage/modifyView";
		
	}
	
	// ȸ�� ���� ���� ó�� ������
	@RequestMapping(value="modifyPro")
	public String modifyPro(HttpServletRequest req , Model model) {
		
		service.modifyPro(req, model);
		
		return "mypage/modifyPro";
		
	}

	// ȸ�� Ż�� ������
	@RequestMapping(value="deleteForm")
	public String deleteForm(HttpServletRequest req , Model model) {
		
		return "mypage/deleteForm";
		
	}	
	
	// ȸ�� Ż�� ó�� ������	
	@RequestMapping(value="deletePro")
	public String deletePro(HttpServletRequest req , Model model) {
		
		service.deletePro(req, model);
		
		return "mypage/deletePro";
		
	}	
		

}
