<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<h4>항공검색</h4>
	<table class="table">
		<thead>
			<tr>
				<td><b>항공기번호</b> | 항공편</td>
				<td>출발지</td>
				<td>경유지</td>
				<td>도착지</td>
				<td>출발시간</td>
				<td>경유지도착시간</td>
				<td>도착시간</td>
				<td>총 비행거리</td>
				<td>가격보기</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="i" items="${searchResultVO}">
				<c:set var="r" value="${i.r}" />
				<c:set var="a" value="${i.a}" />
				<tr>
					<td><b>${a.airPlaneNo }</b> | ${a.airPlaneName }</td>
					<td>${r.route1 }</td>
					<td>${r.route2 }</td>
					<td>${r.route3 }</td>
					<td>${r.startTime }</td>
					<td>${r.midTime }</td>
					<td>${r.arrivalTime }</td>
					<td>${r.distance1+r.distance2 }</td>
					<td><button class="btn btn-outline-info" 
						style="border-color: #7acce4; background-color: white;">
						이용금액
						</button>
					</td>
				</tr>
				<!--
					private String airPlaneNo;
					private String airPlaneName;
					private String airPortNo;
					private String routeNo;
					private String seatPriceCode;
					private int premium;
					private int highClass;
					private int nomal;
				
				
					private String routeNo;
					private String route1;
					private String route2;
					private String route3;
					private Timestamp startTime;
					private Timestamp midTime;
					private Timestamp arrivalTime;
					private int distance1;
					private int distance2; -->
			</c:forEach>
		</tbody>
	</table>
	
</body>
</html>