package kos.triple.project.service.hong;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.taglibs.standard.extra.spath.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kos.triple.project.etc.PageCalculator;
import kos.triple.project.persistence.hong.CarDAOImpl;
import kos.triple.project.vo.CarInfoVO;
import kos.triple.project.vo.RentCarVO;
import kos.triple.project.vo.Reservation_CarVO;

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

		pageNum = req.getParameter("requestPage");
		
		if(pageNum == null) {
			pageNum = "1"; //ù�������� 1�������� ����
		}		
								
		String car_kind = req.getParameter("car_kind");		
		String rental_day = req.getParameter("rental_day");
		String return_day = req.getParameter("return_day");
		String rental_time = req.getParameter("rental_time");
		String return_time = req.getParameter("return_time");
	
		try {
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			
			Date startDate = (Date) formatter.parse(rental_day); //�� ��� - ��߳�¥
			Date endDate = (Date) formatter.parse(return_day); //�� ��� - �ݳ���¥

			String rental_t[] = rental_time.split(":");
			String return_t[] = return_time.split(":");
		
			int rental_s = Integer.parseInt(rental_t[0]);
			int return_s = Integer.parseInt(return_t[0]);
			
			
			
			model.addAttribute("rental_s",rental_s);
			model.addAttribute("return_s",return_s);
			
			if(Integer.parseInt(return_t[0]) < Integer.parseInt(rental_t[0])) {
				int s_time = 24 - Integer.parseInt(rental_t[0]);
				int e_time = 24 - Integer.parseInt(return_t[0]);				
				int ch = e_time-s_time;			
	
				model.addAttribute("ch", ch);
			}else {				
				int t = Integer.parseInt(return_t[0]) - Integer.parseInt(rental_t[0]);	
				
				model.addAttribute("t", t);
			}					
			long diff = endDate.getTime() - startDate.getTime();
			long diffDats = diff / (24 * 60 * 60* 1000);
			
			model.addAttribute("diffDats", diffDats);
		}catch(java.text.ParseException e){
			e.printStackTrace();
		}
		
		if(car_kind.equals("��ü") && car_kind != null) {
			cnt = dao.getArticleCnt();
			PageCalculator p = new PageCalculator(Integer.parseInt(pageNum), cnt, pageBlock, pageSize);
			Map<String,Integer> map = new HashMap<String, Integer>();
			map.put("start", p.getStart());
			map.put("end", p.getEnd());		
			ArrayList<CarInfoVO> dtos = dao.rentCarAll(map);
			model.addAttribute("dtos", dtos);
			
		} else {
			cnt = dao.getArticleCntKind(car_kind);
			PageCalculator p = new PageCalculator(Integer.parseInt(pageNum), cnt, pageBlock, pageSize);
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
		model.addAttribute("rental_time",rental_time);//�����ð�
		model.addAttribute("return_time",return_time);//�ݳ��ð�
		model.addAttribute("cnt", cnt); //��Ʈī ����
		model.addAttribute("number", number); //�۹�ȣ
		
		if(cnt > 0) {
			PageCalculator p = new PageCalculator(Integer.parseInt(pageNum), cnt, pageBlock, pageSize);
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

	//��Ʈī �����ϱ�
	@Override
	public void rentReservation(HttpServletRequest req, Model model) {
		
		String rental_day = req.getParameter("rental_day");
		String return_day = req.getParameter("return_day");
		String rental_time = req.getParameter("rental_time");
		String return_time = req.getParameter("return_time");
		String rent_no = req.getParameter("rent_no");
		String mem_id = req.getParameter("mem_id");
		String price = req.getParameter("total1");
		String payment = req.getParameter("payment");
		String name = req.getParameter("name");
		String phone1 = req.getParameter("phone1");
		String phone2 = req.getParameter("phone2");
		String phone3 = req.getParameter("phone3");
		String driver_kind = req.getParameter("driver_kind");
		String driver1 = req.getParameter("driver1");
		String driver2 = req.getParameter("driver2");
		String driver3 = req.getParameter("driver3");
		String email1 = req.getParameter("email1");
		String email2 = req.getParameter("email2");
		String car_name =req.getParameter("car_name");
		
		Reservation_CarVO vo = new Reservation_CarVO();
		
		vo.setRent_no(rent_no);
		vo.setRental_day(rental_day);
		vo.setReturn_day(return_day);
		vo.setRental_time(rental_time);
		vo.setReturn_time(return_time);
		vo.setMem_id(mem_id);
		vo.setPrice(Integer.parseInt(price));
		vo.setPayment(payment);
		vo.setName(name);
		vo.setPhone1(phone1);
		vo.setPhone2(phone2);
		vo.setPhone3(phone3);
		vo.setDriver_kind(driver_kind);
		vo.setDriver1(driver1);
		vo.setDriver2(driver2);
		vo.setDriver3(driver3);
		vo.setEmail1(email1);
		vo.setEmail2(email2);
		vo.setCar_name(car_name);
		
		int cnt = dao.reservation_car(vo);
		
		model.addAttribute("cnt", cnt);		

	}

	//ȣ��Ʈ ���� ����Ʈ ��ȸ
	@Override
	public void rentReservationList(HttpServletRequest req, Model model) {
		
		int pageSize = 5;  		//�� �������� ����� �� ����
		int pageBlock = 3; 		//�Ѻ��� ������ ����	
		int number = 0;
		int cnt = 0;
		String pageNum = null;
		
		//���� ����Ʈ ���� ���ϱ�
		cnt = dao.rentReservationCnt();
		
		System.out.println("cnt : " + cnt);
		
		pageNum = req.getParameter("requestPage");
		
		if(pageNum == null) {
			pageNum = "1"; //ù�������� 1�������� ����
		}
	/*	number = cnt - (Integer.parseInt(pageNum) - 1) * pageSize; //����� �� ��ȣ
		
		System.out.println("number : " + number);*/
		
		PageCalculator p = new PageCalculator(Integer.parseInt(pageNum), cnt, pageBlock, pageSize);
					
		//��ȸ�ϱ�
		Map<String,Integer> map = new HashMap<String, Integer>();
		map.put("start", p.getStart());
		map.put("end", p.getEnd());	
		ArrayList<Reservation_CarVO> dtos = dao.rentReservationList(map);
		req.setAttribute("dtos_car", dtos);
		req.setAttribute("number_car", number); //�۹�ȣ		
		req.setAttribute("cnt_car", cnt); //��Ʈī ����
		if(cnt > 0) {
			req.setAttribute("startPage_car", p.getStartPage()); //����������
			req.setAttribute("endPage_car", p.getEndPage());//������������
			req.setAttribute("pageBlock_car", p.getBlockSize());//����� ������ ����
			req.setAttribute("pageCount_car", p.getContentCount());//������ ����
			req.setAttribute("pageNum_car", p.getRequestPage());//���� ������
			req.setAttribute("blockStartNumber_car", p.getBlockStartNumber());
			req.setAttribute("blockEndNumber_car", p.getBlockEndNumber());
			
		}
		
	}

}
