package kos.triple.project.service.kwak;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface PlanService {
	
	//plan�ֱ�
	public void insertPlan(HttpServletRequest req, Model model);
	
	//��� �ҷ�����
	public void selectlocation(HttpServletRequest req, Model model);
	
	//detailplan �ֱ�
	public void insertDetailPlan(HttpServletRequest req, Model model);
	
}
