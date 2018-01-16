package kos.triple.project.persistence.soon;

import java.util.ArrayList;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kos.triple.project.vo.WhereVO;

@Repository
public class WhereDAOImpl implements WhereDAO {

	@Inject
	SqlSession sqlSession;

	@Override
	public ArrayList<WhereVO> where_spot(Map<String, Object> map) {
		ArrayList<WhereVO> vos = null;

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		vos = dao.where_spot(map);

		return vos;
	}

	@Override
	public WhereVO detail_view(String location_num) {
		WhereVO vo = null;

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		vo = dao.detail_view(location_num);

		return vo;
	}

	@Override
	public int like_score(String location_num) {
		int cnt = 0;

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		cnt = dao.like_score(location_num);

		return cnt;
	}

	@Override
	public int normal_score(String location_num) {
		int cnt = 0;

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		cnt = dao.normal_score(location_num);

		return cnt;
	}

	@Override
	public int bad_score(String location_num) {
		int cnt = 0;

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		cnt = dao.bad_score(location_num);

		return cnt;
	}

	@Override
	public ArrayList<WhereVO> search(String search) {
		// TODO Auto-generated method stub
		ArrayList<WhereVO> vos = null; // 큰 바구니
		System.out.println("검색2 : " + search);

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		vos = dao.search(search);

		return vos;
	}

	///////////////////////////////// 관리자/////////////////////////////////
	// 장소 목록
	@Override
	public ArrayList<WhereVO> where_list(Map<String, Integer> map) {
		ArrayList<WhereVO> vos = null; // 큰 바구니

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		vos = dao.where_list(map);

		return vos;
	}

	// 장소 개수
	@Override
	public int getCountCnt() {
		// TODO Auto-generated method stub
		int cnt = 0;

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		cnt = dao.getCountCnt();

		return cnt;
	}

	// 장소 추가
	@Override
	public int where_add(WhereVO dto) {
		int cnt = 0;

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		cnt = dao.where_add(dto);

		System.out.println(cnt == 1 ? "추가 성공" : "추가 실패");
		return cnt;
	}

	// 장소 확인
	@Override
	public WhereVO where_check(String location_num) {
		WhereVO vo = null;

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		vo = dao.where_check(location_num);

		return vo;
	}

	// 장소 삭제
	@Override
	public int delete(String location_num) {
		int cnt = 0;

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		cnt = dao.delete(location_num);

		return cnt;
	}

	// 장소 수정
	@Override
	public WhereVO modify(String location_num) {
		// TODO Auto-generated method stub
		WhereVO vo = null;

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		vo = dao.modify(location_num);

		return vo;
	}

	@Override
	public int modify_pro(WhereVO dto) {
		int cnt = 0;

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		cnt = dao.modify_pro(dto);

		return cnt;
	}

	@Override
	public int updateImg(Map<String, Object> imgMap) {
		
		int cnt = 0;

		WhereDAO dao = sqlSession.getMapper(WhereDAO.class);
		cnt = dao.updateImg(imgMap);
		
		return cnt;
		
	}

}
