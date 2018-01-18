package kos.triple.project.controller.joon;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import kos.triple.project.service.joon.AirReservationService;
import kos.triple.project.vo.AirPlaneVO;
import kos.triple.project.vo.AirReservationDetailVO;
import kos.triple.project.vo.SeatPriceVO;

@Controller
public class AirReservationController {
	
	@Autowired
	AirReservationService service;
	
	
	@RequestMapping(value="myPageReservationStart")
	public String myPageStart(HttpServletRequest req, Model model){	
		
		//마이페이지에서 항공예약목록을
		service.getMyPageReserAirPlane(req);
		

		return "mypage/reservation/myReservation";
		
	}	
	/* 클라이언트 페이지 */
	
	@RequestMapping(value="airReservation")
	public String airReservation(HttpServletRequest req, Model model) {
		
		service.getAirPortInfo(req,model);
		
		return "reservation/air/airReservationStart";
	}
	
	@RequestMapping(value="airPlaneSearch")
	public String airPlaneSearch(HttpServletRequest req ,Model model) {
		System.out.println("airPlaneSearch() ");
		
		/*model.addAttribute(req.getParameter("seatLevel"));
		model.addAttribute(req.getParameter("startAirport_Key"));
		model.addAttribute(req.getParameter("endAirport_Key"));
		model.addAttribute(req.getParameter("s_fromDate"));
		model.addAttribute(req.getParameter("s_toDate"));*/
		
		System.out.println(req.getParameter("seatLevel"));
		System.out.println(req.getParameter("startAirport_Key"));
		System.out.println(req.getParameter("endAirport_Key"));
		System.out.println(req.getParameter("s_fromDate"));
		System.out.println(req.getParameter("s_toDate"));
		service.airPlaneSearch(req,model);
		
		
		return "reservation/air/searchResult";
	}
	
	//티켓구매버튼누른후 이동된페이지
	@RequestMapping(value="airTiketBuyPageStep1")
	public String airTiketBuyPage(HttpServletRequest req ,Model model) {
		
		System.out.println("airTiketBuyPageStep1() ");
		
		service.getReserVationInfo(req,model);
		
		return "reservation/air/airTiketBuyPageStep1";
		//return "reservation/air/airTiketBuyPageStep1";
	}
	
	
	//티켓구매버튼누른후 이동된페이지
	@RequestMapping(value="airReservating")
	public String airReservating(HttpServletRequest req ,Model model) {
		
		System.out.println("airReservating() ");
		
		String airPlaneNo = req.getParameter("airPlaneNo");
		String startLocation = req.getParameter("startLocation");
		String endLocation = req.getParameter("endLocation");
		
		String price = req.getParameter("price");
		
		String adult = req.getParameter("adult");
		String student = req.getParameter("student");
		String baby = req.getParameter("baby");
		
		String seatLevel_adult = req.getParameter("seatLevel_adult");
		String seatLevel_student = req.getParameter("seatLevel_student");
		String seatLevel_baby = req.getParameter("seatLevel_baby");
		String startTime = req.getParameter("startTime");
		String endTime = req.getParameter("endTime");
		
		AirReservationDetailVO vo = new AirReservationDetailVO();
		
		vo.setAirPlaneNo(airPlaneNo);
		vo.setStartLocation(startLocation);
		vo.setEndLocation(endLocation);
		
		vo.setPrice(Integer.parseInt(price));
		
		vo.setAdult(Integer.parseInt(adult));
		vo.setStudent(Integer.parseInt(student));
		vo.setBaby(Integer.parseInt(baby));
		
		vo.setSeatLevel_adult(seatLevel_adult);
		vo.setSeatLevel_student(seatLevel_student);
		vo.setSeatLevel_baby(seatLevel_baby);
		
		model.addAttribute("vo",vo);
		model.addAttribute("startTime",startTime);
		model.addAttribute("endTime",endTime);
		
		return "reservation/air/airTiketBuyPageStep2";
	}
	
	
	//결제하기 버튼 클릭 -> 결제완료
	@RequestMapping(value="airResProc")
	public String airResProc(HttpServletRequest req ,Model model) {
	
		service.airResProc(req,model);
		
		return "reservation/air/airTiketBuyPageStep3";
	}
	
	//남은 좌석을 가져온다.
	@RequestMapping(value="getRemainSeat")
	public @ResponseBody AirPlaneVO getRemainSeat(HttpServletRequest req) {
	
		AirPlaneVO vo = null;
		
		service.getRemainSeat(req);
		
		vo = (AirPlaneVO)req.getAttribute("vo");
		System.out.println("---------------------");
		System.out.println(vo.getAirPlaneNo());
		System.out.println(vo.getNomal());
		System.out.println(vo.getHighClass());
		System.out.println(vo.getPremium());
		System.out.println("---------------------");
		
		return vo;
	}
	
	
	/* 클라이언트 페이지 */
	
	/* 관리자페이지 */
	
	//항공예약목록
	@RequestMapping(value="airReservationList")
	public String airReservationList() {
		System.out.println("airReservationList()");
		return "main/adminMain/airPlane/airReservationList";
	}
	
	//항공예약취소목록
	@RequestMapping(value="airReservationCancelList")
	public String airReservationCancelList() {
		System.out.println("airReservationCancelList()");
		return "main/adminMain/airPlane/airReservationCancelList";
	}		
	
	//항공노선추가
	@RequestMapping(value="airPlaneAdd")
	public String airPlaneAdd(HttpServletRequest req, Model model) {
		System.out.println("airPlaneAdd()");
		
		service.getAirPortInfo(req,model);
		service.getAirPlane(req,model);
		
		return "main/adminMain/airPlane/airPlaneAdd";
	}		
	
	//항공운행정보수정
	@RequestMapping(value="airOperationChange")
	public String airOperationChange(HttpServletRequest req , Model model) {
		System.out.println("airOperationChange()");
		
		service.getAirPlaneAll(req,model);
		service.getAirPortInfo(req,model);
		service.getSeatDefaultPrice(req,model);
		return "main/adminMain/airPlane/airOperationChange";
	}		
	
	//두 공항사이의 거리를 구함
	@RequestMapping(value="getMoveDistance")
	public @ResponseBody String getMoveDistance(HttpServletRequest req) {
		System.out.println("getMoveDistance()");
		
		service.getMoveDistance(req);
		
		String result = (String)req.getAttribute("distance");
		return result;
	}
	
	//경로를 설정함
	@RequestMapping(value="setRoute")
	public ModelAndView setRoute(HttpServletRequest req , ModelAndView mav) {
		System.out.println("setRoute() ");
		
		service.setRoute(req);
		
		RedirectView redirectView = new RedirectView("airOperationChange");
		redirectView.setContextRelative(true);

		mav.setView(redirectView);
		return mav;
	}
	
	//경로설정을 취소함
	@RequestMapping(value="setRouteCancel")
	public ModelAndView setRouteCancel(HttpServletRequest req , ModelAndView mav) {
		System.out.println("setRouteCancel() ");
		
		service.setRouteCancel(req);
		
		RedirectView redirectView = new RedirectView("airOperationChange");
		redirectView.setContextRelative(true);

		mav.setView(redirectView);
		return mav;
	}
	
	//기본가격으로설정(운행정보수정)
	@RequestMapping(value="setSeatPrice")
	public ModelAndView setSeatPrice(HttpServletRequest req , ModelAndView mav) {
		System.out.println("setSeatPrice() ");
		
		service.setSeatPrice(req);
		
		RedirectView redirectView = new RedirectView("airOperationChange");
		redirectView.setContextRelative(true);

		mav.setView(redirectView);
		return mav;
	}
	
	//입력한가격으로책정
	@RequestMapping(value="setCustomSeatPrice")
	public ModelAndView setCustomSeatPrice(HttpServletRequest req , ModelAndView mav) {
		System.out.println("setCustomSeatPrice() ");
		
		service.setCustomSeatPrice(req);
		
		RedirectView redirectView = new RedirectView("airOperationChange");
		redirectView.setContextRelative(true);

		mav.setView(redirectView);
		return mav;
	}
	
	//책정된 가격 상세정보 가져오기
	@RequestMapping(value="getSeatPriceInfo")
	public @ResponseBody SeatPriceVO getSeatPriceInfo(HttpServletRequest req) {
		System.out.println("getSeatPriceInfo() ");
		
		service.getSeatPriceInfo(req);
		
		SeatPriceVO vo = (SeatPriceVO)req.getAttribute("seatPriceVO");
		return vo;
	}
	
	//책정된커스텀가격 수정하기
	@RequestMapping(value="modifySeatPrice")
	public ModelAndView modifySeatPrice(HttpServletRequest req , ModelAndView mav) {
		System.out.println("modifySeatPrice() ");
		
		service.modifySeatPrice(req);
		
		RedirectView redirectView = new RedirectView("airOperationChange");
		redirectView.setContextRelative(true);

		mav.setView(redirectView);
		return mav;
	}
	
	
	//공항정보가져오기
	@RequestMapping(value="getAirPortInfo")
	public String getAirPortInfo(HttpServletRequest req , Model model) {
		System.out.println("getAirPortInfo()");
		service.getAirPortInfo(req,model);
		return "main/adminMain/airPlane/airOperationChange";
	}		
	
	//항공기추가
	@RequestMapping(value="addAirPlane",produces = "application/text; charset=utf8")
	public @ResponseBody String addAirPlane(HttpServletRequest req) {
		
		System.out.println("addAirPlane() ");
		
		service.addAirPlane(req);
		
		String result = (String)req.getAttribute("result");
		return result;
	}
	
	//항공기삭제
	@RequestMapping(value="deleteAirplane")
	public ModelAndView deleteAirplane(HttpServletRequest req , ModelAndView mav) {
		
		System.out.println("deleteAirplane() ");
		
		
		service.deleteAirPlane(req);
		
		RedirectView redirectView = new RedirectView("airPlaneAdd");
		redirectView.setContextRelative(true);

		mav.setView(redirectView);
		return mav;
	}
	
	//항공기정보수정(항공기정보가져오기)
	@RequestMapping(value="modifyAirPlaneShow")
	@ResponseBody public AirPlaneVO modifyAirPlaneShow(HttpServletRequest req) {
		System.out.println("modifyAirPlaneShow() ");
		
		service.getAirPlaneOne(req);

		AirPlaneVO vo = (AirPlaneVO)req.getAttribute("airPlane");
		
		return vo;
	}
	
	//항공기정보수정(항공기수정하기)
	@RequestMapping(value="modifyAirPlane")
	public ModelAndView modifyAirPlane(HttpServletRequest req , ModelAndView mav) {
		System.out.println("modifyAirPlane() ");
		
		service.modifyAirPlane(req);
		
		RedirectView redirectView = new RedirectView("airPlaneAdd");
		redirectView.setContextRelative(true);

		mav.setView(redirectView);
		return mav;
	}
	
	
	/* 관리자페이지 */
	
}
