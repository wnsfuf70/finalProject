package kos.triple.project.controller.chul;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kos.triple.project.service.chul.EpilogueService;

@Controller
public class EpilogueController {
	
	@Autowired
	EpilogueService eService;
	
	// 작성하기 클릭 후 첫 페이지.
	// 이상하게 initialInsert가 두번 호출되어버림...
	@RequestMapping(value="story_write_myTourStory")
	public String story_write_myTourStory(HttpServletRequest req, Model model) {
		
		/*eService.getNumOfEpilogue(req, model);*/
		eService.initialInsert(req, model);
		
		return "story/story_write_myTourStory";
	}
	
	// 작성하기 -> 여행지 찾기 -> 여행지 찾기 모달창 및 검색결과.
	// value and return value will be changed to another name.
	@RequestMapping(value="ajaxSearchTest")
	public String ajaxSearchTest(HttpServletRequest req, Model model) {
		
		// 모달창에서 받은 검색어를  search라는 속성에 추가. 이제 이걸 가지고 dao에서 검색결과를 가지고 올 수 있다.
		// Call a Service
		eService.searchLocaPro(req, model);
		
		
		return "story/ajaxSearchTest";
	}
	
	@RequestMapping(value="writeEpiloguePro")
	public String writeEpiloguePro(HttpServletRequest req, Model model) {
		
		return "story/writeEpiloguePro";
	}
	
	
	// 이야기작성 -> 코스저장하기 버튼 클릭시에 아래 메소드 실행.
	// ajax에 의해 호출된다.
	@RequestMapping(value="writeEpilCourse")
	public String writeEpilCourse(HttpServletRequest req, Model model) {
		
		//MultipartHttpServletRequest multi
		/*String root = multi.getSession().getServletContext().getRealPath("/");
		String path = root + "resources/upload";
		
		String newFileName="";
		
		File dir = new File(path);
		
		if (!dir.isDirectory()) {
			dir.mkdir();
		}
		
		Iterator<String> files = multi.getFileNames();
		
		while (files.hasNext()) {
			String uploadFile = files.next();
			
			MultipartFile mFile = multi.getFile(uploadFile);
			String fileName = mFile.getOriginalFilename();
			System.out.println("real file name is : " + fileName);
			newFileName = System.currentTimeMillis() + "." + fileName.substring(fileName.lastIndexOf(".")+1);
			
			try {
				mFile.transferTo(new File(path+newFileName));
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		*/
		eService.insertEpilCourse(req, model);
		// 현재  epilogueNo에 대해서만 가져오면 되지 않을까?????
		eService.getEpilCourse(req, model);
		
		return "story/writeEpilCourse";
	}
		
}
