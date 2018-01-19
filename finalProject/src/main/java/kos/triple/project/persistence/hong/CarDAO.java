package kos.triple.project.persistence.hong;

import java.util.ArrayList;
import java.util.Map;

import kos.triple.project.vo.CarInfoVO;
import kos.triple.project.vo.RentCarVO;
import kos.triple.project.vo.Reservation_CarVO;

public interface CarDAO {
	
	//렌트카추가
	public int rentAdd(RentCarVO vo);
	
	//렌트카 갯수 구하기
	public int getArticleCnt();
	
	//렌트카 갯수 구하기(차종별로)
	public int getArticleCntKind(String car_kind);
	
	//렌트카 조회
	public ArrayList<CarInfoVO> rentCar(Map<String,Object> map);
	
	//렌트카 전체 조회
	public ArrayList<CarInfoVO> rentCarAll(Map<String,Integer> map);
	
	//차량삭제	
	public int rentDelete(String car_num);
	
	//차량상세정보가져오기
	public CarInfoVO getViewDetail(String car_num);
	
	//렌트카 예약
	public int reservation_car(Reservation_CarVO vo);
	
	//렌트예약 완료 - 차수량을 뺀다
	public int carMaineoseu(Reservation_CarVO vo);
	
	//예약 리스트 갯수 구하기
	public int rentReservationCnt();
	
	//예약리스트 조회하기
	public ArrayList<Reservation_CarVO> rentReservationList(Map<String, Integer> map);
}
