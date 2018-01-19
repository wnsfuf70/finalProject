package kos.triple.project.persistence.hong;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kos.triple.project.vo.CarInfoVO;
import kos.triple.project.vo.RentCarVO;
import kos.triple.project.vo.Reservation_CarVO;

@Repository
public class CarDAOImpl implements CarDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	//렌트카 추가
	@Override
	public int rentAdd(RentCarVO vo) {
		
		int cnt = 0;
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);
		cnt = dao.rentAdd(vo);
		
		return cnt;
	}
	
	//렌트카 갯수구하기
	@Override
	public int getArticleCnt() {
		int cnt = 0;
				
		CarDAO dao = sqlSession.getMapper(CarDAO.class);
		cnt = dao.getArticleCnt();
		
		return cnt;
	}
	
	//렌트카 갯수 구하기(차종별로)
	@Override
	public int getArticleCntKind(String car_kind) {
		
		int cnt = 0;
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);
		cnt = dao.getArticleCntKind(car_kind);
		
		return cnt;
	}

	//렌트카 조회
	@Override
	public ArrayList<CarInfoVO> rentCar(Map<String,Object> map) {
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);
		ArrayList<CarInfoVO> dtos = dao.rentCar(map);
		
		return dtos;
	}

	//렌트카 전체 조회
	@Override
	public ArrayList<CarInfoVO> rentCarAll(Map<String,Integer> map) {
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);
		
		ArrayList<CarInfoVO> dtos = dao.rentCarAll(map);
		
		return dtos;
	}
	
	//렌트카 삭제
	@Override
	public int rentDelete(String car_num) {
		
		int cnt = 0;
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);

		cnt = dao.rentDelete(car_num);
		
		return cnt;
	}

	//렌트카 상세정보
	public CarInfoVO getViewDetail(String car_num) {
		
		CarInfoVO vo = null;
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);

		vo = dao.getViewDetail(car_num);
		
		return vo;
	}

	//렌트카 예약
	@Override
	public int reservation_car(Reservation_CarVO vo) {
		
		int cnt = 0;
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);	
		cnt = dao.reservation_car(vo);
		dao.carMaineoseu(vo);
		
		return cnt;
	}

	//렌트예약 완료 - 차수량을 뺀다
	@Override
	public int carMaineoseu(Reservation_CarVO vo) {
		
		int cnt = 0;
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);
		cnt = dao.carMaineoseu(vo);
		
		return cnt;
	}

	//예약리스트 갯수 구하기
	@Override
	public int rentReservationCnt() {
		
		int cnt = 0;
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);
		cnt = dao.rentReservationCnt();
		
		return cnt;
	}

	//예약리스트 조회하기
	@Override
	public ArrayList<Reservation_CarVO> rentReservationList(Map<String, Integer> map) {
		
		CarDAO dao = sqlSession.getMapper(CarDAO.class);
		
		ArrayList<Reservation_CarVO> dtos = dao.rentReservationList(map);
		
		return dtos;
	}



}
