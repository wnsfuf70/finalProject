<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<title>Pouseidon - Free HTML5 Model Agency Bootstrap Template</title>
<style>
#map {
	height: 400px;
	width: 100%;
}
</style>

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
<link rel="stylesheet" href="${css}where.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

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
		<c:if test="${sessionScope.mem_id == null}">
			<%@include file="../main/modal/loginModal.jsp" %>
			<%@include file="../main/modal/registerModal.jsp" %>
		</c:if>
		
			
		<!--Home Sections-->

		<section id="hello" class="model-banner bg-mega" style="height: 70px;">
			<div class="overlay"></div>
		</section>
		<!--End off Home Sections-->

		<!--Model Details Section-->
		<section id="m_details" class="m_details roomy-100 fix">
			<div class="container">
				<div class="row">
					<div class="main_details">
						<div class="col-md-6">
							<div class="m_details_img">
								<img src="${images}where/trip_location/${vo.location_img1}"
									alt="" />
							</div>
						</div>
						<div class="col-md-6">
							<div class="m_details_content m-bottom-40">
								<h2>${vo.location_name}</h2>
								<p>${vo.detail_info}</p>
							</div>
							<hr />
							<div class="person_details m-top-40">
								<div class="row">
									<div class="col-md-2 text-left">
										<p>장소 주소:</p>
										<p>좌표:</p>
										<p>개장 시간:</p>
										<p>폐장 시간:</p>
										<p>웹 사이트:</p>
										<p>지역:</p>
										<p>테마:</p>
									</div>
									<div class="col-md-9 text-left">
										<p>${vo.location_addr}</p>
										<p>${vo.x_coordinate}, ${vo.y_coordinate}</p>
										<p>${vo.open_time}</p>
										<p>${vo.close_time}</p>
										<p>
											<c:if test="${vo.location_web != null}">
												<a href="http://${vo.location_web}" target="_blank">${vo.location_web}</a>
											</c:if>
											<c:if test="${vo.location_web == null}">
												없음
											</c:if>
										</p>
										<p>${vo.area}</p>
										<p>${vo.thema_category}</p>
									</div>
								</div>
							</div>
						</div>


						<c:set var="total"
							value="${vo.like_score+vo.normal_score+vo.bad_score}" />
						<fmt:formatNumber value="${(vo.like_score/total)*100}"
							type="number" var="like" pattern=".00" />
						<fmt:formatNumber value="${(vo.normal_score/total)*100}"
							type="number" var="normal" pattern=".00" />
						<fmt:formatNumber value="${(vo.bad_score/total)*100}"
							type="number" var="bad" pattern=".00" />

						<div class="col-md-12">
							<div class="skill_bar m-top-70">
								<div class="row">
									<div class="col-md-6">
										<div class="teamskillbar clearfix m-top-50"
											data-percent="${like}%">
											<h6 class="one">
												<a
													href="detail_view_score?like_score=1&normal_score=null&bad_score=null&location_num=${vo.location_num}"
													style="color: #4cae4c;"> 좋아요</a><span class="pull-right">${like}%</span>
											</h6>
											<div class="teamskillbar-bar"></div>
										</div>
										<!-- End Skill Bar -->

										<div class="teamskillbar clearfix m-top-50"
											data-percent="${bad}%">
											<h6 class="three">
												<a
													href="detail_view_score?like_score=null&normal_score=null&bad_score=1&location_num=${vo.location_num}"
													style="color: red;"> 싫어요</a> <span class="pull-right">${bad}%</span>
											</h6>
											<div class="teamskillbar-bar"></div>
										</div>
										<!-- End Skill Bar -->

									</div>

									<div class="col-md-6">

										<div class="teamskillbar clearfix m-top-50"
											data-percent="${normal}%">
											<h6 class="two">
												<a
													href="detail_view_score?like_score=null&normal_score=1&bad_score=null&location_num=${vo.location_num}"
													style="color: #2786FF;"> 보통이에요</a> <span class="pull-right">${normal}%</span>
											</h6>
											<div class="teamskillbar-bar"></div>
										</div>
										<!-- End Skill Bar -->
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- End off row -->
			</div>
			<!-- End off container -->
		</section>
		<!-- End off Model Details Section -->
		<c:if test="${vo.location_img2 !=null}">
			<!--Gallery Section-->
			<section id="gallery" class="gallery margin-top-120 bg-grey">
				<!-- Gallery container-->
				<div class="container">
					<div class="row">
						<div class="main-gallery roomy-80">
							<div class="col-md-12 m-bottom-70">
								<div class="head_title text-left sm-text-center wow fadeInDown">
									<h2>다른 사진들</h2>
									<h5>
										<em>Other Picture...</em>
									</h5>
									<div class="separator_left"></div>
								</div>
							</div>


							<div style="clear: both;"></div>

							<div class="grid text-center">
								<div class="grid-item transition metal ium">
									<img alt=""
										src="${images}where/trip_location/${vo.location_img2}"
										style="height: 250px;">
									<div class="grid_hover_area text-center">
										<div class="grid_hover_text m-top-50">
											<h4 class="text-blue">전체 보기</h4>
											<a href="${images}where/trip_location/${vo.location_img2}"
												class="popup-img text-blue m-top-40">View <i
												class="fa fa-long-arrow-right"></i></a>
										</div>
									</div>
								</div>
								<!-- End off grid item -->
								<c:if test="${vo.location_img3 != null}">
									<div class="grid-item metalloid ">
										<img alt=""
											src="${images}where/trip_location/${vo.location_img3}"
											style="height: 250px;">
										<div class="grid_hover_area text-center">
											<div class="grid_hover_text m-top-50">
												<h4 class="text-blue">전체 보기</h4>
												<a href="${images}where/trip_location/${vo.location_img3}"
													class="popup-img text-blue m-top-40">View <i
													class="fa fa-long-arrow-right"></i></a>
											</div>
										</div>
									</div>
									<!-- End off grid item -->
								</c:if>
								<c:if test="${vo.location_img3 == null}">
								</c:if>
								<c:if test="${vo.location_img4 != null}">
									<div
										class="grid-item post-transition metal numberGreaterThan50">
										<img alt=""
											src="${images}where/trip_location/${vo.location_img4}"
											style="height: 250px;">
										<div class="grid_hover_area text-center">
											<div class="grid_hover_text m-top-50">
												<h4 class="text-blue">전체 보기</h4>
												<a href="${images}where/trip_location/${vo.location_img4}"
													class="popup-img text-blue m-top-40">View <i
													class="fa fa-long-arrow-right"></i></a>
											</div>
										</div>
									</div>
									<!-- End off grid item -->
								</c:if>
								<c:if test="${vo.location_img2 == null}">
								</c:if>
							</div>

							<div style="clear: both;"></div>

						</div>
					</div>
				</div>
				<!-- Portfolio container end -->
			</section>
		</c:if>
		<c:if test="${vo.location_img2 == null}">
		</c:if>
		<br>
		<!-- End off portfolio section -->
		<div id="map"></div>
		<!--Company section-->
		<br>

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
	<script>
		function initMap() {
			var uluru = {
				lat : ${vo.x_coordinate},
				lng : ${vo.y_coordinate}
			};
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom : 15,
				center : uluru
			});

			var contentString = '<div id="content">'
					+ '<div id="siteNotice">'
					+ '</div>'
					+ '<h5 id="firstHeading" class="firstHeading">${vo.location_name}</h5>'
					+ '<div id="bodyContent">'
					+ '장소 주소 : ${vo.location_addr}<br>'
					+ '개장 시간 : ${vo.open_time}<br>'
					+ '폐장 시간 : ${vo.close_time}<br>'
					+ '좌표 : ${vo.x_coordinate}, ${vo.y_coordinate}'
					+ '</div>' + '</div>';

			var infowindow = new google.maps.InfoWindow({
				content : contentString
			});

			var marker = new google.maps.Marker({
				position : uluru,
				map : map,
				title : 'Uluru (Ayers Rock)'
			});
			marker.addListener('click', function() {
				infowindow.open(map, marker);
			});
		}
	</script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAu8_5LRl659ZkNDhSI_RKnCDK0jzFryak&callback=initMap">
		
	</script>

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