<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>

<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<title>동행... 당신의 이야기</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${css}style.css">
<link rel="stylesheet" href="${css}responsive.css" />

<script src="${js}vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



<script type="text/javascript">
	$(function(){
		$("#myPageBtn").click(function() {
			window.location='myPageStart'
		});
		$("#homeBtn").click(function() {
			window.location='main'
		});
		
		
	})
	
 	
</script>

<style type="text/css">
	#myPageBtn{   
		border: #7acce4 3px solid;
	    background-color: white;
	    font-size: 30px;
	    font-weight: 100;
	    color:#7acce4;
	}
	#homeBtn {
		border: #7acce4 3px solid;
	    background-color: white;
	    font-size: 30px;
	    font-weight: 100;
	    background-color: 7acce4;

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
					<a class="navbar-brand" href="main"> 
					홈<img src="#" class="logo logo-display" alt=""> 
					<img src="#" class="logo logo-scrolled" alt="">
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
		<!-- 예약이 정상적으로 완료되었을경우 -->
		<%--  --%>
		
		<br>
		<input type="hidden" value="${ nomal_token}">
		<input type="hidden" value="${ highClass_token}">
		<input type="hidden" value="${ premium_token}">

		<div class="container">
			<c:if test="${ nomal_token == 1 && highClass_token == 1 && premium_token == 1}">
		
			<div class="row">
				<div class="col-md-12">
					<center>
						<img src="${images }air/reserCompleteImg.png">
					</center>
				</div>
			</div><br>
			<div class="row">
				<div class="col-md-12">
					<center>
						<h2>항공권 예약이 정상적으로 완료되었습니다.</h2>
					</center>
				</div>
			</div><br>
			<div class="row">
				<div class="col-md-3 col-md-offset-3">
					<button class="btn btn-block btn-outline-info" id="myPageBtn">마이페이지</button>
				</div>
				<div class="col-md-3">
					<button class="btn btn-block btn-outline-info" id="homeBtn">홈으로</button>
				</div>
			</div><br><br>

			<div class="row">
				<div class="col-md-12">
					<div class="well well-lg">
						<h5><span class="glyphicon glyphicon-plane">구매정보</span></h5>
						<hr>
						<ul class="list-group">
						  <li class="list-group-item">항공편 : ${vo.airPlaneNo }</li>
						  <li class="list-group-item">출발 : ${vo.startLocation }</li>
						  <li class="list-group-item">도착 : ${vo.endLocation }</li>
						  <li class="list-group-item">출발일시 : ${startTime }</li>
						  <li class="list-group-item">도착일시 : ${endTime }</li>
						  <li class="list-group-item">
					  		<c:if test="${vo.adult>0}">
						  	<li class="list-group-item">
						  		구분/인원/좌석 : 성인/${vo.adult}명/
						  		<c:if test="${vo.seatLevel_adult=='nomal'}">일반석</c:if>
						  		<c:if test="${vo.seatLevel_adult=='highClass'}">고급석</c:if>
						  		<c:if test="${vo.seatLevel_adult=='premium'}">프리미엄석</c:if>
						  	</li>
						  	</c:if>
						  	<c:if test="${vo.student>0}">
						  	<li class="list-group-item">
						  		구분/인원/좌석 : 학생/${vo.student}명/
						  		<c:if test="${vo.seatLevel_student=='nomal'}">일반석</c:if>
						  		<c:if test="${vo.seatLevel_student=='highClass'}">고급석</c:if>
						  		<c:if test="${vo.seatLevel_student=='premium'}">프리미엄석</c:if>
						  	</li>
						  	</c:if>
						  	<c:if test="${vo.baby>0}">
						  	<li class="list-group-item">
						  		구분/인원/좌석 : 유아/${vo.baby}명/
						  		<c:if test="${vo.seatLevel_baby=='nomal'}">일반석</c:if>
						  		<c:if test="${vo.seatLevel_baby=='highClass'}">고급석</c:if>
						  		<c:if test="${vo.seatLevel_baby=='premium'}">프리미엄석</c:if>
						  	</li>
						  	</c:if>
						</ul>	
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<div class="well well-lg">
						<h5><span class="glyphicon glyphicon-shopping-cart">결제정보</span></h5>
						<hr>
						<ul class="list-group">
						  <li class="list-group-item">결제방법 : ${vo.payMethod }</li>
						  <li class="list-group-item">결제금액 : ${vo.price }</li>
						  <fmt:formatDate var="resTime" value="${vo.resTime}" pattern="yyyy-MM-dd HH시  mm분" />
						  <li class="list-group-item">결제일시 : ${resTime }</li>
						</ul>	
					</div>
				</div>
			</div>			
			</c:if>
			<c:if test="${ !(nomal_token == 1 && highClass_token == 1 && premium_token == 1) }">
				<div class="row">
					<div class="col-md-12">
						<center>
							<img src="${images }air/reserCompleteImg.png">
						</center>
					</div>
				</div><br>
				<div class="row">
					<div class="col-md-12">
						<center>
							<h2>항공권 예약실패 하였습니다.</h2>
						</center>
					</div>
				</div><br>
				<div class="row">
					<div class="col-md-3 col-md-offset-3">
						<button class="btn btn-block btn-outline-info" id="myPageBtn">마이페이지</button>
					</div>
					<div class="col-md-3">
						<button class="btn btn-block btn-outline-info" id="homeBtn">홈으로</button>
					</div>
				</div><br><br>
				
				<div class="row">
					<div class="col-md-12">
						<div class="well well-lg">
							<h5><span class="glyphicon glyphicon-remove-circle">구매실패 사유</span></h5>
							<hr>
							<ul class="list-group">
							  <c:if test="${nomal_token==0}">
							  	 <li class="list-group-item">일반석 매진 </li>
							  </c:if>
							  <c:if test="${highClass_token==0}">
							  	<li class="list-group-item">고급석 매진</li>
							  </c:if>
							  <c:if test="${premium_token==0}">
							  	 <li class="list-group-item">프리미엄석 매진</li>
							  </c:if>
							</ul>	
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12">
						<div class="well well-lg">
							<h5><span class="glyphicon glyphicon-plane">구매정보</span></h5>
							<hr>
							<ul class="list-group">
							  <li class="list-group-item">항공편 : ${vo.airPlaneNo }</li>
							  <li class="list-group-item">출발 : ${vo.startLocation }</li>
							  <li class="list-group-item">도착 : ${vo.endLocation }</li>
							  <li class="list-group-item">출발일시 : ${startTime }</li>
							  <li class="list-group-item">도착일시 : ${endTime }</li>
							  	<c:if test="${vo.adult>0}">
							  	<li class="list-group-item">
							  		구분/인원/좌석 : 성인/${vo.adult}명/
							  		<c:if test="${vo.seatLevel_adult=='nomal'}">일반석</c:if>
							  		<c:if test="${vo.seatLevel_adult=='highClass'}">고급석</c:if>
							  		<c:if test="${vo.seatLevel_adult=='premium'}">프리미엄석</c:if>
							  	</li>
							  	</c:if>
							  	<c:if test="${vo.student>0}">
							  	<li class="list-group-item">
							  		구분/인원/좌석 : 학생/${vo.student}명/
							  		<c:if test="${vo.seatLevel_student=='nomal'}">일반석</c:if>
							  		<c:if test="${vo.seatLevel_student=='highClass'}">고급석</c:if>
							  		<c:if test="${vo.seatLevel_student=='premium'}">프리미엄석</c:if>
							  	</li>
							  	</c:if>
							  	<c:if test="${vo.baby>0}">
							  	<li class="list-group-item">
							  		구분/인원/좌석 : 유아/${vo.baby}명/
							  		<c:if test="${vo.seatLevel_baby=='nomal'}">일반석</c:if>
							  		<c:if test="${vo.seatLevel_baby=='highClass'}">고급석</c:if>
							  		<c:if test="${vo.seatLevel_baby=='premium'}">프리미엄석</c:if>
							  	</li>
							  	</c:if>
							</ul>	
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12">
						<div class="well well-lg">
							<h5><span class="glyphicon glyphicon-shopping-cart">결제정보</span></h5>
							<hr>
							<ul class="list-group">
							  <li class="list-group-item">결제방법 : ${vo.payMethod }</li>
							  <li class="list-group-item">결제금액 : ${vo.price }</li>
							  <li class="list-group-item">결제여부 : 실패</li>
							</ul>	
						</div>
					</div>
				</div>			
			</c:if>
		</div>
		<!-- 예약이 정상적으로 완료되었을경우 -->
		
		<%-- <form style="display: none;" action="airResProc" method="POST" name="airResProcForm">
										<input type="hidden" name="airPlaneNo" value="${vo.airPlaneNo }">
										<input type="hidden" name="startLocation" value="${vo.startLocation }">
										<input type="hidden" name="endLocation" value="${vo.endLocation }">
										<input type="hidden" name="price" value="${vo.price }">
										<input type="hidden" name="seatLevel_adult" value="${vo.seatLevel_adult }">
										<input type="hidden" name="seatLevel_student" value="${vo.seatLevel_student }">
										<input type="hidden" name="seatLevel_baby" value="${vo.seatLevel_baby }">
										<input type="hidden" name="adult" value="${vo.adult }">
										<input type="hidden" name="student" value="${vo.student }">
										<input type="hidden" name="baby" value="${vo.baby }">
										<input type="hidden" name="memSize" value="${vo.adult+vo.student+vo.baby }">
										<input type="hidden" name="mem_id" value="${sessionScope.mem_id }">
										<input type="hidden" name="payMethod">
									</form> --%>
	
		
		
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