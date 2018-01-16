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
	
	// �ۼ��ϱ� Ŭ�� �� ù ������.
	// �̻��ϰ� initialInsert�� �ι� ȣ��Ǿ����...
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
	
	// �ۼ��ϱ� -> ������ ã�� -> ������ ã�� ���â �� �˻����.
	// value and return value will be changed to another name.
	@RequestMapping(value="ajaxSearchTest")
	public String ajaxSearchTest(HttpServletRequest req, Model model) {
		
		// ���â���� ���� �˻��  search��� �Ӽ��� �߰�. ���� �̰� ������ dao���� �˻������ ������ �� �� �ִ�.
		// Call a Service
		eService.searchLocaPro(req, model);
		
		
		return "story/ajaxSearchTest";
	}
	
	@RequestMapping(value="writeEpiloguePro")
	public String writeEpiloguePro(HttpServletRequest req, Model model) {
		
		return "story/writeEpiloguePro";
	}
	
	
	// �̾߱��ۼ� -> �ڽ������ϱ� ��ư Ŭ���ÿ� �Ʒ� �޼ҵ� ����.
	// ajax�� ���� ȣ��ȴ�.
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
