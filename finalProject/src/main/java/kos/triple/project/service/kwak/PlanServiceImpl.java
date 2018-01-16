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
	
	//plan넣기
	@Override
	public void insertPlan(HttpServletRequest req, Model model) {
		//id값 받아오기
		String id = (String)req.getSession().getAttribute("mem_id");
		String title = req.getParameter("planTitle");
		String content = req.getParameter("planContent");
		String startDate = req.getParameter("startDate");
		String endDate = req.getParameter("endDate");
		
		
		//바구니 생성
		PlanVO dto = new PlanVO();
		
		//planVO 바구니에 저장
		dto.setMem_Id(id);
		dto.setPlanTitle(title);
		dto.setPlanContent(content);
		
		//dao에서 insert처리
		int cnt = dao.insertPlan(dto);
		
		model.addAttribute("cnt"+cnt);
		System.out.println("insertPlancnt : "+cnt);
		
		model.addAttribute("planTitle",title);
	
	}

	//장소 불러오기
	@Override
	public void selectlocation(HttpServletRequest req, Model model) {
		
		int cnt = 0;	//장소 갯수 구하기
		
		//장소갯수 구하기
		cnt = dao.getLocationCnt();
		System.out.println("장소갯수 : "+cnt);
		
		if(cnt > 0) {
			//게시글 조회
			ArrayList<WhereVO> dtos = dao.getLocationList();
			model.addAttribute("dtol",dtos);
			System.out.println("장소dtos : "+dtos);
			
			model.addAttribute("cnt",cnt);
		}
	}
	
	//detailplan 넣기
	@Override
	public void insertDetailPlan(HttpServletRequest req, Model model) {
		
	}

	

}
