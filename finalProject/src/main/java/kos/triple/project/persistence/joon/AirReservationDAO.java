package kos.triple.project.persistence.joon;

import java.util.List;
import java.util.Map;

import kos.triple.project.vo.AirPlaneVO;
import kos.triple.project.vo.AirPortVO;
import kos.triple.project.vo.AirReservationDetailVO;
import kos.triple.project.vo.AirReservationSearchVO;
import kos.triple.project.vo.RouteVO;
import kos.triple.project.vo.SeatPriceVO;

public interface AirReservationDAO {

	//공항정보가져오기
	public List<AirPortVO> getAirPortInfo_proc();

	//항공기정보가져오기
	public List<AirPlaneVO> getAirPlane_proc();

	//항공기 등록하기
	public int addAirPlane_proc(AirPlaneVO vo);

	//제일 마지막 항공번호 가져오기(항공기등록에 필요)
	public int getLastAirPlaneNo_proc();

	//항공기 삭제하기
	public int deleteAirPlane_proc(String airPlaneNo);

	//항공기 닷건 가져오기
	public AirPlaneVO getAirPlaneOne_proc(String airPlaneNo);

	//항공기 정보 수정하기
	public int modifyAirPlane_proc(AirPlaneVO vo);

	//등록된항공기 모두 가져오기
	public List<AirPlaneVO> getAirPlaneAll_proc();

	//하나의 공항 정보를 가져온다.
	public AirPortVO getAirPortInfoOne_proc(String airPortName);
	
	//한공항의 위치정보를 가져온다.
	public AirPortVO getAirPortLocation_proc(String airPortNo);
	
	//노선배정을한다.
	public int setRoute_proc(Map<String, Object> map);

	//노선배정을취소한다.
	public void setRouteCancel_proc(String airPlaneNo);

	//기본가격을 가져온다
	public SeatPriceVO getSeatDefaultPrice_proc();
	
	//가격을 설정한다.
	public int setSeatPrice_proc(SeatPriceVO vo, String airPlaneNo);

	//입력된 가격으로 설정한다.
	public int setCustomSeatPrice_proc(SeatPriceVO vo, String airPlaneNo);

	//비행기 요금정보를 가져온다
	public SeatPriceVO getSeatPriceInfo_proc(String airPlaneNo);

	//좌석가격을 수정한다.
	public int modifySeatPrice_proc(SeatPriceVO vo);

	//항공편을 검색한다.
	public List<AirReservationSearchVO> airPlaneSearch(Map<String,Object> map);

	//에약하기전 보여줄 모든정보를 가져온다.
	public AirReservationSearchVO getReserVationInfo_proc(String airPlaneNo);

	//예약을 한다.
	public int airResProc_proc(AirReservationDetailVO vo);

	//남은 좌석수를 업데이트한다.
	public int modifyAirPlane_remainSeat_proc(Map<String, Object> map);

	//남은 좌석수를 가져온다.
	public AirPlaneVO getRemainSeat_proc(String airPlaneNo);

	//항공의 노선번호를 가져온다.
	public String getRouteNo_proc(String airPlaneNo);

	//노선의 정보를 가져온다.
	public RouteVO getRouteInfo_proc(String routeNo);

	//항공예약목록을 가져온다.
	public List<AirReservationDetailVO> getMyPageReserAirPlane_proc(Map<String , Object> map);

	//select 결과의 총개수를 구해온다.
	public int getListCount(Map<String,Object> map);
	
	//입력한 가격으로 설정한다.
	
}