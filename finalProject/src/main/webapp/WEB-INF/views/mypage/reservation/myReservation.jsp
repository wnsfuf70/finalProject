<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="${css}bootstrap.mypage.css">
<link rel="stylesheet" href="${css}responsive.css" />
<title>Insert title here</title>
</head>
<body>
	<h2>예약 목록</h2>
	
	<div class="container">
		<div class="row">
			<h4>숙박예약목록</h4>
		</div>
		<hr>
		<div class="row">
			<h4>항공예약목록</h4>
			
			
			
			
		
			
			
			
		</div>
		<hr>
		<div class="row">
			<div class="col-md-12">
				<h4>렌트예약목록</h4>
				<form action="" method="post" name="re_List">
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
						<tbody>
							<c:forEach var="list" items="${dtos}">
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
						</tbody>
					</table>
				</form>	
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<table id="paging">
					<tr>
						<th align="center">
								<!-- 처음[◀◀] / 이전 블록[◀] -->
							<c:if test="${blockStartNumber!=1}">
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
							</c:if>
						</th>
					</tr>
				</table>
			</div>
		</div>
		<hr>
	</div>
	
</body>
</html>