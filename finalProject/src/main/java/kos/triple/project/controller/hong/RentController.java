package kos.triple.project.controller.hong;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import kos.triple.project.service.hong.CarServiceImpl;
import kos.triple.project.vo.AirReservationDetailVO;
import kos.triple.project.vo.CarInfoVO;

@Controller
public class RentController {
	
	@Autowired
	CarServiceImpl service;
	
	private Logger log = Logger.getLogger(this.getClass());
	
	//렌트카 등록 페이지
	@RequestMapping(value="rentAddPage")
	public String rentAddPage(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rentAdd() ===============================");
		
		return "main/adminMain/rentCar/rentAddPage";
	}
	
	//렌트카 등록  처리
	@RequestMapping(value="rentAdd")
	public String rentAdd(MultipartHttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rentAdd() ===============================");
		service.rentAdd(req, model);
		
		return "pro/hongPro/rentAddPro";
	}
	


	//렌트카삭제 페이지
	@RequestMapping(value="rentDeletePage")
	public String rentDeletePage(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rentDelete() ===============================");
		
		
		return "main/adminMain/rentCar/rentDeletePage";
	}
	
	//렌트카삭제 처리
	@RequestMapping(value="rentDelete")
	public String rentDelete(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rentDelete() ===============================");
		
		service.rentDelete(req, model);
		
		return "pro/hongPro/rentDeletePro";
	}
	
	//렌트카 예약 리스트
	@RequestMapping(value="rentReservationList")
	public String rentReservationList(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rentReservationList() ===============================");
		service.rentReservationList(req, model);
		
		return "main/adminMain/rentCar/rentReservationList";
	}
	
	//렌트카 예약 취소 리스트
	@RequestMapping(value="rentReservationCancelList")
	public String rentReservationCancelList(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rentDelete() ===============================");
				
		return "main/adminMain/rentCar/rentReservationCancelList";
	}
	
	//렌트카 조회 페이지 - 게스트
	@RequestMapping(value="rentReservation")
	public String rentReservation(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rent() ===============================");
		
		return "reservation/car/rent";
	}
	
	//렌트카목록 페이지 - 게스트
	@RequestMapping(value="rentList")
	public String carList(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : rentList() ===============================");
		service.rentCar(req, model);
		
		
		return "reservation/car/rentList";

	}	
	
	//렌트카목록 페이지 - 차량상세정보
	@RequestMapping(value="getViewDetail")
	public @ResponseBody CarInfoVO getViewDetail(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : getViewDetail() ===============================");
		System.out.println("넘겨받은 자동차번호 : " + req.getParameter("car_num"));
		service.getViewDetail(req,model);
		
		CarInfoVO vo = (CarInfoVO) req.getAttribute("vo");
		
		return vo;

	}	
	
	//렌트카 예약하기
	@RequestMapping(value="requestReservation")
	public String requestReservation(HttpServletRequest req, Model model) {
		
		log.debug("=============================== Method Name : requestReservation() ===============================");
		service.rentReservation(req, model);
		
		
		return "pro/hongPro/rentReservationPro";

	}	
	

}
