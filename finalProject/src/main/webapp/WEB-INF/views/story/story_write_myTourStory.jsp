<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<title>동행</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="icon" type="image/png" href="favicon.ico"> -->

<!--Google Fonts link-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
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
<link rel="stylesheet" href="${css}/storyCss/myTourStory.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<!--For Plugins external css-->
<!--<link rel="stylesheet" href="${css}plugins.css" />-->

<!--Theme custom css -->
<link rel="stylesheet" href="${css}style.css">
<!--<link rel="stylesheet" href="${css}colors/maron.css">-->

<!--Theme Responsive css-->
<link rel="stylesheet" href="${css}responsive.css" />

<link href='http://fonts.googleapis.com/css?family=Roboto:400,500'
	rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script src="${js}vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

<style>
/* 사이드바 래퍼 스타일 */
#page-wrapper {
	padding-left: 250px;
}

#sidebar-wrapper {
	width: 100%;
	height: 10%;
	margin: 10%;
	overflow-x: auto;
	background: #000;
	overflow-y: hidden;
	height: 10%;
}

#page-content-wrapper {
	width: 100%;
	padding: 20px;
}
/* 사이드바 스타일 */
.sidebar-nav {
	display: flex;
	width: 100%;
	margin: 0;
	padding: 0;
	list-style: none;
}

.sidebar-nav li {
	flex-direction: row;
	justify-content: center;
	dlign-items: center;
	line-height: 4.2em;
	text-indent: 1.5em;
}

.sidebar-nav li a {
	display: block;
	text-decoration: none;
	color: #999;
}

.sidebar-nav li a:hover {
	color: #fff;
	background: rgba(255, 255, 255, 0.2);
}

.sidebar-nav>.sidebar-brand {
	font-size: 1.3em;
	line-height: 4.2em;
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
				<div class="container" style="background-color: gray;">
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
				<!-- Start Attribute Navigation -->
				<div class="attr-nav">
					<ul>
						<li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
					</ul>
				</div>
				<!-- End Attribute Navigation -->

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
						<li><a href="model.html">어디갈까</a></li>
						<li><a href="blog.html">추천여행기</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">예약 </a>
							<ul class="dropdown-menu">
								<li><a href="#">숙박 예약</a></li>
								<li><a href="#">항공 예약</a></li>
								<li><a href="#">렌트카 예약</a></li>
							</ul></li>
						<li><a href="#">로그인</a></li>
						<li><a href="#">회원가입</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>

		</nav>
		<div class="container" style="display: relative; margin-top: 6%;">

			<div class="stepwizard col-md-offset-3">
				<div class="stepwizard-row setup-panel">
					<div class="stepwizard-step">
						<a href="#step-1" type="button"
							class="btn btn-primaryy btn-circle">기본정보입력</a>
						<p></p>
					</div>
					<div class="stepwizard-step">
						<a href="#step-2" type="button"
							class="btn btn-defaultt btn-circle" disabled="disabled">상세정보입력</a>
						<p></p>
					</div>
					<div class="stepwizard-step">
						<a href="#step-3" type="button"
							class="btn btn-defaultt btn-circle" disabled="disabled">작성완료</a>
						<p></p>
					</div>
				</div>
			</div>
			<!-- enctype="multipart/form-data" -->
			<form name="myTourStoryForm" id="myTourStoryForm" role="form"  action="" method="post">
				<input type="hidden" name="epilogueNo" id="epilogueNo"
					value="${epilogueNo}" /> <input type="hidden" name="p_frgn_yn"
					id="p_frgn_yn" value="" />
				<div class="row setup-content" id="step-1">
					<div class="col-xs-6 col-md-offset-3">
						<div class="col-md-12">
							<h3>여행기 만들기</h3>
							<div class="form-group">
								<label class="control-label">분류</label> <select
									name="selectCategory">
									<option value="">선택하세요</option>
									<option value="healing">힐링</option>
									<option value="travel">관광</option>
									<option value="eat">맛집</option>
									<option value="leisure">레져</option>
								</select>
							</div>
							<div class="form-group">
								<label class="control-label">여행기 제목</label> <input
									maxlength="100" type="text" required="required"
									class="form-control" name="epilTitle" placeholder="제목을 입력해주세요" />
							</div>
							<div class="form-group">
								<label class="control-label">여행기 타입</label> <br>
								<ul class="typeBox">
									<li><div id="inter" data-frgn="N"
											style="width: 75px; height: 75px;"></div></li>
									<li><div id="abroad" data-frgn="Y"
											style="width: 75px; height: 75px;"></div></li>
								</ul>
							</div>
							<button class="btn btn-primaryy nextBtn btn-lg pull-right"
								type="button">Next</button>
						</div>
					</div>
				</div>
					<div class="row setup-content" id="step-2">
						<div class="col-xs-6 col-md-offset-3">
							<div class="col-xs-6 col-md-offset-3">
	
								<h3>여행기 작성중</h3>
								<!-- 사이드바 -->
								<div id="sidebar-wrapper">
									<ul class="sidebar-nav">
										<li class="sidebar-brand"><a href="#">추가한 코스</a></li>
										<li id="addedCourse" class="sidebar-brand"></li>
									</ul>
								</div>
								<!-- /사이드바 -->
								<div class="form-group">
									<label class="control-label">새 지점</label> <select
										class="selectPart" style="width: 20%; margin-left: 5%;">
										<option value="">선택하세요</option>
									</select>
								</div>
								<div class="form-group">
	
									<div class="searchContainer" style="display: inline-block;">
										<label class="control-label">여행지 찾기<input
											id="searchBar" name="searchBar" maxlength="130"
											style="width: 100%;" type="text" class="form-control" readonly
											data-target="#exampleModalCenter" style="cursor:none;"
											data-toggle="modal" /></label>
	
										<!-- <button type="button" class="searchIcon"
												data-toggle="modal" data-target="#exampleModalCenter"><img src="/project/resources/images/user/magnifier.svg" style="width:30px;height:30px;"></button> -->
										<a href="" data-target="#exampleModalCenter"
											data-toggle="modal" class="searchIcon"><img
											src="/project/resources/images/story/magnifier.svg"
											style="width: 30px; height: 30px;"></a>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label">내용입력</label>
									<!-- <input
											maxlength="200" type="text" required="required"
											class="form-control" placeholder="Enter Company Address" /> -->
									<textarea id="epilContent" name="epilContent" rows="4" cols="50"
										class="form-control"></textarea>
								</div>
								<div class="form-group">
									<div class="myMoment" style="border: 1px; margin: 5%;">
										<label class="control-label">내가 남긴 순간들 </label><br>
										<div class="uploadedFile"
											style="width: 300px; height: 200px; margin: 10%; float: left; border: 1px solid gray">
											<!-- 동적으로 되려나.. -->
											<div id="fileInputForm"
												style="position: relative; float: left; width: 80px; height: 42px; overflow: hidden; cursor: none; background-image: url('/project/resources/images/story/add.svg');">
												<input type="file" id="atch_file" name="atch_file" value=""
													style='margin-left: -10px; width: 80px; height: 42px; filter: alpha(opacity = 0); opacity: 0; -moz-opacity: 0; cursor: none;'
													onChange="loadFile(event)">
												<script>
													var loadFile = function(event) {
														var output = document
																.getElementById('output');
														output.src = URL
																.createObjectURL(event.target.files[0]);
													}
												</script>
											</div>
											<img id="output" style="width: 250px; height: 100px;" />
										</div>
									</div>
								</div>
								<!-- <div class="form-group" style="margin: 10%;">
										<label class="control-label">다녀온 날짜</label><br>
										<div id="chooseDday">
											<input type="text" id="date"
												class="form-control floating-label" placeholder="Date">
										</div>
									</div> -->
								<div class="form-group" style="position: relative; margin: 10%;">
									<label class="control-label">다녀온 날짜</label><br> <input
										type="date" id="dday" name="dday">
								</div>
								<button type="button" id="saveCourseBtn"
									class="btn btn-success btn-info">코스 저장하기</button>
								<button class="btn btn-primaryy nextBtn btn-lg pull-right"
									type="button" style="margin-top: 10%;">Next</button>
							</div>
						</div>
					</div>
				</form>
				<div class="row setup-content" id="step-3">
					<div class="col-xs-6 col-md-offset-3">
						<div class="col-md-12">
							<h3>내 이야기 작성완료!</h3>

							<label class="control-label"> 이야기 작성 작업이 모두 완료되었어요! </label>
							<div class="step3Btns" style="margin-top: 20%;">
								<button class="btn btn-success btn-lg pull-right" type="submit">저장하기</button>
								<button class="btn btn-success btn-info pull-right"
									style="width: 90px; height: 40px" onclick="window.history(-1);">이전으로</button>
								<button class="btn btn-success btn-warning pull-right"
									style="width: 90px; height: 40px" onclick="">미리보기</button>
							</div>
						</div>
					</div>
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
		<!-- Modal -->
		<!-- 여행지 찾기 검색 모달창입니다. -->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog" role="document" style="z-index: 9999;">
				<div class="modal-content" style="margin-top: 50%">
					<div class="modal-header">
						<div class="modal-title-container">
							<h5 class="modal-title" id="exampleModalLongTitle">여행지 검색</h5>
						</div>
						<div class="searchLocation" style="display: flex;">
							<input maxlength="130" id="wantSearch" name="wantSearch"
								style="width: 30%;" type="text" class="form-control" /> <a
								href="#" id="modalSearchIcon" class="searchIcon"><img
								src="/project/resources/images/story/magnifier.svg"
								style="width: 30px; height: 30px; margin-left: 1.5%;"></a>
							<!-- enter키 눌러도 기능하게 해야되는데.. -->
						</div>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div id="modalbody" class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">닫기</button>
						<button type="button" class="btn btn-primary">검색완료</button>
					</div>
				</div>
			</div>
		</div>
		
	</div>

	<!-- JS includes -->

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
	<script src="${js}vendor/myTourStoryJs.js?ver=1.4"></script>
	<script src="${js}vendor/myTourStoryJavsScr.js?ver=1.4"></script>
	<script src="${js}vendor/myScript.js?ver=1.4"></script>

</body>
</html>