package kos.triple.project.controller.hee;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class QnaController {
	
	/*@Autowired
	BoardService service;*/
	
	
	// �Խ��� ���
	@RequestMapping(value="qnaList")
	public String qnaList(HttpServletRequest req , Model model) {
		
		
		return "qna/qnaList";
	}
	
	
	
	
	// �� �ۼ��ϱ�
	@RequestMapping(value="qnaWrite")
	public String qnaWrite(HttpServletRequest req , Model model) {
		
		
		return "qna/qnaWrite";
	}
	

}
