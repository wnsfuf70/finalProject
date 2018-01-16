package kos.triple.project.controller.kwak;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kos.triple.project.service.kwak.PlanServiceImpl;

@Controller
public class PlanController {

	@Autowired
	PlanServiceImpl pservice;
	
	//계획하기 페이지
	@RequestMapping(value="plan", method=RequestMethod.GET)
	public String plan(HttpServletRequest req, Model model) {
		System.out.println("plan()");
		
		return "plan/plan";
	}
	
	//계획하기 페이지
	@RequestMapping(value="makeplan", method=RequestMethod.GET)
	public String makeplan(HttpServletRequest req, Model model) {
		System.out.println("makeplan()");
		
		
		
		return "plan/makeplan";
	}
	
	//1번째 plan insert
	@RequestMapping(value="insertPlan")
	public String insertPlan(HttpServletRequest req, Model model) {
		System.out.println("insertPlan()");	
		
		pservice.insertPlan(req, model);
		
		
		return "plan/plandata/planArea";		
	}
	
	//detailplan
	@RequestMapping(value="detailplan")
	public String detailplan(HttpServletRequest req, Model model) {
		System.out.println("detailplan()");
		
		String startDate = req.getParameter("startDate");
		String endDate = req.getParameter("endDate");
		
		System.out.println(startDate);
		System.out.println(endDate);
		
		
		return "plan/detailplan";
	}
	
	//detail_location
	@RequestMapping(value="detail_location")
	public String detail_location(HttpServletRequest req, Model model) {
		System.out.println("detail_location()");
		
		String area = req.getParameter("area");
		System.out.println(area);
		
		pservice.selectlocation(req, model);
		
		return "plan/plandata/detail_location";
	}
	
}
