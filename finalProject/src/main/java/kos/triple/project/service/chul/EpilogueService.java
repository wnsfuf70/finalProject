package kos.triple.project.service.chul;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface EpilogueService {
	
	public void searchLocaPro(HttpServletRequest req, Model model);
	
	public void getNumOfEpilogue(HttpServletRequest req, Model model);
	
	public void initialInsert(HttpServletRequest req, Model model);

	public void insertEpilCourse(HttpServletRequest req, Model model);
	
	public void getEpilCourse(HttpServletRequest req, Model model);
}
