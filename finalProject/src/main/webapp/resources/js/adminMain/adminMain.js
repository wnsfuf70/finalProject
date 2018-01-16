$(function() {
		
		
		$(".siteuse_manager").css("display","none");
		$(".where_manager").css("display","none");
		$(".reservation_manager").css("display","none");
		$("iframe").attr("src","banner");
		
		//홈페이지 관리 클릭
		$("#homeManage_click").click(function(){
			$(".homepage_manager").css("display","block");
			$(".siteuse_manager").css("display","none");
			$(".where_manager").css("display","none");
			$(".reservation_manager").css("display","none");
			
			$("iframe").attr("src","banner");
			
		})
		
		//사이트이용관리 클릭
		$("#siteManage_click").click(function(){
			
			$(".homepage_manager").css("display","none");
			$(".siteuse_manager").css("display","block");
			$(".where_manager").css("display","none");
			$(".reservation_manager").css("display","none");
			
			$("iframe").attr("src","userManage");
			return false;
		})
		
			//여행지관리 클릭
		$("#where_click").click(function(){
			
			$(".siteuse_manager").css("display","none");
			$(".homepage_manager").css("display","none");
			$(".where_manager").css("display","block");
			$(".reservation_manager").css("display","none");
			
			$("iframe").attr("src","add");
			return false;
		})
		
			//항공예약관리 클릭
		$("#airplane_click").click(function(){
			$(".reservation_manager").css("display","block");
			$(".homepage_manager").css("display","none");
			$(".siteuse_manager").css("display","none");
			$(".where_manager").css("display","none");
			
			var content = "<h4>항공 예약 관리 </h4>" +
						  "<ul class='nav nav-pills nav-stacked'>" +
						  "<li><a href='airReservationList' target='contentFrame'>예약 리스트 보기</a></li>" +
						  "<li><a href='airReservationCancelList' target='contentFrame'>예약 취소 보기</a></li>" +
				 		  "<li><a href='airRouteAdd' target='contentFrame'>항공 노선 추가</a></li>" +
						  "<li><a href='airOperationChange' target='contentFrame'>항공 운행 정보 변경</a></li>" +
						  "</ul><br>";
      
			$(".reservation_manager_content").html(content);
			$("iframe").attr("src","airReservationList");
		})
		
		//숙박관리 클릭
		$("#stay_click").click(function(){
			$(".reservation_manager").css("display","block");
			$(".homepage_manager").css("display","none");
			$(".siteuse_manager").css("display","none");
			$(".where_manager").css("display","none");
			
			var content = "<h4>숙박 예약 관리 </h4>" +
						  "<ul class='nav nav-pills nav-stacked'>" +
			  			  "<li><a href='#section1'>숙박 예약 현황</a></li>" +
			  			  "<li><a href='#section2'>예약 취소</a></li>" +
				 		  "<li><a href='#section3'>메뉴3</a></li>" +
			  			  "<li><a href='#section3'>메뉴4</a></li>" +
			  			  "</ul><br>";

			$(".reservation_manager_content").html(content);
		})
		
		//렌트카관리클릭
		$("#car_click").click(function(){
			$(".reservation_manager").css("display","block");
			$(".homepage_manager").css("display","none");
			$(".siteuse_manager").css("display","none");
			$(".where_manager").css("display","none");
			
			var content = "<h4>렌트카 예약 관리 </h4>" +
						  "<ul class='nav nav-pills nav-stacked'>" +
						  "<li><a href='rentReservationList' target='contentFrame'>렌트카 예약 리스트</a></li>" +
						  "<li><a href='rentReservationCancelList' target='contentFrame'>예약 취소</a></li>" +
				 		  "<li><a href='rentAddPage' target='contentFrame'>차량 등록</a></li>" +
						  "<li><a href='rentDeletePage' target='contentFrame'>차량 삭제</a></li>" +
						  "</ul><br>";

			$(".reservation_manager_content").html(content);
			$("iframe").attr("src","rentReservationList");
		})
		
})