package kos.triple.project.persistence.joon;

import java.util.List;
import java.util.Map;

import kos.triple.project.vo.AirPlaneVO;
import kos.triple.project.vo.AirPortVO;
import kos.triple.project.vo.AirReservationSearchVO;
import kos.triple.project.vo.SeatPriceVO;

public interface AirReservationDAO {

	//����������������
	public List<AirPortVO> getAirPortInfo_proc();

	//�װ���������������
	public List<AirPlaneVO> getAirPlane_proc();

	//�װ��� ����ϱ�
	public int addAirPlane_proc(AirPlaneVO vo);

	//���� ������ �װ���ȣ ��������(�װ����Ͽ� �ʿ�)
	public int getLastAirPlaneNo_proc();

	//�װ��� �����ϱ�
	public int deleteAirPlane_proc(String airPlaneNo);

	//�װ��� ��� ��������
	public AirPlaneVO getAirPlaneOne_proc(String airPlaneNo);

	//�װ��� ���� �����ϱ�
	public int modifyAirPlane_proc(AirPlaneVO vo);

	//��ϵ��װ��� ��� ��������
	public List<AirPlaneVO> getAirPlaneAll_proc();

	//�ϳ��� ���� ������ �����´�.
	public AirPortVO getAirPortInfoOne_proc(String airPortName);
	
	//�Ѱ����� ��ġ������ �����´�.
	public AirPortVO getAirPortLocation_proc(String airPortNo);
	
	//�뼱�������Ѵ�.
	public int setRoute_proc(Map<String, Object> map);

	//�뼱����������Ѵ�.
	public void setRouteCancel_proc(String airPlaneNo);

	//�⺻������ �����´�
	public SeatPriceVO getSeatDefaultPrice_proc();
	
	//������ �����Ѵ�.
	public int setSeatPrice_proc(SeatPriceVO vo, String airPlaneNo);

	//�Էµ� �������� �����Ѵ�.
	public int setCustomSeatPrice_proc(SeatPriceVO vo, String airPlaneNo);

	//����� ��������� �����´�
	public SeatPriceVO getSeatPriceInfo_proc(String airPlaneNo);

	//�¼������� �����Ѵ�.
	public int modifySeatPrice_proc(SeatPriceVO vo);

	//�װ����� �˻��Ѵ�.
	public List<AirReservationSearchVO> airPlaneSearch(Map<String,Object> map);

	//�����ϱ��� ������ ��������� �����´�.
	public AirReservationSearchVO getReserVationInfo_proc(String airPlaneNo);

	
	//�Է��� �������� �����Ѵ�.
	
}

