package kos.triple.project.persistence.soon;

import java.util.ArrayList;
import java.util.Map;

import kos.triple.project.vo.WhereVO;

public interface WhereDAO {
	// 인기 장소
	public ArrayList<WhereVO> where_spot(Map<String, Object> map);
	
	// 장소 상세 보기
	public WhereVO detail_view(String location_num);
	
	// 좋아요
	public int like_score(String location_num);
	
	// 보통이에요
	public int normal_score(String location_num);
	
	// 싫어요
	public int bad_score(String location_num);
	
	// 검색
	public ArrayList<WhereVO> search(String search);

	///////////////////////////////// 관리자/////////////////////////////////
	// 장소 목록
	public ArrayList<WhereVO> where_list(Map<String, Integer> map); 
	
	// 장소 개수
	public int getCountCnt();
	
	// 장소 추가
	public int where_add(WhereVO dto);

	// 장소 확인
	public WhereVO where_check(String location_num);

	// 장소 삭제
	public int delete(String location_num);
	
	// 장소 수정
	public WhereVO modify(String location_num);
	
	// 장소 수정 - 2
	public int modify_pro(WhereVO dto);

	//장소 수정 - 이미지업
	public int updateImg(Map<String, Object> imgMap);
	
}
