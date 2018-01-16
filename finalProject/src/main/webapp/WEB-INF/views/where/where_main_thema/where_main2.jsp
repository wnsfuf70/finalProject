<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>

<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<title>Pouseidon - Free HTML5 Model Agency Bootstrap Template</title>
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
						<li><a href="aboutus.html">이야기</a></li>
						<li><a href="where_main">어디갈까</a></li>
						<li><a href="blog.html">추천여행기</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">예약 </a>
							<ul class="dropdown-menu">
								<li><a href="#">숙박 예약</a></li>
								<li><a href="airReservation">항공 예약</a></li>
								<li><a href="#">렌트카 예약</a></li>
							</ul></li>
						<li><a href="" data-toggle="modal" data-target="#login">로그인</a></li>
						<li><a href="" data-toggle="modal" data-target="#register">회원가입</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>

		</nav>


		<!-- 모달 추가 시작 login -->
		<div class="row">
			<div class="modal" id="login" tabindex="-1">
				<!-- #model로 지정했으므로 id="model" -->
				<div class="modal-dialog" style="z-index: 9999">
					<div class="modal-content">
						<div class="modal-header">
							로그인
							<button class="close" data-dismiss="modal">&times;</button>
						</div>
						<center>
							<img src="${images}/Login.png">
						</center>
						<div class="modal-body" style="text-align: center;">
							<form id="login-form" action="https://phpoll.com/login/process"
								method="post" role="form" style="display: block;">

								<div class="form-group">

									<input type="text" name="userId" id="userId" tabindex="1"
										class="form-control" placeholder="아이디" value="">
								</div>
								<div class="form-group">
									<input type="password" name="userPassword" id="userPassword"
										tabindex="2" class="form-control" placeholder="비밀번호" value="">
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<input type="submit" name="login-submit" id="login-submit"
												tabindex="4" class="form-control btn btn-login" value="로그인">
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-lg-12">
											<div class="text-center">
												<a href="https://phpoll.com/recover" tabindex="5"
													class="forgot-password"> 아이디 | 비밀번호 찾기</a>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 모달 추가 종료 login-->





		<!-- 모달 추가 시작 register -->
		<div class="row">
			<div class="modal" id="register" tabindex="-1">
				<!-- #model로 지정했으므로 id="model" -->
				<div class="modal-dialog" style="z-index: 9999">
					<div class="modal-content" style="height: 950px">
						<div class="modal-header">
							회원가입
							<button class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body" style="text-align: center;">

							<!-- 회원가입 -->
							<div class="col-md-12">
								<form role="form">
									<div class="form-group">
										<label for="username">사용자 이름</label> <input type="text"
											class="form-control" id="username" placeholder="이름을 입력해 주세요">
									</div>

									<div class="form-group">
										<label for="InputId">아이디</label> <span
											class="glyphicon glyphicon-ok"></span> <span
											class="glyphicon glyphicon-remove"></span> <input type="text"
											class="form-control" id="InputId"
											placeholder="아이디(영문+숫자/6~15이내)">
									</div>

									<div class="form-group">
										<label for="InputPassword1">비밀번호</label> <span
											class="glyphicon glyphicon-ok"></span> <span
											class="glyphicon glyphicon-remove"></span> <input
											type="password" class="form-control" id="InputPassword1"
											placeholder="비밀번호(영문+숫자/6~15이내)">
									</div>

									<div class="form-group">
										<label for="InputPassword2">비밀번호 확인</label> <span
											class="glyphicon glyphicon-ok"></span> <span
											class="glyphicon glyphicon-remove"></span> <input
											type="password" class="form-control" id="InputPassword2"
											placeholder="비밀번호 확인">
										<p class="help-block">비밀번호 확인을 위해 다시 한번 입력 해 주세요</p>
									</div>

									<div class="form-group">
										<label for="InputEmail">이메일 주소</label> <input type="email"
											class="form-control" id="InputEmail"
											placeholder="E-Mail(비밀번호 분실 시 필요합니다)">
									</div>

									<div class="form-group">
										<label for="InputBirthday">생년월일</label> <input type="date"
											class="form-control" id="InputBirthday"
											placeholder="생년월일을 선택해 주세요">
									</div>

									<div class="form-group">
										<label for="InputGender">성별</label>&nbsp;&nbsp;&nbsp; <label><input
											name="gender" type="radio" value="Male" checked> 남자 </label>
										&nbsp;&nbsp;&nbsp; <label><input name="gender"
											type="radio" value="Female"> 여자</label>
									</div>

									<div class="form-group">
										<label for="username">휴대폰 인증</label>
										<div class="input-group">
											<input type="tel" class="form-control" id="username"
												placeholder="- 없이 입력해 주세요"> <span
												class="input-group-btn">
												<button class="btn btn-success">
													인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i>
												</button>
											</span>
										</div>
									</div>

									<div class="form-group">
										<label for="username">인증번호 입력</label>
										<div class="input-group">
											<input type="text" class="form-control" id="username"
												placeholder="인증번호"> <span class="input-group-btn">
												<button class="btn btn-success">
													인증번호 입력<i class="fa fa-edit spaceLeft"></i>
												</button>
											</span>
										</div>
									</div>

									<div class="form-group">
										<label>약관 동의</label>
										<div data-toggle="buttons">
											<label class="btn btn-primary active"> <span
												class="fa fa-check"></span> <input id="agree"
												type="checkbox" autocomplete="off" checked>
											</label> <a href="#">이용약관</a>에 동의합니다.
										</div>
									</div>

									<div class="form-group text-center">
										<button type="submit" class="btn btn-info">
											회원가입<i class="fa fa-check spaceLeft"></i>
										</button>
										<button type="submit" class="btn btn-warning">
											가입취소<i class="fa fa-times spaceLeft"></i>
										</button>
									</div>

								</form>
							</div>
							<!-- 회원가입 종료 -->
						</div>
					</div>
				</div>
			</div>
		</div>




		<!-- 모달 추가 종료 register -->

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
							<h3>어디 갈까?</h3>
							<p>The atmosphere in New York is lorem ipsum.</p>
						</div>
					</div>

					<div class="item">
						<img src="${images}background/bg_where_2.jpg" alt="travel2">
						<div class="carousel-caption">
							<h3>어디 갈까?</h3>
							<p>Thank you, Chicago - A night we won't forget.</p>
						</div>
					</div>

					<div class="item">
						<img src="${images}background/bg_where_3.jpg" alt="travel3">
						<div class="carousel-caption">
							<h3>어디 갈까?</h3>
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

			<div id="map">
				<div id="map_inter">
					<div class="map_inter_selected">
						<img src="${images}/where/w_bg_map_bg.png"
							style="z-index: 1; position: absolute;"><img
							src="/project/resources/images/where/w_bg_map01.png"
							style="z-index: 2; position: absolute;">
					</div>
				</div>
				<div id="inter_states">
					<div class="lst_sido">
						<ul>
							<li id="01" class="selected"><a
								href="where_iframe?area=서울&thema=맛집" target="hot_spot">서울</a></li>
							<li id="07"><a href="where_iframe?area=울산&thema=맛집" target="hot_spot">울산</a></li>
							<li id="14"><a href=where_iframe?area=전남&thema=맛집 target="hot_spot">전남</a></li>
						</ul>
						<ul>
							<li id="05"><a href="where_iframe?area=부산&thema=맛집"
								target="hot_spot">부산</a></li>
							<li id="08"><a href="where_iframe?area=경기&thema=맛집" target="hot_spot">경기</a></li>
							<li id="12"><a href="where_iframe?area=경북&thema=맛집" target="hot_spot">경북</a></li>
						</ul>
						<ul>
							<li id="04"><a href="where_iframe?area=대구&thema=맛집" target="hot_spot">대구</a></li>
							<li id="09"><a href="where_iframe?area=강원&thema=맛집" target="hot_spot">강원</a></li>
							<li id="13"><a href="where_iframe?area=경남&thema=맛집" target="hot_spot">경남</a></li>
						</ul>
						<ul>
							<li id="02"><a href="where_iframe?area=인천&thema=맛집" target="hot_spot">인천</a></li>
							<li id="10"><a href="where_iframe?area=충북&thema=맛집" target="hot_spot">충북</a></li>
							<li id="16"><a href="where_iframe?area=제주&thema=맛집" target="hot_spot">제주</a></li>
						</ul>
						<ul>
							<li id="06"><a href="where_iframe?area=광주&thema=맛집" target="hot_spot">광주</a></li>
							<li id="11"><a href="where_iframe?area=충남&thema=맛집" target="hot_spot">충남</a></li>
							<li id="17"><a href="where_iframe?area=울릉도/독도&thema=맛집" target="hot_spot">울릉도/독도</a></li>
						</ul>
						<ul>
							<li id="03"><a href="where_iframe?area=대전&thema=맛집" target="hot_spot">대전</a></li>
							<li id="15"><a href="where_iframe?area=전북&thema=맛집" target="hot_spot">전북</a></li>
						</ul>

					</div>

				</div>
				<div class="where_hot-spot" style="position: absolute; right: 10px; top:0px;">
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



			<div class="hot_spot_selected">
				<iframe src="where_iframe?area=서울&thema=맛집" name="hot_spot">
				</iframe>
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