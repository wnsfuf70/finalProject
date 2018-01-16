package kos.triple.project.controller.chul;

import java.io.File;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kos.triple.project.service.chul.EpilogueService;

@Controller
public class EpilogueController {
	
	@Autowired
	EpilogueService eService;
	
	// 작성하기 클릭 후 첫 페이지.
	// 이상하게 initialInsert가 두번 호출되어버림...
	@RequestMapping(value="EpilogueList")
	public String EpilogueList() {
		
		return "story/EpilogueList";
	}
	
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
	public String writeEpilCourse(MultipartHttpServletRequest multi, Model model) {
		
		
		String root = multi.getSession().getServletContext().getRealPath("/");
		System.out.println(root + "rootPath");
		/*String path = root + "resources/upload";*/
		
		String path="D:\\TeamProject\\finalProject\\finalProject\\src\\main\\webapp\\resources\\images\\story\\story";
		
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
				multi.setAttribute("uploadFile", newFileName);
				
				eService.insertEpilCourse(multi, model);
				eService.getEpilCourse(multi, model);
				/*if (Integer.parseInt((String)multi.getAttribute("isInsert")) != 0) {
					model.addAttribute("isInsert", 1);
				}else {
					model.addAttribute("isInsert", 0);
				}*/
					
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		/*return "getEpilCourse";*/
		return "story/writeEpilCourse";
	}
	
/*	@RequestMapping(value="getEpilCourse")
	public String getEpilCourse(MultipartHttpServletRequest req, Model model) {
		
		if (Integer.parseInt((String)req.getAttribute("isInsert"))!=0) {
			
		}else {
			model.addAttribute("isInsert", 0);
		}
		
	}
*/		
}
