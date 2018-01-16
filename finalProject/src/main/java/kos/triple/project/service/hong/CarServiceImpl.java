package kos.triple.project.service.hong;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kos.triple.project.etc.PageCalculator;
import kos.triple.project.persistence.hong.CarDAOImpl;
import kos.triple.project.vo.CarInfoVO;
import kos.triple.project.vo.RentCarVO;

@Service
public class CarServiceImpl implements CarService{
	
	@Autowired
	CarDAOImpl dao;

	//렌트카 추가
	@Override
	public void rentAdd(MultipartHttpServletRequest req, Model model) {
		
		MultipartFile file = req.getFile("car_img");
		
		int maxSize = 10 * 1024 * 1024;
		
		String saveDir = req.getRealPath("/resources/images/car/");
		
		String realDir = "C:\\Dev\\TeamGit\\finalProject\\finalProject\\src\\main\\webapp\\resources\\images\\car\\";
		
		String encType = "UTF-8";
		
		try {
			file.transferTo(new File(saveDir+file.getOriginalFilename()));
            
            FileInputStream fis = new FileInputStream(saveDir + file.getOriginalFilename());
            FileOutputStream fos = new FileOutputStream(realDir + file.getOriginalFilename());
            
            if(new File(realDir + saveDir).exists()) {

            	saveDir = saveDir + "_" + System.currentTimeMillis();

            }
            
            int data = 0;
			
			while((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
				
			RentCarVO vo = new RentCarVO();
			
			String rent_no = req.getParameter("rent_no");
			String use_km = req.getParameter("use_km");
			String car_count = req.getParameter("car_count");
			String insurance = req.getParameter("insurance");
			String car_num = req.getParameter("car_num");
			String fileName = file.getOriginalFilename();
			
			vo.setRent_no(rent_no);
			vo.setUse_km(use_km);
			vo.setCar_count(Integer.parseInt(car_count));
			vo.setInsurance(insurance);
			vo.setCar_num(car_num);
			vo.setCar_img(fileName);
			
			int cnt = dao.rentAdd(vo);
			
			model.addAttribute("cnt", cnt);
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//렌트카 조회
	@Override
	public void rentCar(HttpServletRequest req, Model model) {
		int pageSize = 5;  		//한 페이지당 출력할 글 개수
		int pageBlock = 3; 		//한블럭당 페이지 개수		
		int cnt = 0; 	   		
		int number = 0;    		//출력할 글 번호
		String pageNum = null;  //페이지 번호
	
		//렌트카 갯수구하기
		cnt = dao.getArticleCnt();
		pageNum = req.getParameter("requestPage");
		
		if(pageNum == null) {
			pageNum = "1"; //첫페이지를 1페이지로 설정
		}		
			
		PageCalculator p = new PageCalculator(Integer.parseInt(pageNum), cnt, pageBlock, pageSize);
					
		String car_kind = req.getParameter("car_kind");		
		String rental_day = req.getParameter("rental_day");
		String return_day = req.getParameter("return_day");
		
		if(car_kind.equals("전체") && car_kind != null) {
			Map<String,Integer> map = new HashMap<String, Integer>();
			map.put("start", p.getStart());
			map.put("end", p.getEnd());
			ArrayList<CarInfoVO> dtos = dao.rentCarAll(map);
			model.addAttribute("dtos", dtos);
		} else {
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("start", p.getStart());
			map.put("end", p.getEnd());
			map.put("car_kind",car_kind);
			ArrayList<CarInfoVO> dtos = dao.rentCar(map);
			model.addAttribute("dtos", dtos);
		}
		
		
		model.addAttribute("car_kind", car_kind); //차종
		model.addAttribute("rental_day", rental_day); //빌린시간
		model.addAttribute("return_day", return_day); //반납시간
		model.addAttribute("cnt", cnt); //렌트카 갯수
		model.addAttribute("number", number); //글번호
		if(cnt > 0) {
			model.addAttribute("startPage", p.getStartPage()); //시작페이지
			model.addAttribute("endPage", p.getEndPage());//마지막페이지
			model.addAttribute("pageBlock", p.getBlockSize());//출력할 페이지 개수
			model.addAttribute("pageCount", p.getContentCount());//페이지 개수
			model.addAttribute("pageNum", p.getRequestPage());//현재 페이지
			model.addAttribute("blockStartNumber", p.getBlockStartNumber());
			model.addAttribute("blockEndNumber", p.getBlockEndNumber());
			
		}
		
	}
	
	
	//차량삭제
	@Override
	public void rentDelete(HttpServletRequest req, Model model) {
		
		String car_num = req.getParameter("car_num");
		System.out.println("카넘 : " + car_num);
		int cnt = dao.rentDelete(car_num);
		
		model.addAttribute("cnt", cnt);
		
	}
	
	//렌트상세정보가져옴
	public void getViewDetail(HttpServletRequest req, Model model) {
		
		String car_num = req.getParameter("car_num");
		
		CarInfoVO vo = dao.getViewDetail(car_num);
		
		req.setAttribute("vo", vo);
	}




}
