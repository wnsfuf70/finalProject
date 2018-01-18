package kos.triple.project.service.chul;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface EpilogueService {
	
	public void searchLocaPro(HttpServletRequest req, Model model);
	
	public void getNumOfEpilogue(HttpServletRequest req, Model model);
	
	public void initialInsert(HttpServletRequest req, Model model);

	public void insertEpilCourse(MultipartHttpServletRequest multi, Model model);
	
	public void getEpilCourse(MultipartHttpServletRequest req, Model model);
}
