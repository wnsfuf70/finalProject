package kos.triple.project.persistence.hong;

import java.util.ArrayList;
import java.util.Map;

import kos.triple.project.vo.CarInfoVO;
import kos.triple.project.vo.RentCarVO;
import kos.triple.project.vo.Reservation_CarVO;

public interface CarDAO {
	
	//��Ʈī�߰�
	public int rentAdd(RentCarVO vo);
	
	//��Ʈī ���� ���ϱ�
	public int getArticleCnt();
	
	//��Ʈī ���� ���ϱ�(��������)
	public int getArticleCntKind(String car_kind);
	
	//��Ʈī ��ȸ
	public ArrayList<CarInfoVO> rentCar(Map<String,Object> map);
	
	//��Ʈī ��ü ��ȸ
	public ArrayList<CarInfoVO> rentCarAll(Map<String,Integer> map);
	
	//��������	
	public int rentDelete(String car_num);
	
	//������������������
	public CarInfoVO getViewDetail(String car_num);
	
	//��Ʈī ����
	public int reservation_car(Reservation_CarVO vo);
	
	//��Ʈ���� �Ϸ� - �������� ����
	public int carMaineoseu(Reservation_CarVO vo);
	
	//���� ����Ʈ ���� ���ϱ�
	public int rentReservationCnt();
	
	//���ฮ��Ʈ ��ȸ�ϱ�
	public ArrayList<Reservation_CarVO> rentReservationList(Map<String, Integer> map);
}
