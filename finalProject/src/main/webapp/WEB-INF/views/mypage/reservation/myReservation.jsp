<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	

//ajax 페이지요청
	
	function getAirResList(requestPage){
	
		$.ajax({
			
			url: "getAirResList?requestPage="+requestPage ,
			type:'GET',
			success :function(msg){
				$("#air_res_list").html(msg);
			}
			,
			error : function(){
				alert("error");
			}
			
		})		
	
	}
	
	function getCarResList(requestPage){
		
		$.ajax({
			
			url: "getCarResList?requestPage="+requestPage ,
			type:'GET',
			success :function(msg){
				$("#car_res_list").html(msg);
			}
			,
			error : function(){
				alert("error");
			}
			
		})		
	
	}
	
//ajax 페이지요청
	
//예약 취소
	
	function airResCancel(airplaneNo , airResNo){
	
		if(confirm("예약을 취소하겠습니까?")){

			$.ajax({
				
				url: "airResCancel?airplaneNo="+airplaneNo+"&airResNo="+airResNo,
				type:'GET',
				success :function(msg){
					$("#air_res_list").html(msg);
				}
				,
				error : function(){
					alert("error");
				}
				
			})		
		}
		return false;
		
	}
	
	
</script>
</head>
<body>
	<h2>나의 예약 목록</h2><br><br>
	
	
	<script type="text/javascript">
			$(document).ready(function(){
				
			  $("#search").on("keyup", function() {
			    var value = $(this).val().toLowerCase();
			   
			    $("#air_res_list tr").filter(function() {
			      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			    
			    });
			    
			    $("#car_res_list tr").filter(function() {
				      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				    
				    });
			  
			  });
			
			});
	</script>
	
	<div class="container">
		<div class="row">
			<input class="form-control" id="search" type="text" placeholder="Search..">
		</div>

		<div class="row">
			<h4>숙박예약목록</h4>
		</div>
		<hr>
		
		<div class="row">
			<h4>항공예약목록</h4>
			
			<table class="table" >
				<thead>
					<tr>
						<td>번호</td>
						<td>출발지</td>
						<td>도착지</td>
						<td>인원<small>(성인|학생|유아)</small></td>
						<td>좌석등급<small>(성인|학생|유아)</small></td>
						<td>결제금액</td>
						<td>결제수단</td>
						<td>결제일시</td>
						<td></td>
					</tr>
				</thead>
				<tbody id="air_res_list">
					<c:forEach var="airRes" items="${voList_air }">
						<tr>
							<td>${airRes.seq }</td>
							<td>${airRes.startLocation }</td>
							<td>${airRes.endLocation }</td>
							<td>
								${airRes.memSize}
								<small>
									(${airRes.adult }|${airRes.student }|${airRes.baby })
								</small>
							</td>
							<td>
								<small>(
									<c:if test="${airRes.seatLevel_adult=='nomal'}">일반|</c:if>
									<c:if test="${airRes.seatLevel_adult=='highClass'}">고급|</c:if>
									<c:if test="${airRes.seatLevel_adult=='premium'}">프리미엄|</c:if>
									<c:if test="${airRes.seatLevel_adult=='noSelect'}">x|</c:if>
									
									<c:if test="${airRes.seatLevel_student=='nomal'}">일반|</c:if>
									<c:if test="${airRes.seatLevel_student=='highClass'}">고급|</c:if>
									<c:if test="${airRes.seatLevel_student=='premium'}">프리미엄|</c:if>
									<c:if test="${airRes.seatLevel_student=='noSelect'}">x|</c:if>
									
									<c:if test="${airRes.seatLevel_baby =='nomal'}">일반|</c:if>
									<c:if test="${airRes.seatLevel_baby=='highClass'}">고급|</c:if>
									<c:if test="${airRes.seatLevel_baby=='premium'}">프리미엄|</c:if>
									<c:if test="${airRes.seatLevel_baby=='noSelect'}">x|</c:if>
									)
								</small>
							</td>
							<td>${airRes.price }</td>
							<td>${airRes.payMethod}</td>
							<td>${airRes.resTime }</td>
							<td>
								<button class="btn btn-primary" onclick="airResCancel('${airRes.airPlaneNo}','${airRes.airResNo}')">예약취소</button>
							</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="9" style="text-align: center;">
							<c:if test="${blockStartNumber_air!=1}">
								<input type="button" value="[◀◀]" onclick="getAirResList('${startPage_air}')">
								<input type="button" value="[◀]" onclick="getAirResList('${blockStartNumber_air-1}')">
							</c:if>
							<c:forEach var="n" begin="${blockStartNumber_air}" end="${blockEndNumber_air}">
								<c:if test="${n!=pageNum_air}">
									<a href="#" onclick="getAirResList('${n}')">${n}</a>
								</c:if>
								<c:if test="${n==pageNum_air}">
									<b>${n}</b>
								</c:if>
							</c:forEach>
							<c:if test="${blockEndNumber_air!=endPage_air}">
								<input type="button" value="[▶]" onclick="getAirResList('${blockEndNumber_air+1}')">
								<input type="button" value="[▶▶]" onclick="getAirResList('${endPage_air}')">
							</c:if>
						</td>
					</tr>
				</tbody>

			</table>
			
	
	
		</div>
		<hr>
	
	
		<div class="row">
			<h4>렌트예약목록</h4>
			
			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>대여일</th>
						<th>반납일</th>
						<th>차량</th>
						<th>결제금액</th>
						<th>결제수단</th>
						<th>상태</th>
					</tr>
				</thead>
				<tbody id="car_res_list">
					<c:forEach var="list" items="${dtos_car}">
					<tr>
							<td>${list.seq}</td>
							<td>${list.rental_day} ${list.rental_time}</td>
							<td>${list.return_day} ${list.return_time}</td>
							<td>${list.car_name}</td>
							<td>${list.price}</td>
							<td>${list.payment}</td>
							<td></td>
					</tr>
					</c:forEach>
					<tr>
						<td colspan="7" style="text-align: center;">
							<%-- <c:if test="${blockStartNumber!=1}">
								<input type="button" value="[◀◀]" onclick="window.location='rentReservationList?requestPage=${startPage}'">
								<input type="button" value="[◀]" onclick="window.location='rentReservationList?requestPage=${blockStartNumber-1}'">
							</c:if>
							<c:forEach var="n" begin="${blockStartNumber}" end="${blockEndNumber}">
								<c:if test="${n!=pageNum}">
									<a href="rentReservationList?requestPage=${n}">${n}</a>
								</c:if>
								<c:if test="${n==pageNum}">
									<b>${n}</b>
								</c:if>
							</c:forEach>
							<c:if test="${blockEndNumber!=endPage}">
								<input type="button" value="[▶]" onclick="window.location='rentReservationList?requestPage=${blockEndNumber+1}'">
								<input type="button" value="[▶▶]" onclick="window.location='rentReservationList?requestPage=${endPage}'">
							</c:if> --%>
							<c:if test="${blockStartNumber_car!=1}">
								<input type="button" value="[◀◀]" onclick="getCarResList('${startPage_car}')">
								<input type="button" value="[◀]" onclick="getCarResList('${blockStartNumber_car-1}')">
							</c:if>
							<c:forEach var="n" begin="${blockStartNumber_car}" end="${blockEndNumber_car}">
								<c:if test="${n!=pageNum_car}">
									<a href="#" onclick="getCarResList('${n}')">${n}</a>
								</c:if>
								<c:if test="${n==pageNum_car}">
									<b>${n}</b>
								</c:if>
							</c:forEach>
							<c:if test="${blockEndNumber_car!=endPage_car}">
								<input type="button" value="[▶]" onclick="getCarResList('${blockEndNumber_car+1}')">
								<input type="button" value="[▶▶]" onclick="getCarResList('${endPage_car}')">
							</c:if>
						</td>
					</tr>
				</tbody>
			</table>
			
			
			
		</div>
		<hr>
	</div>
	
</body>
</html>