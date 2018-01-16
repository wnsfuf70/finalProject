package kos.triple.project.persistence.kwak;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kos.triple.project.vo.PlanVO;
import kos.triple.project.vo.WhereVO;

@Repository
public class PlanDAOImpl implements PlanDAO {
	
	@Autowired
	private SqlSession sqlSession;

	//plan�߰�
	@Override
	public int insertPlan(PlanVO dto) {

		int cnt = 0;
		
		PlanDAO dao = sqlSession.getMapper(PlanDAO.class);
		cnt = dao.insertPlan(dto);
		System.out.println(cnt==1 ? "plan�߰� ����":"plan�߰� ����");
		
		return cnt;
	}

	//��� ���� ���ϱ�
	@Override
	public int getLocationCnt() {
		int cnt = 0;
		
		PlanDAO dao = sqlSession.getMapper(PlanDAO.class);
		cnt = dao.getLocationCnt();
		
		return cnt;
	}

	//��� ��� ��ȸ
	@Override
	public ArrayList<WhereVO> getLocationList() {
		
		ArrayList<WhereVO> dtos = null;
		
		PlanDAO dao = sqlSession.getMapper(PlanDAO.class);
		dtos = dao.getLocationList();
		
		return dtos;
	}
}
