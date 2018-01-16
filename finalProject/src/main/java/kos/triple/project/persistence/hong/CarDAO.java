package kos.triple.project.persistence.hong;

import java.util.ArrayList;
import java.util.Map;

import kos.triple.project.vo.CarInfoVO;
import kos.triple.project.vo.RentCarVO;

public interface CarDAO {
	
	//��Ʈī�߰�
	public int rentAdd(RentCarVO vo);
	
	//��Ʈī ���� ���ϱ�
	public int getArticleCnt();
	
	//��Ʈī ��ȸ
	public ArrayList<CarInfoVO> rentCar(Map<String,Object> map);
	
	//��Ʈī ��ü ��ȸ
	public ArrayList<CarInfoVO> rentCarAll(Map<String,Integer> map);
	
	//��������	
	public int rentDelete(String car_num);
	
	//������������������
	public CarInfoVO getViewDetail(String car_num);
}
