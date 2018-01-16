package kos.triple.project.service.hee;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kos.triple.project.vo.MemberVO;

public interface MemberService {

	// ȸ�� ���� ó��
	public void inputMemberPro(HttpServletRequest req, Model model);
	
	// ���̵� �ߺ� Ȯ��
	public void confirmId(HttpServletRequest req, Model model);
	
	// �α��� ó��
	public void loginPro(HttpServletRequest req, Model model);
	
	// ȸ�� �� ���� ��������
	public void getMemberInfo(HttpServletRequest req, Model model);
	
	// ���̵� ��й�ȣ ã��
	public void getIdAndPwd(HttpServletRequest req, Model model);
	
	// ȸ�� ���� ���� �� ������
	public void modifyView(HttpServletRequest req, Model model);
	
	// ȸ�� ���� ���� ó��
	public void modifyPro(HttpServletRequest req, Model model);
	
	// ȸ�� Ż�� ó��
	public void deletePro(HttpServletRequest req, Model model);
}
