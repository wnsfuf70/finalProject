<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<title>Pouseidon - Free HTML5 Model Agency Bootstrap Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--Google Fonts link-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
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
<link rel="stylesheet" href="${css}where.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${css}style.css">
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
					<a class="navbar-brand" href="index"> 홈<img src="#"
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
		<%@include file="../main/modal/loginModal.jsp" %>
		<%@include file="../main/modal/registerModal.jsp" %>

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
						<img src="${images}background/bg_where_1.jpg" alt="travel1">
						<div class="carousel-caption">
							<h3>어디갈까?</h3>
							<p>The atmosphere in New York is lorem ipsum.</p>
						</div>
					</div>

					<div class="item">
						<img src="${images}background/bg_where_2.jpg" alt="travel2">
						<div class="carousel-caption">
							<h3>어디갈까?</h3>
							<p>Thank you, Chicago - A night we won't forget.</p>
						</div>
					</div>

					<div class="item">
						<img src="${images}background/bg_where_3.jpg" alt="travel3">
						<div class="carousel-caption">
							<h3>어디갈까?</h3>
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

		<section id="where">

			<br>
			<form name="search_main" method="post" action="search" onsubmit="">
				<div class="where_search">
					<div class="where_search-group">
						<input type="text" id="search" name="search"
							placeholder="찾고 싶은 장소를 입력해주세요."> <span
							class="where_search-group-btn">
							<button class="btn btn-success"
								onclick="window.location='search?search='+document.search_main.search.value">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</div>
			</form>
			<br>

			<!--Portfolio Section-->

			<!-- Portfolio container-->
			<div class="container" style="width: 1300px;">
				<div class="row">
					<div class="main-gallery main-model roomy-80"
						style="width: 1000px;">
						<div style="width: 1000px;">
							<h2>검색 결과</h2>
							<div class="separator_left" style="float: left;"></div>
							
						</div>

						<div style="clear: both;"></div>

						<div class="grid models text-center" style="width: 1000px;">
							<c:forEach var="vo" items="${vo_search}">
								<div class="grid-item model-item"
									style="width: 300px; height: 300px;">
									<img alt=""
										src="${images}where/trip_location/${vo.location_img1}">
									<a
										href="javascript:parent.change_parent_url('detail_view?location_num=${vo.location_num}');"
										class="btn btn-default m-top-20">${vo.location_name}</a>
								</div>
								<!-- End off grid item -->
							</c:forEach>
						</div>

					</div>
					
				</div>
				<div class="where_hot-spot"
					style="position: relative; left: 1000px; bottom: 200px;">
					<ul>
						<li>
							<button class="spot-btn" id="spot-btn1"
								onclick="window.location='where_main'">관광 장소</button>
						</li>
					</ul>

					<ul>
						<li>
							<button class="spot-btn" id="spot-btn2" onclick="window.location='where_main2'">맛집 장소</button>
						</li>
					</ul>
					<ul>
						<li>
							<button class="spot-btn" id="spot-btn3" onclick="window.location='where_main3'">레져 장소</button>
						</li>
					</ul>

					<ul>
						<li>
							<button class="spot-btn" id="spot-btn4" onclick="window.location='where_main4'">힐링 장소</button>
						</li>
					</ul>
				</div>
			</div>
			<!-- Portfolio container end -->

			<!-- End off portfolio section -->
	</div>
	</section>

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
	</div>

	<!-- JS includes -->

	<script type="text/javascript">
		function change_parent_url(url) {
			document.location = url;
		}
	</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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

	<script src="${js}bootstrap.green.min.js"></script>

	<script src="${js}where_main.js"></script>


</body>
</html>