<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>

<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<title>동행... 당신의 이야기</title>
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
<link rel="stylesheet" href="${css}style.css">
<link rel="stylesheet" href="${css}responsive.css" />

<script src="${js}vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	
</script>

<style type="text/css">
.resBtn {
	-moz-box-shadow: inset 0px 1px 0px 0px #9fb4f2;
	-webkit-box-shadow: inset 0px 1px 0px 0px #9fb4f2;
	box-shadow: inset 0px 1px 0px 0px #9fb4f2;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #7892c2
		), color-stop(1, #476e9e));
	background: -moz-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background: -webkit-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background: -o-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background: -ms-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background: linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#7892c2',
		endColorstr='#476e9e', GradientType=0);
	background-color: #7892c2;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	border: 1px solid #4e6096;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 14px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #283966;
}

.resBtn:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #476e9e
		), color-stop(1, #7892c2));
	background: -moz-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background: -webkit-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background: -o-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background: -ms-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background: linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#476e9e',
		endColorstr='#7892c2', GradientType=0);
	background-color: #476e9e;
}

.resBtn:active {
	position: relative;
	top: 1px;
}

.row {
	margin: 30px;
}
</style>

</head>

<body data-spy="scroll" data-target=".navbar-collapse">

	<!-- Preloader -->
	<div id="loading">
		<div id="loading-center">
			<div id="loading-center-absolute">
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
				<div class="object"></div>
			</div>
		</div>
	</div>
	<!--End off Preloader -->

	<div class="culmn">
		<!--Home page style-->
		<nav
			class="navbar navbar-default navbar-fixed white no-background bootsnav text-uppercase">
			<!-- Start Top Search -->
			<div class="top-search">
				<div class="container">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-search"></i></span>
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-addon close-search"><i
							class="fa fa-times"></i></span>
					</div>
				</div>
			</div>
			<!-- End Top Search -->

			<div class="container">
				<!-- Start Atribute Navigation -->
				<div class="attr-nav">
					<ul>
						<li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
					</ul>
				</div>
				<!-- End Atribute Navigation -->

				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="main"> 홈<img src="#"
						class="logo logo-display" alt=""> <img src="#"
						class="logo logo-scrolled" alt="">
					</a>
				</div>
				<!-- End Header Navigation -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
						data-out="fadeOutUp">
						<li><a href="plan">계획하기</a></li>
						<li><a href="story_write_myTourStory">이야기</a></li>
						<li><a href="where_main">어디갈까</a></li>
						<li><a href="recomandStart">추천여행기</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">예약 </a>
							<ul class="dropdown-menu">
								<li><a href="stayReservation">숙박 예약</a></li>
								<li><a href="airReservation">항공 예약</a></li>
								<li><a href="rentReservation">렌트카 예약</a></li>
							</ul></li>
						<c:if test="${sessionScope.mem_id == null}">
							<li><a href="" data-toggle="modal" data-target="#login">로그인</a></li>
							<li><a href="" data-toggle="modal" data-target="#register">회원가입</a></li>
						</c:if>
						<c:if test="${sessionScope.mem_id != null}">
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">${sessionScope.mem_id}님</a>
								<ul class="dropdown-menu">
									<li><a href="plan">계획하기</a></li>
									<li><a href="xxxStart">여행후기</a></li>
									<li><a href="myPageStart">마이페이지</a></li>
								</ul></li>

							<li><a href="logout">로그아웃</a></li>
						</c:if>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>

		</nav>
		<c:if test="${sessionScope.mem_id == null}">
			<%@include file="../../main/modal/loginModal.jsp"%>
			<%@include file="../../main/modal/registerModal.jsp"%>
		</c:if>

		<!--Home Sections-->

		<section id="hello" class="home bg-mega">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="${images}travel/Travel1.jpg" alt="travel1">
						<div class="carousel-caption">
							<h3>New York</h3>
							<p>The atmosphere in New York is lorem ipsum.</p>
						</div>
					</div>

					<div class="item">
						<img src="${images}travel/Travel2.jpg" alt="travel2">
						<div class="carousel-caption">
							<h3>Chicago</h3>
							<p>Thank you, Chicago - A night we won't forget.</p>
						</div>
					</div>

					<div class="item">
						<img src="${images}travel/Travel3.jpg" alt="travel3">
						<div class="carousel-caption">
							<h3>LA</h3>
							<p>Even though the traffic was a mess, we had the best time.</p>
						</div>
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>

		</section>
		<!--End off Home Sections-->

		<!-- 본문내용 작성자 : 유준렬 -->
		<br>

		<c:set var="r" value="${vo.r}" />
		<c:set var="a" value="${vo.a}" />
		<c:set var="s" value="${vo.s}" />

		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<center>
						<img src="${images }air/reserImg.png">
					</center>
				</div>
			</div>

			<!-- 항공정보 -->
			<br>
			<div class="row">
				<div class="col-md-6">
					<h4>
						<b>운행정보</b>
					</h4>
					<c:if test="${r.route2==null }">
						<div style="position: relative; left: 50px; top: 50px;">
							<fmt:formatDate var="st" value="${r.startTime}"
								pattern="yyyy-MM-dd HH시  mm분" />
							<fmt:formatDate var="at" value="${r.arrivalTime}"
								pattern="yyyy-MM-dd HH시 mm분" />
							<span style="font-size: 30px;">${r.route1 }</span> <small>(출발)</small>
							<span style="font-size: 30px;"><b>&nbsp;&nbsp;-&nbsp;&nbsp;</b></span>
							<span style="font-size: 30px;">${r.route3}</span> <small>(도착)</small>
							<br>
							<br>
							<div>출발시간 : ${st}</div>
							<div>도착시간 : ${at }</div>
						</div>
					</c:if>
					<c:if test="${r.route2!=null }">
						<div style="position: relative; left: 50px; top: 50px;">
							<fmt:formatDate var="st" value="${r.startTime}"
								pattern="yyyy-MM-dd HH시  mm분" />
							<fmt:formatDate var="mt" value="${r.midTime}"
								pattern="yyyy-MM-dd HH시 mm분" />
							<fmt:formatDate var="at" value="${r.arrivalTime}"
								pattern="yyyy-MM-dd HH시 mm분" />
							<span style="font-size: 30px;">${r.route1 }</span> <small>(출발)</small>
							<span style="font-size: 30px;"><b>&nbsp;&nbsp;-&nbsp;&nbsp;</b></span>
							<span style="font-size: 30px;">${r.route2 }</span> <small>(경유)</small>
							<span style="font-size: 30px;"><b>&nbsp;&nbsp;-&nbsp;&nbsp;</b></span>
							<span style="font-size: 30px;">${r.route3}</span> <small>(도착)</small>
							<br>
							<br>
							<div>출발시간 : ${st}</div>
							<div>경유지 도착시간 : ${mt}</div>
							<div>목적지 도착시간 : ${at }</div>
						</div>
					</c:if>
				</div>
				<div class="col-md-6">
					<h4>
						<b>구분/좌석별 금액</b>
					</h4>
					<h6>1km 요금</h6>
					<table class="table" border="1">
						<thead>
							<tr>
								<th>구분/좌석</th>
								<td>일반석</td>
								<td>고급석</td>
								<td>프리미엄석</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>성인</th>
								<td>${s.nomal_A }</td>
								<td>${s.highClass_A }</td>
								<td>${s.premium_A }</td>
							</tr>
							<tr>
								<th>학생</th>
								<td>${s.nomal_B }</td>
								<td>${s.highClass_B }</td>
								<td>${s.premium_B }</td>
							</tr>
							<tr>
								<th>유아</th>
								<td>${s.nomal_C }</td>
								<td>${s.highClass_C }</td>
								<td>${s.premium_C }</td>
							</tr>
						</tbody>

					</table>
				</div>
			</div>
			<!--  -->
			<br>
			<h4>
				<b>항공티켓 구매</b>
			</h4>
			<br>

			<div class="well well-lg" style="background-color: #edf6fb">
				<div class="row">
					<div class="col-md-2">
						<div class="form-group">
							<label for="numSize">인원</label> 
							<input type="number"
								class="form-control" id="numSize" placeholder="인원수">
						</div>
					</div>

					<div class="col-md-2">
						<div class="form-group">
							<label for="ages">좌석</label> 
							<select id="" name=""
								class="form-control">
								<option value="">일반석</option>
								<option value="">고급석</option>
								<option value="">프리미엄석</option>
							</select>
						</div>
						<c:if test="${r.route2!=null}">
							<div class="form-group">
								<label for="ages">목적지 선택</label> 
								<select id="" name=""
									class="form-control">
									<option value="">도착지</option>
									<option value="">경유지</option>
								</select>
							</div>
						</c:if>
					</div>

					<div class="col-md-2">
						<div class="form-group">
							<label for="">구분</label> <select id="" name=""
								class="form-control">
								<option value="">성인</option>
								<option value="">학생</option>
								<option value="">유아</option>
							</select>
						</div>
					</div>
					<div class="col-md-4 col-md-offset-1">
						<h5>
							<b>좌석현황</b>
						</h5>
						<div class="well well-lg">
							<ul class="list-group">
								<li class="list-group-item">일반석&nbsp;:&nbsp;<span>${a.nomal }</span></li>
								<li class="list-group-item">고급석&nbsp;:&nbsp;<span>${a.highClass }</span></li>
								<li class="list-group-item">프리미엄석&nbsp;:&nbsp;<span>${a.premium }</span></li>
								<li class="list-group-item">남은 좌석수&nbsp;:&nbsp;<span>${a.nomal+a.highClass+a.premium}</span></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div><h4><b>결제금액</b> : <span>0 원</span></h4></div>
				</div>
			</div>



		</div>

		<div class="container" id="test">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<a href="" class="resBtn">예약하기</a>

				</div>

			</div>


			<!-- <table class="table">
							<thead>
								<tr>
									<td>가격코드</td>
									<td>노선번호</td>
									
									<td>항공기번호</td>
									<td>항공기명</td>
									<td>출발지</td>
									<td>경유지</td>
									<td>도착지</td>
									
									<td>프리미엄석수</td>
									<td>고급석수</td>
									<td>일반석수</td>
									
								</tr>
								
								<tr>
								
									<td>출발시각</td>
									<td>경유지도착시각</td>
									<td>도착지도착시각</td>
									<td>경유지까지거리</td>
									<td>경유지에서도착지까지거리</td>
									<td>출발지에서도착지까지거리</td>
									
									<td>가격정보</td>
									
									
									<td>예약번호</td>
									<td>예약자아이디</td>
									<td>예약인원</td>
									<td>가격</td>
									<td>구분(나이대)</td>
									<td>좌석등급</td>
									<td>예약일자</td>
									
								</tr>
								
							</thead>
							
						</table> -->


		</div>

	</div>
	<br>
	<br>
	<!-- 본문내용 작성자 : 유준렬 -->

	<!--Company section-->
	<section id="company" class="company bg-light">
		<div class="container">
			<div class="row">
				<div class="main_company roomy-100 text-center">
					<h3 class="text-uppercase">동 행</h3>
					<p>가산 다지털 단지 - 한국 소프트웨어 인재 개발원</p>
					<p>
						010 - 1234 - 5678<br> info@poiseidon.lnk
					</p>
				</div>
			</div>
		</div>
	</section>


	<!-- scroll up-->
	<div class="scrollup">
		<a href="#"><i class="fa fa-chevron-up"></i></a>
	</div>
	<!-- End off scroll up -->


	<footer id="footer" class="footer bg-mega">
		<div class="container">
			<div class="row">
				<div class="main_footer p-top-40 p-bottom-30">
					<div class="col-md-6 text-left sm-text-center">
						<p class="wow fadeInRight" data-wow-duration="1s">
							Made with <i class="fa fa-heart"></i> by <a target="_blank"
								href="http://bootstrapthemes.co">Bootstrap Themes</a> 2016. All
							Rights Reserved
						</p>
					</div>
					<div class="col-md-6 text-right sm-text-center sm-m-top-20">
						<ul class="list-inline">
							<li><a href="">Facebook</a></li>
							<li><a href="">Twitter</a></li>
							<li><a href="">Instagram</a></li>
							<li><a href="">Pinterest</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>


	<!-- JS includes -->
	<script src="${js}vendor/jquery-1.11.2.min.js"></script>
	<script src="${js}vendor/bootstrap.min.js"></script>
	<script src="${js}isotope.min.js"></script>
	<script src="${js}jquery.magnific-popup.js"></script>
	<script src="${js}jquery.easing.1.3.js"></script>
	<script src="${js}slick.min.js"></script>
	<script src="${js}jquery.collapse.js"></script>
	<script src="${js}bootsnav.js"></script>
	<script src="${js}plugins.js"></script>
	<script src="${js}main.js"></script>

</body>
</html>