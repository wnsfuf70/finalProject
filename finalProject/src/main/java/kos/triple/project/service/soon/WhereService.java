package kos.triple.project.service.soon;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface WhereService {
	// 인기 장소
	public void Where_main(HttpServletRequest req, Model model);

	// 장소 상세 보기
	public void detail_view(HttpServletRequest req, Model model);

	// 장소 상세 보기
	public void detail_view_score(HttpServletRequest req, Model model);

	// 검색
	public void search(HttpServletRequest req, Model model);

	///////////////////////////////// 관리자/////////////////////////////////
	// 장소 목록
	public void Where_list(HttpServletRequest req, Model model);

	// 장소 추가
	public void Where_add(MultipartHttpServletRequest req, Model model);

	// 장소 확인
	public void Where_check(HttpServletRequest req, Model model);

	// 장소 삭제
	public void Where_delete(HttpServletRequest req, Model model);
	
	// 장소 수정 -1
	public void Where_modify(HttpServletRequest req, Model model);
	
	// 장소 수정 -2
	public void Where_modify_Pro(MultipartHttpServletRequest req, Model model);

}
