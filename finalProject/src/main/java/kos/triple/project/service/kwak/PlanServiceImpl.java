package kos.triple.project.service.kwak;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kos.triple.project.persistence.kwak.PlanDAO;
import kos.triple.project.vo.PlanVO;
import kos.triple.project.vo.WhereVO;

@Service
public class PlanServiceImpl implements PlanService {

	@Autowired
	PlanDAO dao;
	
	//plan�ֱ�
	@Override
	public void insertPlan(HttpServletRequest req, Model model) {
		//id�� �޾ƿ���
		String id = (String)req.getSession().getAttribute("mem_id");
		String title = req.getParameter("planTitle");
		String content = req.getParameter("planContent");
		String startDate = req.getParameter("startDate");
		String endDate = req.getParameter("endDate");
		
		
		//�ٱ��� ����
		PlanVO dto = new PlanVO();
		
		//planVO �ٱ��Ͽ� ����
		dto.setMem_Id(id);
		dto.setPlanTitle(title);
		dto.setPlanContent(content);
		
		//dao���� insertó��
		int cnt = dao.insertPlan(dto);
		
		model.addAttribute("cnt"+cnt);
		System.out.println("insertPlancnt : "+cnt);
		
		model.addAttribute("planTitle",title);
	
	}

	//��� �ҷ�����
	@Override
	public void selectlocation(HttpServletRequest req, Model model) {
		
		int cnt = 0;	//��� ���� ���ϱ�
		
		//��Ұ��� ���ϱ�
		cnt = dao.getLocationCnt();
		System.out.println("��Ұ��� : "+cnt);
		
		if(cnt > 0) {
			//�Խñ� ��ȸ
			ArrayList<WhereVO> dtos = dao.getLocationList();
			model.addAttribute("dtol",dtos);
			System.out.println("���dtos : "+dtos);
			
			model.addAttribute("cnt",cnt);
		}
	}
	
	//detailplan �ֱ�
	@Override
	public void insertDetailPlan(HttpServletRequest req, Model model) {
		
	}

	

}
