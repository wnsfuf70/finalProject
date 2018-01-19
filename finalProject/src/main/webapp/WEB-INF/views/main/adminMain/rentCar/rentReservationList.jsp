<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../setting.jsp"%>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<title>Pouseidon - Free HTML5 Model Agency Bootstrap Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">
<!--Google Fonts link-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i"
	rel="stylesheet">
<link rel="stylesheet" href="${css}slick.css">
<link rel="stylesheet" href="${css}slick-theme.css">
<link rel="stylesheet" href="${css}animate.css">
<link rel="stylesheet" href="${css}fonticons.css">
<link rel="stylesheet" href="${css}font-awesome.min.css">
<link rel="stylesheet" href="${css}bootstrap.css">
<link rel="stylesheet" href="${css}magnific-popup.css">
<link rel="stylesheet" href="${css}bootsnav.css">
<link rel="stylesheet" href="${css}carousel.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
<style type="text/css">
  table {
    border-collapse: collapse;
    width: 100%;
	}
	
	th, td {
	    padding: 8px;
	    text-align: left;
	    border-bottom: 1px solid #ddd;
	}
	#paging,tr,th{
		text-align:center;
	 }
	 .table table-hover,tr,th,td{
	 	text-align:center;
	 }
</style>
<!--For Plugins external css-->
<!--<link rel="stylesheet" href="${css}plugins.css" />-->
<!--Theme custom css -->
<link rel="stylesheet" href="${css}style.css">
<!--<link rel="stylesheet" href="${css}colors/maron.css">-->
<!--Theme Responsive css-->
<link rel="stylesheet" href="${css}responsive.css" />
<script src="${js}vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
<body>
<br>
	<center><h4>차량예약 리스트</h4></center>
	
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<form action="" method="post" name="reservationForm">
					<table class="table table-hover">
						<tr>
							<th>번호</th>
							<th>차량</th>
							<th>아이디</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>대여일</th>
							<th>반납일</th>
							<th>총가격</th>
							<th>상태</th>
						</tr>
						<c:forEach var="list" items="${dtos}">
							<tr>
								<td>${list.seq}</td>
								<td>${list.car_name}</td>
								<td>${list.mem_id}</td>
								<td>${list.name}</td>
								<td>${list.phone1}-${list.phone2}-${list.phone3}</td>
								<td>${list.rental_day} ${list.rental_time}</td>
								<td>${list.return_day} ${list.return_time}</td>
								<td>${list.price}</td>
								<c:if test="${list.car_count == 0}">
								<td>차량 대여중</td>
								</c:if>
								<c:if test="${list.car_count == 1}">
								<td>완료</td>
								</c:if>
							</tr>
						</c:forEach>
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
	</div>
</body>
</html>