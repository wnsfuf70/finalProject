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

	//��Ʈī �߰�
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
	
	//��Ʈī ��ȸ
	@Override
	public void rentCar(HttpServletRequest req, Model model) {
		int pageSize = 5;  		//�� �������� ����� �� ����
		int pageBlock = 3; 		//�Ѻ��� ������ ����		
		int cnt = 0; 	   		
		int number = 0;    		//����� �� ��ȣ
		String pageNum = null;  //������ ��ȣ
	
		//��Ʈī �������ϱ�
		cnt = dao.getArticleCnt();
		pageNum = req.getParameter("requestPage");
		
		if(pageNum == null) {
			pageNum = "1"; //ù�������� 1�������� ����
		}		
			
		PageCalculator p = new PageCalculator(Integer.parseInt(pageNum), cnt, pageBlock, pageSize);
					
		String car_kind = req.getParameter("car_kind");		
		String rental_day = req.getParameter("rental_day");
		String return_day = req.getParameter("return_day");
		
		if(car_kind.equals("��ü") && car_kind != null) {
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
		
		
		model.addAttribute("car_kind", car_kind); //����
		model.addAttribute("rental_day", rental_day); //�����ð�
		model.addAttribute("return_day", return_day); //�ݳ��ð�
		model.addAttribute("cnt", cnt); //��Ʈī ����
		model.addAttribute("number", number); //�۹�ȣ
		if(cnt > 0) {
			model.addAttribute("startPage", p.getStartPage()); //����������
			model.addAttribute("endPage", p.getEndPage());//������������
			model.addAttribute("pageBlock", p.getBlockSize());//����� ������ ����
			model.addAttribute("pageCount", p.getContentCount());//������ ����
			model.addAttribute("pageNum", p.getRequestPage());//���� ������
			model.addAttribute("blockStartNumber", p.getBlockStartNumber());
			model.addAttribute("blockEndNumber", p.getBlockEndNumber());
			
		}
		
	}
	
	
	//��������
	@Override
	public void rentDelete(HttpServletRequest req, Model model) {
		
		String car_num = req.getParameter("car_num");
		System.out.println("ī�� : " + car_num);
		int cnt = dao.rentDelete(car_num);
		
		model.addAttribute("cnt", cnt);
		
	}
	
	//��Ʈ������������
	public void getViewDetail(HttpServletRequest req, Model model) {
		
		String car_num = req.getParameter("car_num");
		
		CarInfoVO vo = dao.getViewDetail(car_num);
		
		req.setAttribute("vo", vo);
	}




}
