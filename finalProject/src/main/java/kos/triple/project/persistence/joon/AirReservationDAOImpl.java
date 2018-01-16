package kos.triple.project.persistence.joon;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kos.triple.project.vo.AirPlaneVO;
import kos.triple.project.vo.AirPortVO;
import kos.triple.project.vo.AirReservationSearchVO;
import kos.triple.project.vo.SeatPriceVO;

@Repository
public class AirReservationDAOImpl implements AirReservationDAO{

	@Inject
	SqlSession sqlSession;
	private final String nameSpace = "kos.triple.project.persistence.joon.AirReservationDAO";
	
	@Override
	public List<AirPortVO> getAirPortInfo_proc() {
		
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		
		List<AirPortVO> voList = dao.getAirPortInfo_proc();
	
		return voList;
	}

	@Override
	public List<AirPlaneVO> getAirPlane_proc() {
		
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		
		List<AirPlaneVO> voList = dao.getAirPlane_proc();
		
		return voList;
	}

	@Override
	public int addAirPlane_proc(AirPlaneVO vo) {
		
		int cnt = 0;
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		
		cnt = dao.addAirPlane_proc(vo);
		
		return cnt;
	}

	@Override
	public int getLastAirPlaneNo_proc() {
		int cnt = 0;
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		cnt = dao.getLastAirPlaneNo_proc();
		return cnt;
	}

	@Override
	public int deleteAirPlane_proc(String airPlaneNo) {
		
		int cnt = 0;
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		cnt = dao.deleteAirPlane_proc(airPlaneNo);
		System.out.println("삭제가능여부" + cnt);
		return cnt;
	}

	@Override
	public AirPlaneVO getAirPlaneOne_proc(String airPlaneNo) {
		
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		AirPlaneVO vo = dao.getAirPlaneOne_proc(airPlaneNo);
		
		return vo;
	}

	@Override
	public int modifyAirPlane_proc(AirPlaneVO vo) {
		
		int cnt = 0;
			
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		cnt = dao.modifyAirPlane_proc(vo);
		
		return cnt;
	}

	@Override
	public List<AirPlaneVO> getAirPlaneAll_proc() {
		
		List<AirPlaneVO> voList;
		
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		voList = dao.getAirPlaneAll_proc();
		return voList;
	}

	@Override
	public AirPortVO getAirPortInfoOne_proc(String airPortName) {
		
		AirPortVO vo;
		
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		vo = dao.getAirPortInfoOne_proc(airPortName);
		
		return vo;
	}

	@Override
	public int setRoute_proc(Map<String, Object> map) {
		
		int cnt = 0 ;
		
		cnt = sqlSession.insert(nameSpace+".setRoute_proc_step1",map);
		String no = sqlSession.selectOne(nameSpace+".getLastRouteNo");
		String routeNo="R"+no;
		map.put("routeNo",routeNo);
		cnt = sqlSession.update(nameSpace+".setRoute_proc_step2",map);
		
		return cnt;
	
	}

	@Override
	public void setRouteCancel_proc(String airPlaneNo) {
		int cnt = 0;
		//배정을취소할 노선코드를 가져온다.
		String routeNo = sqlSession.selectOne(nameSpace+".setRouteCancel_proc_step1",airPlaneNo);
		
		//항공기의 노선번호를 null 로 변경한다.
		cnt = sqlSession.update(nameSpace+".setRouteCancel_proc_step2",airPlaneNo);
		
		//route테이블의 노선을 지운다.
		cnt = sqlSession.delete(nameSpace+".setRouteCancel_proc_step3",routeNo);
	}

	@Override
	public SeatPriceVO getSeatDefaultPrice_proc() {
		
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		SeatPriceVO vo = dao.getSeatDefaultPrice_proc();
		return vo;
	}

	@Override
	public int setSeatPrice_proc(SeatPriceVO vo, String airPlaneNo) {
		//기본 가격을 업데이트한다.
		sqlSession.update(nameSpace+".setSeatPrice_proc_step1",vo);
		//비행기에 기본가격을 셋한다. 코드번호 SEATCODE_1
		sqlSession.update(nameSpace+".setSeatPrice_proc_step2",airPlaneNo);
		return 0;
	}

	@Override
	public int setCustomSeatPrice_proc(SeatPriceVO vo, String airPlaneNo) {
		
		int cnt = 0;
		
		sqlSession.insert(nameSpace+".setCustomSeatPrice_proc_step1",vo);
		
		int sequence = sqlSession.selectOne(nameSpace+".setCustomSeatPrice_proc_step2");
		String seatPriceCode = vo.getSeatPriceCode()+Integer.toString(sequence);
		
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("seatPriceCode",seatPriceCode);
		map.put("airPlaneNo",airPlaneNo);
		
		sqlSession.selectOne(nameSpace+".setCustomSeatPrice_proc_step3",map);
		
		return cnt;
	}

	@Override
	public SeatPriceVO getSeatPriceInfo_proc(String airPlaneNo) {

		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		SeatPriceVO vo = dao.getSeatPriceInfo_proc(airPlaneNo);
		return vo;
	}

	@Override
	public int modifySeatPrice_proc(SeatPriceVO vo) {
		int cnt = 0;
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		cnt = dao.modifySeatPrice_proc(vo);
		return cnt;
	}

	@Override
	public List<AirReservationSearchVO> airPlaneSearch(Map<String, Object> map) {

		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		List<AirReservationSearchVO> vo = dao.airPlaneSearch(map);
		return vo;
	}

	@Override
	public AirPortVO getAirPortLocation_proc(String airPortNo) {
		
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		AirPortVO vo = dao.getAirPortLocation_proc(airPortNo);
		
		return vo;
	}

	@Override
	public AirReservationSearchVO getReserVationInfo_proc(String airPlaneNo) {
		
		AirReservationSearchVO vo;
		AirReservationDAO dao = sqlSession.getMapper(AirReservationDAO.class);
		vo = dao.getReserVationInfo_proc(airPlaneNo);
		return vo;
	}

	
	
	
}

