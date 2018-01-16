<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>

<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<title>Pouseidon - Free HTML5 Model Agency Bootstrap Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">

<!--Google Fonts link-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
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
						<img src="#"class="logo logo-scrolled" alt="">
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
							</ul>
						</li>
					<c:if test="${sessionScope.mem_id == null}">					
						<li><a href="" data-toggle="modal" data-target="#login">로그인</a></li>
						<li><a href="" data-toggle="modal" data-target="#register">회원가입</a></li>
					</c:if>
					<c:if test="${sessionScope.mem_id != null}">
						<li class="dropdown">
						<a class="dropdown-toggle"
							data-toggle="dropdown" href="#">${sessionScope.mem_id}님</a>
							<ul class="dropdown-menu">
								<li><a href="plan">계획하기</a></li>
								<li><a href="xxxStart">여행후기</a></li>
								<li><a href="myPageStart">마이페이지</a></li>
							</ul>
						</li>
								
						<li><a href="logout" >로그아웃</a></li>
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
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> 
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> 
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</section>
		<br>
		<!--End off Home Sections-->
		
		<div class="container">
		 <form action="rentList" method="post" name="rentForm">
			<h2>차량 예약</h2>
				<div class="row">
				    <div class="col-sm-1">
				    	대여일 :
				    </div>
				    <div class="col-sm-5">
				    	<input type="datetime-local" name="rental_day">
				    </div>
				    <div class="col-sm-1">
						반납일 :
				    </div>
				    <div class="col-sm-5">
				    	 <input type="datetime-local" name="return_day">
				    </div>			    			    			
				</div>
				<br>
				<div class="row">
					 <div class="col-sm-1">
						차량유형 :		    
				    </div>
				    <div class="col-sm-6">
						 전체<input type="checkbox" name="car_kind" value="전체">
						 소형<input type="checkbox" name="car_kind" value="소형"> 
			   	 	          중형<input type="checkbox" name="car_kind" value="중형"> 
						 대형<input type="checkbox" name="car_kind" value="대형">
						SUV<input type="checkbox" name="car_kind" value="SUV"> 
					        스포츠<input type="checkbox" name="car_kind" value="스포츠">			    
				    </div>
				</div>
				<div class="row">
					<center><input type="submit" id="car_search" name="search_rent" value="검색"></center>
				</div>
				</form>
		 
		</div>

		<!--Company section-->

		<section id="company" class="company bg-light">
			<div class="container">
				<div class="row">
					<div class="main_company roomy-100 text-center">
						<h3 class="text-uppercase">동 행</h3>
						<p>가산 다지털 단지 - 한국 소프트웨어 인재 개발원</p>
						<p>010 - 1234 - 5678<br>
						info@poiseidon.lnk</p>
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




	</div>

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