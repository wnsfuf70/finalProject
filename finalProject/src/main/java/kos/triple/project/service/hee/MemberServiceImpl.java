package kos.triple.project.service.hee;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kos.triple.project.persistence.hee.MemberDAO;
import kos.triple.project.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO dao;

	// ȸ�� ���� ó��
	@Override
	public void inputMemberPro(HttpServletRequest req, Model model) {

		MemberVO vo = new MemberVO();

		vo.setMem_id(req.getParameter("mem_id"));
		vo.setName(req.getParameter("name"));
		vo.setPassword(req.getParameter("password"));

		String email = req.getParameter("email");
		String[] tmp = email.split("@");

		vo.setEmail1(tmp[0]);
		vo.setEmail2(tmp[1]);

		vo.setSex(req.getParameter("sex"));

		String phone = req.getParameter("phone");
		String p1 = phone.substring(0, 3);
		String p2 = phone.substring(3, 7);
		String p3 = phone.substring(7);

		vo.setPhone1(p1);
		vo.setPhone2(p2);
		vo.setPhone3(p3);

		vo.setBirth(req.getParameter("birth"));
		vo.setGrade("�Ϲ�");
		vo.setFaceImg(""); // null
		vo.setIntroduce(""); // null

		System.out.println("id" + vo.getMem_id());
		System.out.println(vo.getName());

		System.out.println("pwd" + vo.getPassword());

		System.out.println(vo.getEmail1());
		System.out.println(vo.getEmail2());

		System.out.println(vo.getSex());

		System.out.println("p1" + vo.getPhone1());
		System.out.println(vo.getPhone2());
		System.out.println(vo.getPhone3());

		System.out.println(vo.getBirth());

		System.out.println(vo.getGrade());

		int cnt = dao.inputMemberPro(vo);

		model.addAttribute("cnt", cnt);
	}

	// ���̵� �ߺ� Ȯ��
	@Override
	public void confirmId(HttpServletRequest req, Model model) {
		int cnt = 0;
		String id = req.getParameter("id");
		System.out.println("idCheck() �� : " + id);
		
		cnt = dao.idCheck(id);
		
		req.setAttribute("cnt",Integer.toString(cnt) );
		
	}

	// �α��� ó��
	@Override
	public void loginPro(HttpServletRequest req, Model model) {

		String mem_id = req.getParameter("mem_id");  // userId
		String password = req.getParameter("password");// userPassowrd

		System.out.println("1 ���̵� : " + mem_id);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("password", password);

		System.out.println("2 ���̵� : " + map.get("mem_id"));

		int cnt = dao.loginPro(map);

		if (cnt == 1) {
			if (mem_id.equals("host")) {
				model.addAttribute("token", "admin");
			} else {
				model.addAttribute("token", "user");
			}
			req.getSession().setAttribute("mem_id", mem_id);
		}

		model.addAttribute("cnt", cnt);
	}

	// ȸ�� �� ���� ��������
	@Override
	public void getMemberInfo(HttpServletRequest req, Model model) {

		String mem_id = (String) req.getSession().getAttribute("mem_id");
		String password = req.getParameter("password"); // userPassword

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("password", password);

		int cnt = dao.loginPro(map);

		if (cnt == 1) {

			MemberVO vo = dao.getMemberInfo(mem_id);

			model.addAttribute("vo", vo);
		}

		model.addAttribute("cnt", cnt);
	}

	// ���̵� ��й�ȣ ã��
	@Override
	public void getIdAndPwd(HttpServletRequest req, Model model) {

		String name = req.getParameter("name");
		String email1 = req.getParameter("email1");
		String email2 = req.getParameter("email2");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("email1", email1);
		map.put("email2", email2);

		MemberVO vo = dao.getIdAndPwd(map);

		model.addAttribute("vo", vo);

	}

	// ȸ�� ���� ���� �� ������
	@Override
	public void modifyView(HttpServletRequest req, Model model) {
		
		String mem_id = (String)req.getSession().getAttribute("mem_id");
		String password = req.getParameter("password");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("password", password);
		
		int cnt = dao.loginPro(map);
		
		if(cnt == 1) {
			
			MemberVO vo = dao.getMemberInfo(mem_id);
			model.addAttribute("vo", vo);
		}
		
		model.addAttribute("cnt", cnt);
	}
	
	// ȸ�� ���� ���� ó��
	@Override
	public void modifyPro(HttpServletRequest req, Model model) {

		MemberVO vo = new MemberVO();
		
		// ���̵�
		String mem_id = (String)req.getSession().getAttribute("mem_id");
		vo.setMem_id(mem_id);
		
		// ��й�ȣ
		String password= req.getParameter("password");
		vo.setPassword(password);
		
		// �̸�
		String name= req.getParameter("name");
		vo.setName(name);
		
		// ��ȭ��ȣ
		String phone1 = req.getParameter("phone1");
		String phone2 = req.getParameter("phone2");
		String phone3 = req.getParameter("phone3");
		
		vo.setPhone1(phone1);
		vo.setPhone2(phone2);
		vo.setPhone3(phone3);
		
		
		// �̸���
		String email1 = req.getParameter("email1");
		String email2 = req.getParameter("email2");
		
		vo.setEmail1(email1);
		vo.setEmail2(email2);
		
		// ����
		String birth=req.getParameter("birth");
		vo.setBirth(birth);
		
		// �̹���
		String faceImg = req.getParameter("faceImg");
		vo.setFaceImg(faceImg);
		
		// ���
		String grade = req.getParameter("grade");
		vo.setGrade(grade);
		
		// �Ұ�
		String introduce = req.getParameter("introduce");
		vo.setIntroduce(introduce);
		
		int cnt = dao.updateMember(vo);
		
		model.addAttribute("cnt", cnt);
		
	}

	// ȸ�� Ż�� ó��
	@Override
	public void deletePro(HttpServletRequest req, Model model) {
		
		String mem_id = (String)req.getSession().getAttribute("mem_id");
		String password = req.getParameter("password");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("password", password);
		
		int selectCnt = dao.loginPro(map);
		int deleteCnt = 0;
		
		if(selectCnt == 1) {
			deleteCnt = dao.deleteMember(mem_id);
		}
		
		model.addAttribute("selectCnt", selectCnt);
		model.addAttribute("deleteCnt", deleteCnt);
		
	}

}
