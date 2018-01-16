package kos.triple.project.service.kwak;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface PlanService {
	
	//plan넣기
	public void insertPlan(HttpServletRequest req, Model model);
	
	//장소 불러오기
	public void selectlocation(HttpServletRequest req, Model model);
	
	//detailplan 넣기
	public void insertDetailPlan(HttpServletRequest req, Model model);
	
}
