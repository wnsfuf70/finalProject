package kos.triple.project.service.joon;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface AirReservationService {

	//공항정보가져오기
	public void getAirPortInfo(HttpServletRequest req, Model model);

	//항공기 가져오기(항공기등록페이지 진입시) 
	public void getAirPlane(HttpServletRequest req, Model model);
	
	//항공기 등록
	public void addAirPlane(HttpServletRequest req);

	//항공기 삭제
	public void deleteAirPlane(HttpServletRequest req);

	//항공기 정보 가져오기
	public void getAirPlaneOne(HttpServletRequest req);

	//항공기 정보 수정하기
	public void modifyAirPlane(HttpServletRequest req);

	//항공기 모두 가져오기(운항정보 수정 진입시)
	public void getAirPlaneAll(HttpServletRequest req, Model model);

	//두 공항사이의 거리를 구한다.
	public void getMoveDistance(HttpServletRequest req);

	//비행기 경로를 설정한다.
	public void setRoute(HttpServletRequest req);

	//경로설정을 취소한다.
	public void setRouteCancel(HttpServletRequest req);

	//기본가격을 가져온다
	public void getSeatDefaultPrice(HttpServletRequest req, Model model);

	//기본가격으로 가격책정한다(운행정보수정)
	public void setSeatPrice(HttpServletRequest req);

	//입력된 가격으로 가격책정한다(운행정보수정)
	public void setCustomSeatPrice(HttpServletRequest req);

	//책정된 가격정보를 가져온다.
	public void getSeatPriceInfo(HttpServletRequest req);

	//책정된 가격정보를 수정한다.
	public void modifySeatPrice(HttpServletRequest req);

	//항공편을 조회한다.
	public void airPlaneSearch(HttpServletRequest req, Model model);
	
	//항공편 검색
	
	//항공예약
	
}
