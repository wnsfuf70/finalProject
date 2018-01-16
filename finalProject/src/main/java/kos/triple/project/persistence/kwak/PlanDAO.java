package kos.triple.project.persistence.kwak;

import java.util.ArrayList;
import java.util.Map;

import kos.triple.project.vo.PlanVO;
import kos.triple.project.vo.WhereVO;

public interface PlanDAO {
	
	//plan추가
	public int insertPlan(PlanVO dto);
	
	//장소 갯수 구하기
	public int getLocationCnt();
	
	//장소 목록 조회
	public ArrayList<WhereVO> getLocationList();

}
