package kos.triple.project.service.soon;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kos.triple.project.persistence.soon.WhereDAO;
import kos.triple.project.vo.WhereVO;

@Service
public class WhereServiceImpl implements WhereService {

	@Autowired
	WhereDAO dao;

	@Override
	public void Where_main(HttpServletRequest req, Model model) {
		String area = req.getParameter("area");
		String thema = req.getParameter("thema");

		System.out.println(area + "|" + thema);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("area", area);
		map.put("thema", thema);

		ArrayList<WhereVO> vo_spots = dao.where_spot(map);
		model.addAttribute("vo_spots", vo_spots);
		model.addAttribute("area", area);
		model.addAttribute("thema", thema);
	}

	@Override
	public void detail_view(HttpServletRequest req, Model model) {
		String location_num = req.getParameter("location_num");

		WhereVO vo = dao.detail_view(location_num);
		model.addAttribute("vo", vo);
	}

	@Override
	public void detail_view_score(HttpServletRequest req, Model model) {
		String location_num = req.getParameter("location_num");
		String like_score = req.getParameter("like_score");
		String normal_score = req.getParameter("normal_score");
		String bad_score = req.getParameter("bad_score");
		System.out.println("좋아요 수치 : " + like_score);
		System.out.println("보통 수지 : " + normal_score);
		System.out.println("싫어 수지 : " + bad_score);

		int cnt = 0;

		if (like_score.equals("1")) {
			cnt = dao.like_score(location_num);
			System.out.println("좋아요");
		} else if (normal_score.equals("1")) {
			cnt = dao.normal_score(location_num);
			System.out.println("보통이에요");
		} else if (bad_score.equals("1")) {
			cnt = dao.bad_score(location_num);
			System.out.println("싫어요");
		}
		model.addAttribute("cnt", cnt);
		model.addAttribute("location_num", location_num);
	}

	@Override
	public void search(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub
		String search = req.getParameter("search");
		System.out.println("검색 1: " + search);
		// 게시글 목록 조회
		ArrayList<WhereVO> vo_search = dao.search(search);
		model.addAttribute("vo_search", vo_search); // 큰 바구니 : 게시글 목록, 작은 바구니 : 게시글 1건

	}

	///////////////////////////////// 관리자/////////////////////////////////

	@Override
	public void Where_list(HttpServletRequest req, Model model) {
		int pageSize = 10; // 한 페이지 당 출력할 글 갯수
		int pageBlock = 5; // 한 블럭 당 페이지 갯수

		int cnt = 0; // 장소 갯수
		int start = 0; // 현재 페이지 글 시작 번호
		int end = 0; // 현재 페이지 글 마지막 번호
		int number = 0; // 출력할 글 번호
		String pageNum = null; // 페이지 번호
		int currentPage = 0; // 현재 페이지

		int pageCount = 0; // 페이지 갯수
		int startPage = 0; // 시작 페이지
		int endPage = 0; // 마지막 페이지

		// 장소 개수 구하기
		cnt = dao.getCountCnt();
		System.out.println("cnt : " + cnt);

		pageNum = req.getParameter("pageNum");

		if (pageNum == null) {
			pageNum = "1"; // 첫 페이지를 1페이지로 설정
		}

		currentPage = (Integer.parseInt(pageNum)); // 현재 페이지

		// pageCnt = 12 / 5 + 1; --> 나머지 2건이 1페이지로 할당되므로 3페이지
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0); // 페이지 갯수

		// 1 = (1 - 1) * 5 + 1
		// 6 = (2 - 1) * 5 + 1
		// 12 = (3 - 1) * 5 + 1
		start = (currentPage - 1) * pageSize + 1; // 현재 페이지 시작 번호

		// 5 = 1 + 5 - 1;
		end = start + pageSize - 1; // 현재 페이지 끝번호

		System.out.println("start : " + start);
		System.out.println("end : " + end);

		if (end > cnt)
			end = cnt;

		// 20 = 21 - (5 - 1) * 5;
		number = cnt - (currentPage - 1) * pageSize; // 출력할 장소 번호 --> 최신 글(큰페이지)가 1p

		System.out.println("number : " + number);
		System.out.println("cnt : " + cnt);
		System.out.println("currentPage : " + currentPage);
		System.out.println("pageSize : " + pageSize);

		if (cnt > 0) {
			// 장소 목록
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("start", start);
			map.put("end", end);

			ArrayList<WhereVO> vos = dao.where_list(map);
			model.addAttribute("vos", vos);

		}

		startPage = (currentPage / pageBlock) * pageBlock + 1; // (5/3) * 3 + 1 = 4;
		if (currentPage % pageBlock == 0)
			startPage -= pageBlock; // (5%3) == 0

		endPage = startPage + pageBlock - 1; // 4 + 3 - 1 = 6
		if (endPage > pageCount)
			endPage = pageCount;

		model.addAttribute("cnt", cnt); // 장소 갯수
		model.addAttribute("number", number); // 글 번호
		model.addAttribute("pageNum", pageNum); // 페이지 번호

		if (cnt > 0) {
			model.addAttribute("startPage", startPage); // 시작 페이지
			model.addAttribute("endPage", endPage); // 마지막 페이지
			model.addAttribute("pageBlock", pageBlock); // 출력할 페이지 갯수
			model.addAttribute("pageCount", pageCount); // 페이지 갯수
			model.addAttribute("currentPage", currentPage); // 현재 페이지
		}
	}

	@Override
	public void Where_add(MultipartHttpServletRequest req, Model model) {
		
		MultipartFile file1 = req.getFile("where_Images1");
		MultipartFile file2 = req.getFile("where_Images2");
		MultipartFile file3 = req.getFile("where_Images3");
		MultipartFile file4 = req.getFile("where_Images4");

		System.out.println("이미지 확인");

		String saveDir = req.getSession().getServletContext().getRealPath("/resources/images/where/trip_location"); // 저장

		String realDir = "C:\\Dev\\local\\finalProject\\finalProject\\src\\main\\webapp\\resources\\images\\where\\trip_location\\"; // 저장
		// 경로
		
		FileInputStream fis = null;
		FileOutputStream fos = null;
		String fileName1 = null;
		String fileName2 = null;
		String fileName3 = null;
		String fileName4 = null;

		try {
			
			file1.transferTo(new File(saveDir + file1.getOriginalFilename()));
			fis = new FileInputStream(saveDir + file1.getOriginalFilename());
			fos = new FileOutputStream(realDir + file1.getOriginalFilename());
			int data = 0;

			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
			
			fileName1 = file1.getOriginalFilename();
		} 
		catch (IOException e) {
			fileName1 = "default.jpg";
		}
		
		try {
		
			file2.transferTo(new File(saveDir + file2.getOriginalFilename()));
			fis = new FileInputStream(saveDir + file2.getOriginalFilename());
			fos = new FileOutputStream(realDir + file2.getOriginalFilename());
			int data = 0;

			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
			
			fileName2 = file2.getOriginalFilename();
		}
		catch (Exception e) {
			fileName2 = "default.jpg";
		}
		
		
		try {
			file3.transferTo(new File(saveDir + file3.getOriginalFilename()));
			fis = new FileInputStream(saveDir + file3.getOriginalFilename());
			fos = new FileOutputStream(realDir + file3.getOriginalFilename());
			int data = 0;

			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
			
			fileName3 = file3.getOriginalFilename();
		}
		catch (Exception e) {
			fileName3 = "default.jpg";
		}
		
		try {
			file4.transferTo(new File(saveDir + file4.getOriginalFilename()));
			fis = new FileInputStream(saveDir + file4.getOriginalFilename());
			fos = new FileOutputStream(realDir + file4.getOriginalFilename());
			int data = 0;

			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
			
			fileName4 = file4.getOriginalFilename();
		}
		catch (Exception e) {
			fileName4 = "default.jpg";
		}

			String location_name = req.getParameter("where_Name");
			String location_addr = req.getParameter("where_Address");
			String detail_info = req.getParameter("where_Info");
			String location_web = req.getParameter("where_Web");
			String x_coordinate = req.getParameter("where_X");
			String y_coordinate = req.getParameter("where_Y");
			String open_time = req.getParameter("where_Open");
			String close_time = req.getParameter("where_Close");
			String area = req.getParameter("where_Area");
			String thema_category = req.getParameter("where_Thema");

			WhereVO dto = new WhereVO();

			dto.setLocation_img1(fileName1);
			dto.setLocation_img2(fileName2);
			dto.setLocation_img3(fileName3);
			dto.setLocation_img4(fileName4);
			dto.setLocation_name(location_name);
			dto.setLocation_addr(location_addr);
			dto.setDetail_info(detail_info);
			dto.setLocation_web(location_web);
			dto.setX_coordinate(x_coordinate);
			dto.setY_coordinate(y_coordinate);
			dto.setOpen_time(open_time);
			dto.setClose_time(close_time);
			dto.setArea(area);
			dto.setThema_category(thema_category);

			int cnt = dao.where_add(dto);

			model.addAttribute("cnt", cnt);

	}

	@Override
	public void Where_check(HttpServletRequest req, Model model) {
		String location_num = req.getParameter("location_num");

		WhereVO vo = dao.where_check(location_num);
		model.addAttribute("vo", vo);
	}

	@Override
	public void Where_delete(HttpServletRequest req, Model model) {
		String location_num = req.getParameter("location_num");

		int cnt = dao.delete(location_num);

		model.addAttribute("cnt", cnt);

	}

	@Override
	public void Where_modify(HttpServletRequest req, Model model) {
		String location_num = req.getParameter("location_num");

		WhereVO vo = dao.modify(location_num);
		model.addAttribute("vo", vo);
	}

	@Override
	public void Where_modify_Pro(MultipartHttpServletRequest req, Model model) {
		
		String location_num = req.getParameter("location_num");
		String location_name = req.getParameter("where_Name");
		String location_addr = req.getParameter("where_Address");
		String detail_info = req.getParameter("where_Info");
		String location_web = req.getParameter("where_Web");
		String x_coordinate = req.getParameter("where_X");
		String y_coordinate = req.getParameter("where_Y");
		String open_time = req.getParameter("where_Open");
		String close_time = req.getParameter("where_Close");
		String area = req.getParameter("where_Area");
		String thema_category = req.getParameter("where_Thema");
		
		Map<String,Object> imgMap = new HashMap<String,Object>();
		imgMap.put("location_num", location_num);
		
		MultipartFile file1 = req.getFile("where_Images1");
		MultipartFile file2 = req.getFile("where_Images2");
		MultipartFile file3 = req.getFile("where_Images3");
		MultipartFile file4 = req.getFile("where_Images4");

		String saveDir = req.getSession().getServletContext().getRealPath("/resources/images/where/trip_location"); // 저장

		String realDir = "C:\\Dev\\local\\finalProject\\finalProject\\src\\main\\webapp\\resources\\images\\where\\trip_location\\"; // 저장
		// 경로
		FileInputStream fis = null;
		FileOutputStream fos = null;
		String fileName1 = null;
		String fileName2 = null;
		String fileName3 = null;
		String fileName4 = null;
		
		try {
		
			file1.transferTo(new File(saveDir + file1.getOriginalFilename()));
			fis = new FileInputStream(saveDir + file1.getOriginalFilename());
			fos = new FileOutputStream(realDir + file1.getOriginalFilename());
			int data = 0;

			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
			
			fileName1 = file1.getOriginalFilename();
			imgMap.put("imgName",fileName1);
			imgMap.put("location","img1");
			
			dao.updateImg(imgMap);
			
		} 
		catch (IOException e) {
			e.printStackTrace();
		}
		
		try {
		
			file2.transferTo(new File(saveDir + file2.getOriginalFilename()));
			fis = new FileInputStream(saveDir + file2.getOriginalFilename());
			fos = new FileOutputStream(realDir + file2.getOriginalFilename());
			int data = 0;

			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
			
			fileName2 = file2.getOriginalFilename();
			imgMap.put("imgName",fileName2);
			imgMap.put("location","img2");
			
			dao.updateImg(imgMap);
		}
		catch (Exception e) {
			
		}
		
		
		try {
			file3.transferTo(new File(saveDir + file3.getOriginalFilename()));
			fis = new FileInputStream(saveDir + file3.getOriginalFilename());
			fos = new FileOutputStream(realDir + file3.getOriginalFilename());
			int data = 0;

			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();

			fileName3 = file3.getOriginalFilename();
			imgMap.put("imgName",fileName3);
			imgMap.put("location","img3");
			
			dao.updateImg(imgMap);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			file4.transferTo(new File(saveDir + file4.getOriginalFilename()));
			fis = new FileInputStream(saveDir + file4.getOriginalFilename());
			fos = new FileOutputStream(realDir + file4.getOriginalFilename());
			int data = 0;

			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
			
			fileName4 = file4.getOriginalFilename();
			imgMap.put("imgName",fileName4);
			imgMap.put("location","img4");
			
			dao.updateImg(imgMap);
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		

		WhereVO dto = new WhereVO();

		dto.setLocation_img1(fileName1);
		dto.setLocation_img2(fileName2);
		dto.setLocation_img3(fileName3);
		dto.setLocation_img4(fileName4);
		
		dto.setLocation_num(location_num);
		dto.setLocation_name(location_name);
		dto.setLocation_addr(location_addr);
		dto.setDetail_info(detail_info);
		dto.setLocation_web(location_web);
		dto.setX_coordinate(x_coordinate);
		dto.setY_coordinate(y_coordinate);
		dto.setOpen_time(open_time);
		dto.setClose_time(close_time);
		dto.setArea(area);
		dto.setThema_category(thema_category);

		int cnt = dao.modify_pro(dto);

		model.addAttribute("cnt", cnt);

		
	}
	
	
	//원래 메소드
	/*
	@Override
	public void Where_modify_Pro(MultipartHttpServletRequest req, Model model) {

	

		MultipartFile file1 = req.getFile("where_Images1");
		MultipartFile file2 = req.getFile("where_Images2");
		MultipartFile file3 = req.getFile("where_Images3");
		MultipartFile file4 = req.getFile("where_Images4");
		System.out.println("파일1: "+file1.getOriginalFilename());
		System.out.println("파일2: "+file2.getOriginalFilename());
		System.out.println("이미지1 : " + req.getFile("where_Images1"));
		System.out.println("이미지2 : " + req.getFile("where_Images2"));
		System.out.println("이미지3 : " + req.getFile("where_Images3"));
		System.out.println("이미지4 : " + req.getFile("where_Images4"));

		System.out.println("이미지 확인");

		String saveDir = req.getSession().getServletContext().getRealPath("/resources/images/where/trip_location"); // 저장

		String realDir = "C:\\Dev\\local\\finalProject\\finalProject\\src\\main\\webapp\\resources\\images\\where\\trip_location\\"; // 저장
		// 경로

		try {
		
			file1.transferTo(new File(saveDir + file1.getOriginalFilename()));
			FileInputStream fis = new FileInputStream(saveDir + file1.getOriginalFilename());
			FileOutputStream fos = new FileOutputStream(realDir + file1.getOriginalFilename());
			int data = 0;

			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
		
			file2.transferTo(new File(saveDir + file2.getOriginalFilename()));
			fis = new FileInputStream(saveDir + file2.getOriginalFilename());
			fos = new FileOutputStream(realDir + file2.getOriginalFilename());
			data = 0;

			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();

			file3.transferTo(new File(saveDir + file3.getOriginalFilename()));
			fis = new FileInputStream(saveDir + file3.getOriginalFilename());
			fos = new FileOutputStream(realDir + file3.getOriginalFilename());
			data = 0;

			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();

			file4.transferTo(new File(saveDir + file4.getOriginalFilename()));
			fis = new FileInputStream(saveDir + file4.getOriginalFilename());
			fos = new FileOutputStream(realDir + file4.getOriginalFilename());
			data = 0;

			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
			
			String fileName1 = file1.getOriginalFilename();
			String fileName2 = file2.getOriginalFilename();
			String fileName3 = file3.getOriginalFilename();
			String fileName4 = file4.getOriginalFilename();
			
			String location_num = req.getParameter("location_num");
			String location_name = req.getParameter("where_Name");
			String location_addr = req.getParameter("where_Address");
			String detail_info = req.getParameter("where_Info");
			String location_web = req.getParameter("where_Web");
			String x_coordinate = req.getParameter("where_X");
			String y_coordinate = req.getParameter("where_Y");
			String open_time = req.getParameter("where_Open");
			String close_time = req.getParameter("where_Close");
			String area = req.getParameter("where_Area");
			String thema_category = req.getParameter("where_Thema");

			WhereVO dto = new WhereVO();

			dto.setLocation_img1(fileName1);
			dto.setLocation_img2(fileName2);
			dto.setLocation_img3(fileName3);
			dto.setLocation_img4(fileName4);

			System.out.println("이미지 DB1 : " + dto.getLocation_img1());
			System.out.println("이미지 DB2 : " + dto.getLocation_img2());
			System.out.println("이미지 DB3 : " + dto.getLocation_img3());
			System.out.println("이미지 DB4 : " + dto.getLocation_img4());
			dto.setLocation_num(location_num);
			dto.setLocation_name(location_name);
			dto.setLocation_addr(location_addr);
			dto.setDetail_info(detail_info);
			dto.setLocation_web(location_web);
			dto.setX_coordinate(x_coordinate);
			dto.setY_coordinate(y_coordinate);
			dto.setOpen_time(open_time);
			dto.setClose_time(close_time);
			dto.setArea(area);
			dto.setThema_category(thema_category);

			int cnt = dao.modify_pro(dto);

			model.addAttribute("cnt", cnt);

		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	*/

}
