package kos.triple.project.service.hong;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface CarService {
	
	//렌트카 추가
	public void rentAdd(MultipartHttpServletRequest req, Model model);
	
	//렌트카 조회
	public void rentCar(HttpServletRequest req, Model model);
	
	//렌트카 삭제
	public void rentDelete(HttpServletRequest req, Model model);
	
	//렌트카 상세 조회
	public void getViewDetail(HttpServletRequest req, Model model);

}
