package kos.triple.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminMainController {

	//main������
		@RequestMapping(value="banner")
		public String homeManage() {
			System.out.println("banner()");
			return "main/adminMain/homePage/banner";
		}
		
		@RequestMapping(value="popup")
		public String popup() {
			System.out.println("popup()");
			return "main/adminMain/homePage/popup";
		}
		
		//main������
		@RequestMapping(value="userManage")
		public String userManage() {
			System.out.println("userManage()");
			return "main/adminMain/site/userManage";
		}
		
		@RequestMapping(value="qnaManage")
		public String qnaManage() {
			System.out.println("qnaManage()");
			return "main/adminMain/site/qnaManage";
		}
		
}
