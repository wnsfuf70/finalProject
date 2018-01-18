<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style type="text/css">
		.modalDivTable {display: table; width: 100%;}
		.divTablerow {display: table-row;}
		.cell {display: table-cell; padding: 3px; border-bottom: 1px solid #DDD;}
		.col1 { width: 25%;}
		.col2 {width: 25%;}
		.col3 {width: 25%;}
		.col4 {width: 25%;}
	</style>
	<script type="text/javascript">
		function buyBtn(no) {
			
			$("#"+no).modal('show');
			return false;
		}
		
		function buyTiket(no) {
			window.location="airTiketBuyPageStep1?airPlaneNo="+no;
		}
		
		
	</script>
</head>
<body>
					
	<h4>항공검색</h4>
	<table class="table">
		<thead>
			<tr>
				<td><b>항공기번호</b> | 항공편</td>
				<td>출발지</td>
				<td>도착지</td>
				<td>출발시간</td>
				<td>도착시간</td>
				<td>상세보기</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="i" items="${searchResultVO}">
				<c:set var="r" value="${i.r}" />
				<c:set var="a" value="${i.a}" />
				<c:set var="s" value="${i.s }" />
				<tr>
					<td><b>${a.airPlaneNo }</b> | ${a.airPlaneName }</td>
					<td>${r.route1 }</td>
					<td>${r.route3 }</td>
					<td>${r.startTime }</td>
					<td>${r.arrivalTime }</td>
					<td><button class="btn btn-outline-info" 
						style="border-color: #7acce4; background-color: white;" onclick="buyBtn('${a.airPlaneNo}');">
						구매
						</button>
					</td>
				</tr>
				<!-- Modal -->
					  <div class="modal fade" id="${a.airPlaneNo}" role="dialog">
					    <div class="modal-dialog" style="z-index: 9999;">
					      <!-- Modal content-->
					      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h3 class="modal-title">운항정보 상세</h3>
						        </div>
						        <div class="modal-body">
						        	<div class="form-group">
										총 비행거리 : ${r.distance1+r.distance2} km
									</div>
									<hr>
									<div class="form-group">
										출발지 : ${r.route1 }
										<c:if test="${r.route2!=null }">
										<br>경유지 : ${r.route2}
										</c:if>
										<br>도착지 : ${r.route3 }
									</div>
									<hr>
									<div class="form-group">
										출발 시간 : ${r.startTime }
										<c:if test="${r.route2!=null }">
										<br>경유지 도착 시간 : ${r.midTime}
										</c:if>
										<br>도착 시간 : ${r.arrivalTime }
									</div>
									<hr>
									
									<c:if test="${ r.route2!=null}">
									<div class="form-group">
										<h3>운행요금</h3>
										<br>
										<h5>경유지까지</h5>
										<div class="modalDivTable">
											<div class="divTablerow">
												<span class="cell col1">구분/좌석</span>
												<span class="cell col2">일반석</span>
												<span class="cell col3">고급석</span>
												<span class="cell col4">프리미엄석</span>
											</div>
											<div class="divTablerow">
												<span class="cell col1">성인</span>
												<span class="cell col2">${s.nomal_A *(r.distance1) }</span>
												<span class="cell col3">${s.highClass_A * (r.distance1) }</span>
												<span class="cell col4">${s.premium_A * (r.distance1) }</span>
											</div>
											<div class="divTablerow">
												<span class="cell col1">학생</span>
												<span class="cell col2">${s.nomal_B *(r.distance1) }</span>
												<span class="cell col3">${s.highClass_B *(r.distance1) }</span>
												<span class="cell col4">${s.premium_B *(r.distance1) }</span>
											</div>
											<div class="divTablerow">
												<span class="cell col1">유아</span>
												<span class="cell col2">${s.nomal_C *(r.distance1) }</span>
												<span class="cell col3">${s.highClass_C *(r.distance1) }</span>
												<span class="cell col4">${s.premium_C *(r.distance1) }</span>
											</div>
										</div>
										<h5>도착지까지</h5>
										<div class="modalDivTable">
											<div class="divTablerow">
												<span class="cell col1">구분/좌석</span>
												<span class="cell col2">일반석</span>
												<span class="cell col3">고급석</span>
												<span class="cell col4">프리미엄석</span>
											</div>
											<div class="divTablerow">
												<span class="cell col1">성인</span>
												<span class="cell col2">${s.nomal_A *(r.resultDistance) }</span>
												<span class="cell col3">${s.highClass_A * (r.resultDistance) }</span>
												<span class="cell col4">${s.premium_A * (r.resultDistance) }</span>
											</div>
											<div class="divTablerow">
												<span class="cell col1">학생</span>
												<span class="cell col2">${s.nomal_B *(r.resultDistance) }</span>
												<span class="cell col3">${s.highClass_B * (r.resultDistance) }</span>
												<span class="cell col4">${s.premium_B *(r.resultDistance) }</span>
											</div>
											<div class="divTablerow">
												<span class="cell col1">유아</span>
												<span class="cell col2">${s.nomal_C *(r.resultDistance) }</span>
												<span class="cell col3">${s.highClass_C *(r.resultDistance) }</span>
												<span class="cell col4">${s.premium_C *(r.resultDistance) }</span>
											</div>
										</div>
									</div>
									</c:if>
									<c:if test="${ r.route2==null}">
									<div class="form-group">
										<h3>운행요금</h3>
										<div class="modalDivTable">
											<div class="divTablerow">
												<span class="cell col1">구분/좌석</span>
												<span class="cell col2">일반석</span>
												<span class="cell col3">고급석</span>
												<span class="cell col4">프리미엄석</span>
											</div>
											<div class="divTablerow">
												<span class="cell col1">성인</span>
												<span class="cell col2">${s.nomal_A *(r.distance1+r.distance2) }</span>
												<span class="cell col3">${s.highClass_A * (r.distance1+r.distance2) }</span>
												<span class="cell col4">${s.premium_A * (r.distance1+r.distance2) }</span>
											</div>
											<div class="divTablerow">
												<span class="cell col1">학생</span>
												<span class="cell col2">${s.nomal_B *(r.distance1+r.distance2) }</span>
												<span class="cell col3">${s.highClass_B *(r.distance1+r.distance2) }</span>
												<span class="cell col4">${s.premium_B *(r.distance1+r.distance2) }</span>
											</div>
											<div class="divTablerow">
												<span class="cell col1">유아</span>
												<span class="cell col2">${s.nomal_C *(r.distance1+r.distance2) }</span>
												<span class="cell col3">${s.highClass_C *(r.distance1+r.distance2) }</span>
												<span class="cell col4">${s.premium_C *(r.distance1+r.distance2) }</span>
											</div>
										</div>
									</div>
									</c:if>
									<div class="form-group">
										
									</div>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" onclick="buyTiket('${a.airPlaneNo}')">티켓구매</button>	
						          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						        </div>
					      
					      </div>
					      
					    </div>
					  </div>
			</c:forEach>
		</tbody>
	</table>
	
</body>
</html>