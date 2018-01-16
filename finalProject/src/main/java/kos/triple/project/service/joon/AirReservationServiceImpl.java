package kos.triple.project.service.joon;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kos.triple.project.etc.DistanceCal;
import kos.triple.project.persistence.joon.AirReservationDAO;
import kos.triple.project.vo.AirPlaneVO;
import kos.triple.project.vo.AirPortVO;
import kos.triple.project.vo.AirReservationSearchVO;
import kos.triple.project.vo.RouteVO;
import kos.triple.project.vo.SeatPriceVO;

@Service
public class AirReservationServiceImpl implements AirReservationService{

	@Autowired
	AirReservationDAO dao;
	
	//공항정보가져오기
	@Override
	public void getAirPortInfo(HttpServletRequest req, Model model) {
		
		List<AirPortVO> airPortList = dao.getAirPortInfo_proc();
		
		model.addAttribute("airPortList",airPortList);
		
	}

	//항공기전부가져오기
	@Override
	public void getAirPlane(HttpServletRequest req, Model model) {
		
		List<AirPlaneVO> airPlaneList = dao.getAirPlane_proc();
	
		model.addAttribute("airPlaneList",airPlaneList);
		
	}
	
	@Override
	public void getAirPlaneOne(HttpServletRequest req) {
		
		String airPlaneNo = req.getParameter("airPlaneNo");
		
		AirPlaneVO airPlane = dao.getAirPlaneOne_proc(airPlaneNo);
		req.setAttribute("airPlane",airPlane);
		
	}
	

	//항공기 추가
	@Override
	public void addAirPlane(HttpServletRequest req) {

		int cnt = 0;
		
		String airPlaneName = req.getParameter("airPlaneName");
		String seatPriceCode = req.getParameter("seatPriceCode");
		
		AirPlaneVO vo = new AirPlaneVO();
		vo.setAirPlaneNo("AIRPLANE_");
		vo.setAirPlaneName(airPlaneName);
		if(seatPriceCode.equals("small")) {
			vo.setPremium(2);
			vo.setHighClass(8);
			vo.setNomal(18);
		}
		else if(seatPriceCode.equals("large")) {
			vo.setPremium(8);
			vo.setHighClass(12);
			vo.setNomal(30);
		}
		
		
		
		cnt = dao.addAirPlane_proc(vo);
		
		if(cnt==1) {
			
			int num = dao.getLastAirPlaneNo_proc();
	
			String tmp ="운항가능";
			
			StringBuffer str = new StringBuffer(
			"<tr>"+
				"<td>"+vo.getAirPlaneNo()+num+"</td>"+
				"<td>"+vo.getAirPlaneName()+"</td>"+
				"<td>"+vo.getPremium()+"</td>"+
				"<td>"+vo.getHighClass()+"</td>"+
				"<td>"+vo.getNomal()+"</td>"+
				"<td>"+(vo.getPremium()+vo.getHighClass()+vo.getNomal())+"</td>"+
				"<td>"+(seatPriceCode.equals("small")?"소형":"대형")+"</td>"+
				"<td>"+tmp.toString()+"</td>"+
			"</tr>");
			
			req.setAttribute("result",str.toString());
		}
		else {
			req.setAttribute("result","error");
		}
		
		
		
	}

	@Override
	public void deleteAirPlane(HttpServletRequest req) {
		
		int cnt = 0;
		
		String airPlaneNo = req.getParameter("deleteNo");

		cnt = dao.deleteAirPlane_proc(airPlaneNo);
		
	}

	@Override
	public void modifyAirPlane(HttpServletRequest req) {
		
		int cnt = 0;
		
		String airPlaneNo = req.getParameter("modifyAirPlaneNo");
		String airPlaneName = req.getParameter("modifyAirPlaneName");
		String airPlaneSize = req.getParameter("modifyAirPlaneSize");
		
		System.out.println("airPNo" + airPlaneNo);
		System.out.println("airPName" + airPlaneName);
		System.out.println("airPsize" + airPlaneSize);
		
		AirPlaneVO vo = new AirPlaneVO();
		
		vo.setAirPlaneNo(airPlaneNo);
		vo.setAirPlaneName(airPlaneName);
		if(airPlaneSize.equals("small")) {
			vo.setPremium(2);
			vo.setHighClass(8);
			vo.setNomal(18);
		}
		else if(airPlaneSize.equals("large")) {
			vo.setPremium(8);
			vo.setHighClass(12);
			vo.setNomal(30);
		}
		
		
		cnt = dao.modifyAirPlane_proc(vo);
		System.out.println("수정결과 : " + cnt);
	}

	@Override
	public void getAirPlaneAll(HttpServletRequest req, Model model) {

		List<AirPlaneVO> voList = dao.getAirPlaneAll_proc();
		model.addAttribute("voList",voList);
	}

	@Override
	public void getMoveDistance(HttpServletRequest req) {

		String from = req.getParameter("from");
		String to = req.getParameter("to");
		
		AirPortVO fromAirPort = dao.getAirPortInfoOne_proc(from);
		AirPortVO toAirPort =  dao.getAirPortInfoOne_proc(to);
		
		double from_xPos = fromAirPort.getxPos();
		double from_yPos = fromAirPort.getyPos();
		
		double to_xPos = toAirPort.getxPos();
		double to_yPos = toAirPort.getyPos();
		
		DistanceCal dis = new DistanceCal(from_xPos, from_yPos, to_xPos, to_yPos);
		String distance = Double.toString(dis.getDistance());
		
		req.setAttribute("distance",distance);
	}

	@Override
	public void setRoute(HttpServletRequest req) {
		
		String airPlaneNo = req.getParameter("airPlaneNo");
		String startAirPortNo = req.getParameter("startLocation");
		String midAirPortNo = req.getParameter("midLocation");
		String endAirPortNo = req.getParameter("endLocation");
		
		double stepOneDistence = Double.parseDouble(req.getParameter("stepOne"));
		double stepTwoDistence = Double.parseDouble(req.getParameter("stepTwo"));
		
		String airPortNo = startAirPortNo;

		AirPortVO fromAirPort = dao.getAirPortLocation_proc(airPortNo);

		System.out.println(":ㄴㅇㄹㄴㅁ1:" + airPortNo);
		airPortNo = endAirPortNo;
		AirPortVO toAirPort =  dao.getAirPortLocation_proc(airPortNo);

		System.out.println(":ㄴㅇㄹㄴㅁ2:" + airPortNo);
		
		double from_xPos = fromAirPort.getxPos();
		double from_yPos = fromAirPort.getyPos();
		double to_xPos = toAirPort.getxPos();
		double to_yPos = toAirPort.getyPos();
			
		DistanceCal dis = new DistanceCal(from_xPos, from_yPos, to_xPos, to_yPos);
		String resultDistance = Double.toString(dis.getDistance());
		
		String sTime = req.getParameter("startTime");
		System.out.println(sTime);
		String[] tmp = sTime.split("T");
		String startTimeStamp = tmp[0]+" "+tmp[1];
		
		System.out.println("경유지 : " + midAirPortNo); //널값으로 넘어옴 (없는경우)
		System.out.println(stepOneDistence);
		System.out.println(stepTwoDistence);
		
		double midTime = (stepOneDistence/500.0);
		double arrivalTime = (stepTwoDistence/500.0);
		
		//경유지까지 가는데 걸리는 시간과 분
		int hour1;
		double min1;
		
		//경유지에서 도착지까지 가는데 걸리는 시간과 분
		int hour2;
		double min2;
		
		if(midTime<1) {
			hour1 = 0;
			min1 = midTime*60;
		}
		else {
			hour1 = (int)midTime;
			min1 = (midTime-(int)midTime)*60;
		}
		
		if(arrivalTime<1) {
			hour2 = 0;
			min2 = arrivalTime*60;
		}
		else {
			hour2 = (int)arrivalTime;
			min2 = (arrivalTime-(int)arrivalTime)*60;
		}
		
		System.out.println("출발시각");
		System.out.println(startTimeStamp);
		System.out.println(hour1+":"+(int)min1);
		System.out.println(hour2+":"+(int)min2);
		
		Timestamp st = Timestamp.valueOf(startTimeStamp+":0.0");
		Calendar cal = Calendar.getInstance();
		
		cal.setTimeInMillis(st.getTime());
		cal.add(Calendar.HOUR,hour1);
		cal.add(Calendar.MINUTE,(int)min1);
		Timestamp mt = new Timestamp(cal.getTime().getTime());

		cal.setTimeInMillis(mt.getTime());
		cal.add(Calendar.HOUR,hour2);
		cal.add(Calendar.MINUTE,(int)min2);
		Timestamp at = new Timestamp(cal.getTime().getTime());
		
		
	  	Map<String ,Object> map = new HashMap<String,Object>();
		map.put("airPlaneNo",airPlaneNo);
		map.put("startAirPortNo",startAirPortNo);
		map.put("midAirPortNo",midAirPortNo);
		map.put("endAirPortNo",endAirPortNo);
		
		map.put("startTime",st);
		map.put("midTime",mt);
		map.put("arrivalTime",at);
		map.put("stepOneDistence",stepOneDistence);
		map.put("stepTwoDistence",stepTwoDistence);
		map.put("resultDistance",resultDistance);
		
		int cnt = dao.setRoute_proc(map);
		
		
	}

	@Override
	public void setRouteCancel(HttpServletRequest req) {
		
		String airPlaneNo = req.getParameter("airPlaneNo");
		dao.setRouteCancel_proc(airPlaneNo);
	}

	@Override
	public void getSeatDefaultPrice(HttpServletRequest req, Model model) {
		SeatPriceVO vo = dao.getSeatDefaultPrice_proc();
		model.addAttribute("seatPrice",vo);	
	}

	@Override
	public void setSeatPrice(HttpServletRequest req) {

		SeatPriceVO vo = new SeatPriceVO();
		String airPlaneNo = req.getParameter("airPlaneNo");
		vo.setNomal_A(Integer.parseInt( req.getParameter("nomal_a")));
		vo.setNomal_B(Integer.parseInt( req.getParameter("nomal_b")));
		vo.setNomal_C(Integer.parseInt( req.getParameter("nomal_c")));
		vo.setHighClass_A(Integer.parseInt(req.getParameter("highClass_a")));
		vo.setHighClass_B(Integer.parseInt(req.getParameter("highClass_b")));
		vo.setHighClass_C(Integer.parseInt(req.getParameter("highClass_c")));
		vo.setPremium_A(Integer.parseInt(req.getParameter("premium_a")));
		vo.setPremium_B(Integer.parseInt(req.getParameter("premium_b")));
		vo.setPremium_C(Integer.parseInt(req.getParameter("premium_c")));
	
		dao.setSeatPrice_proc(vo,airPlaneNo);
	}

	@Override
	public void setCustomSeatPrice(HttpServletRequest req) {

		SeatPriceVO vo = new SeatPriceVO();
		String airPlaneNo = req.getParameter("airPlaneNo");
		vo.setNomal_A(Integer.parseInt( req.getParameter("nomal_a")));
		vo.setNomal_B(Integer.parseInt( req.getParameter("nomal_b")));
		vo.setNomal_C(Integer.parseInt( req.getParameter("nomal_c")));
		vo.setHighClass_A(Integer.parseInt(req.getParameter("highClass_a")));
		vo.setHighClass_B(Integer.parseInt(req.getParameter("highClass_b")));
		vo.setHighClass_C(Integer.parseInt(req.getParameter("highClass_c")));
		vo.setPremium_A(Integer.parseInt(req.getParameter("premium_a")));
		vo.setPremium_B(Integer.parseInt(req.getParameter("premium_b")));
		vo.setPremium_C(Integer.parseInt(req.getParameter("premium_c")));
		vo.setSeatPriceCode("SEATPRICECODE_");
		
		dao.setCustomSeatPrice_proc(vo,airPlaneNo);
		
	}

	@Override
	public void getSeatPriceInfo(HttpServletRequest req) {
		
		String airPlaneNo = req.getParameter("airPlaneNo");
		SeatPriceVO vo = dao.getSeatPriceInfo_proc(airPlaneNo);
		
		req.setAttribute("seatPriceVO",vo);
	}

	@Override
	public void modifySeatPrice(HttpServletRequest req) {
		
		SeatPriceVO vo = new SeatPriceVO();
		//String airPlaneNo = req.getParameter("airPlaneNo");
		String seatPriceCode = req.getParameter("seatPriceCode");
		
		vo.setNomal_A(Integer.parseInt( req.getParameter("nomal_a")));
		vo.setNomal_B(Integer.parseInt( req.getParameter("nomal_b")));
		vo.setNomal_C(Integer.parseInt( req.getParameter("nomal_c")));
		vo.setHighClass_A(Integer.parseInt(req.getParameter("highClass_a")));
		vo.setHighClass_B(Integer.parseInt(req.getParameter("highClass_b")));
		vo.setHighClass_C(Integer.parseInt(req.getParameter("highClass_c")));
		vo.setPremium_A(Integer.parseInt(req.getParameter("premium_a")));
		vo.setPremium_B(Integer.parseInt(req.getParameter("premium_b")));
		vo.setPremium_C(Integer.parseInt(req.getParameter("premium_c")));
		vo.setSeatPriceCode(seatPriceCode);
		
		int cnt = dao.modifySeatPrice_proc(vo);
		
	}

	@Override
	public void airPlaneSearch(HttpServletRequest req, Model model) {
		
		String sl = req.getParameter("seatLevel");
		String sk = req.getParameter("startAirport_Key");
		String ek = req.getParameter("endAirport_Key");
		String sfd = req.getParameter("s_fromDate");
		String std = req.getParameter("s_toDate");
			
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("seatLevel",sl);
		map.put("startAirport_Key",sk);
		map.put("endAirport_Key",ek);
		map.put("s_fromDate",sfd);
		map.put("s_toDate",std);
		
		
		Map<String,String> renameMap = new HashMap<String,String>();
		renameMap.put("AIRPORT_1", "김포");
		renameMap.put("AIRPORT_2", "대구");
		renameMap.put("AIRPORT_3", "부산");
		renameMap.put("AIRPORT_4", "제주");
		renameMap.put("AIRPORT_5", "청주");
		
		map.forEach((k,v)->{
			System.out.println(k + " : " + v);
		});
		
		
		List<AirReservationSearchVO> vo = dao.airPlaneSearch(map);
		
		for (AirReservationSearchVO i : vo) {
			RouteVO r = i.getR();
			r.setRoute1( (String)renameMap.get(r.getRoute1() ) );
			r.setRoute2( (String)renameMap.get(r.getRoute2() ) );
			r.setRoute3( (String)renameMap.get(r.getRoute3() ) );
			i.setR(r);
		}
			
		model.addAttribute("searchResultVO",vo);
	}

	@Override
	public void getReserVationInfo(HttpServletRequest req, Model model) {
		
		String airPlaneNo = req.getParameter("airPlaneNo");
		System.out.println("pNum : " + airPlaneNo);
		AirReservationSearchVO vo = dao.getReserVationInfo_proc(airPlaneNo);
		
		Map<String,String> renameMap = new HashMap<String,String>();
		renameMap.put("AIRPORT_1", "김포");
		renameMap.put("AIRPORT_2", "대구");
		renameMap.put("AIRPORT_3", "부산");
		renameMap.put("AIRPORT_4", "제주");
		renameMap.put("AIRPORT_5", "청주");
		
		RouteVO r = vo.getR();
		r.setRoute1( (String)renameMap.get(r.getRoute1() ) );
		r.setRoute2( (String)renameMap.get(r.getRoute2() ) );
		r.setRoute3( (String)renameMap.get(r.getRoute3() ) );
		vo.setR(r);
		
		model.addAttribute("vo",vo);
	}
	
	//항공편 검색
	
	//항공예약
	
}
