package kos.triple.project.persistence.kwak;

import java.util.ArrayList;
import java.util.Map;

import kos.triple.project.vo.PlanVO;
import kos.triple.project.vo.WhereVO;

public interface PlanDAO {
	
	//plan�߰�
	public int insertPlan(PlanVO dto);
	
	//��� ���� ���ϱ�
	public int getLocationCnt();
	
	//��� ��� ��ȸ
	public ArrayList<WhereVO> getLocationList();

}
