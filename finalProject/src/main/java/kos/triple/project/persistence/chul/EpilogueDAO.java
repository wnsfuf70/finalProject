package kos.triple.project.persistence.chul;

import java.util.List;
import java.util.Map;

import kos.triple.project.vo.Epilogue_courseVO;
import kos.triple.project.vo.WhereVO;

public interface EpilogueDAO {
	
	// 여행지 검색 모달에서 여행지 검색할때 쓰는 메소드.
	// location_name 을 기준으로 찾는다.
	public List<WhereVO> location(Map<String, Object> map);
	
	// 현재 epliogue (이야기) 에 작성된 글의 갯수를 구하는 작업.
	public int getNumOfEpil();
	
	// 이야기 작성에 들어오자마자 epilogue 테이블에 현(epilogueNo+1)와 현재 로그인 된 유저의 id를 삽입.
	// 나머지 내용들은 완전히 epilogue_course 작성이 끝나면 작성완료페이지에서
	// epilogue 테이블을 update하는 방식으로 완성해야함.
	public int initialInsertPro(Map<String, Object> map);
	
	// epilogue_course 테이블에 insert하는 작업.
	public int insertEpilCoursePro(Map<String, Object> map);
	
	// 현재 후기 (epilogueNo)에 대한 epilogue_course(코스글)의 갯수를 가져오는 메소드
	// 왜냐하면 rnum의 최대범위를 정해주기 위해서
	public int getNumOfEpilCourse(Map<String, Object> map1);
	
	// 현재 후기에 대한  epilogue_course의 목록을 가져오는 메소드
	public List<Epilogue_courseVO> getListOfEpilCourse(Map<String, Object> map2);
	
	// 현재 이야기에 몇 개의 코스가 있는지 가져오는 메소드. 코스저장시 방문순서를 정해주기 위해서
	public int getNumOfVisitOrder(Map<String, Object> map);
	
	// 작성한 여행기를 epilogue 에 insert 하는 작업.
}
