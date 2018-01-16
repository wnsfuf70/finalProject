package kos.triple.project.persistence.hong;

import java.util.ArrayList;
import java.util.Map;

import kos.triple.project.vo.CarInfoVO;
import kos.triple.project.vo.RentCarVO;

public interface CarDAO {
	
	//렌트카추가
	public int rentAdd(RentCarVO vo);
	
	//렌트카 갯수 구하기
	public int getArticleCnt();
	
	//렌트카 조회
	public ArrayList<CarInfoVO> rentCar(Map<String,Object> map);
	
	//렌트카 전체 조회
	public ArrayList<CarInfoVO> rentCarAll(Map<String,Integer> map);
	
	//차량삭제	
	public int rentDelete(String car_num);
	
	//차량상세정보가져오기
	public CarInfoVO getViewDetail(String car_num);
}
