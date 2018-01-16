package kos.triple.project.service.chul;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kos.triple.project.persistence.chul.EpilogueDAO;
import kos.triple.project.vo.Epilogue_courseVO;
import kos.triple.project.vo.WhereVO;

@Service
public class EpilogueServiceImpl implements EpilogueService{
	
	@Autowired
	EpilogueDAO eDao;
	
	@Override
	public void searchLocaPro(HttpServletRequest req, Model model) {
		
		Map<String, Object> map = new HashMap<String, Object>();	
		
		String search = req.getParameter("search").replace('"', '\0');
		search = search.trim();
		map.put("search", search);
		
		List<WhereVO> where = eDao.location(map);
		
		model.addAttribute("where", where);
	}

	@Override
	public void getNumOfEpilogue(HttpServletRequest req, Model model) {
		
		int getNumOfEpil = 0;
		
		getNumOfEpil = eDao.getNumOfEpil();
		
		++getNumOfEpil;
		
		model.addAttribute("epilogueNo", getNumOfEpil);
		
	}

	@Override
	public void initialInsert(HttpServletRequest req, Model model) {
		
		//String mem_id = req.getSession().getAttribute("mem_id");
		
		int epilogueNo = eDao.getNumOfEpil();
		
		++epilogueNo;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("mem_id", "guest");
		map.put("epilogueNo", epilogueNo);
		
		int isInsert = eDao.initialInsertPro(map);
		
		model.addAttribute("mem_id", "guest");
		model.addAttribute("epilogueNo", epilogueNo);
		model.addAttribute("isInsert", isInsert);
	}

	@Override
	public void insertEpilCourse(MultipartHttpServletRequest multi, Model model) {
		
		String epilogueNo = multi.getParameter("epilogueNo");
		String location_num = multi.getParameter("location_num");
		String content = multi.getParameter("content");
		String temp_dday	= multi.getParameter("dday");
		String uploadFile = (String) multi.getAttribute("uploadFile");
		
		epilogueNo = epilogueNo.replace('"', '\0');
		epilogueNo = epilogueNo.trim();
		
		location_num = location_num.replace('"', '\0');
		location_num = location_num.trim();
		
		temp_dday = temp_dday.replace('"', '\0');
		temp_dday = temp_dday.trim();
		
		/*uploadfile = uploadfile.replace('"', '\0');
		uploadfile = uploadfile.trim();*/
		
		java.sql.Date dday = java.sql.Date.valueOf(temp_dday);
		
		Map<String, Object> epil = new HashMap<String, Object>();
		
		epil.put("epilogueNo", epilogueNo);
		
		int visit_order = eDao.getNumOfEpilCourse(epil);
		
		++visit_order;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		map.put("epilogueNo", epilogueNo);
		map.put("location_num", location_num);
		map.put("content", content);
		map.put("dday", dday);
		map.put("visit_order", visit_order);
		map.put("uploadFile", uploadFile);
		
		int isInsert = eDao.insertEpilCoursePro(map);

		model.addAttribute("isInsert", isInsert);
		
		multi.setAttribute("epilogueNo", epilogueNo);
	}

	@Override
	public void getEpilCourse(MultipartHttpServletRequest req, Model model) {
		
		// 현재 후기에 추가된 epilogue_course 목록을 가져올거임.
		String epilogueNo = (String) req.getAttribute("epilogueNo");
		
		Map<String, Object> map1 = new HashMap<String, Object>();
		
		map1.put("epilogueNo", epilogueNo);
		
		//현재 후기에 추가한 코스의 갯수를 가져와야함. 왜냐하면 rownum의 최대값을 정해주기 위해서
		int numOfEpilCourse = eDao.getNumOfEpilCourse(map1);
	
		Map<String, Object> map2 = new HashMap<String, Object>();
		
		map2.put("epilogueNo", epilogueNo);
		map2.put("maxRow", numOfEpilCourse);
		
		List<Epilogue_courseVO> listOfEpilCourse = eDao.getListOfEpilCourse(map2);
		
		model.addAttribute("listOfEpilCourse", listOfEpilCourse);
	}
}
