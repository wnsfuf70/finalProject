package kos.triple.project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kos.triple.project.service.hong.CarService;
import kos.triple.project.service.joon.AirReservationService;

@Controller
public class WwwController {
	
	@Autowired
	AirReservationService air_service;
	
	@Autowired
	CarService car_service;
	
	
	//예약목록 시작 (항공,렌트,숙박 서비스 모두 탄다)
	@RequestMapping(value="myPageReservationStart")
	public String myPageStart(HttpServletRequest req , Model model){	
		
		//마이페이지에서 항공예약목록을 가져와서 렌트카 컨트롤러로 넘긴다...
		
		air_service.getMyPageReserAirPlane(req,model);
		car_service.rentReservationList(req, model);
		
		return "mypage/reservation/myReservation";
		
	}
	
	
	
	
	
	//항공 예약 리스트-게스트(ajax)
	@RequestMapping(value="getAirResList")
	public String getAirResList(HttpServletRequest req,  Model model){	
		System.out.println("getAirResList()");
		//마이페이지에서 항공예약목록을
		air_service.getMyPageReserAirPlane(req,model);

		return "mypage/reservation/air/airResListTable";
		
	}

	//렌트 예약 리스트-게스트(ajax)
	@RequestMapping(value="getCarResList")
	public String getCarResList(HttpServletRequest req, Model model) {
		
		car_service.rentReservationList(req, model);
		
		return "mypage/reservation/car/carResListTable";
	}

}
