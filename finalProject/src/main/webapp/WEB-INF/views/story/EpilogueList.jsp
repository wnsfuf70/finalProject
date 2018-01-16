<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

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

<!--For Plugins external css-->
<!--<link rel="stylesheet" href="${css}plugins.css" />-->

<!--Theme custom css -->
<link rel="stylesheet" href="${css}style.css">
<!--<link rel="stylesheet" href="${css}colors/maron.css">-->

<!--Theme Responsive css-->
<link rel="stylesheet" href="${css}responsive.css" />

<script src="${js}vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

<style>
body {
	width: 100%;
}

#wrapper {
	width: 100%;
	min-width: 1024px;
}

#write_mask {
	background-color: white;
	margin: auto;
	margin-bottom: 50%;
	width: 50%;
	height: 50%;
	position: fixed;
	z-index: 10000;
}

.write_pop {
	background-color: white;
	margin: auto;
	margin-bottom: 50%;
	width: 30%;
	height: 30%;
	z-index: 10000;
	position: fixed;
}

.write_pop .write_cover {
	width: 812px;
	margin: auto;
	margin-top: 30px;
}

.write_pop .write_top {
	width: 812px;
	height: 20px;
}

.write_pop .write_mid {
	width: 812px;
	height: 452px;
}

.write_mid .write_close {
	display: block;
	float: right;
	width: 23px;
	height: 23px;
	background: url('/project/resources/images/story/write_pop_close.png')
		no-repeat;
	margin-right: 20px;
}

.write_mid .mid_top {
	padding-top: 30px;
}

.write_mid .mid_top .top_tt {
	width: 332px;
	height: 70px;
	background: url('/project/resources/images/story/new_title.png')
		no-repeat;
	margin: auto;
}

.write_mid .mid_btns {
	width: 668px;
	margin: auto;
	padding-top: 50px;
}

.mid_btns .travel {
	background: url('/project/resources/images/story/step01_n.png')
		no-repeat;
}

.mid_btns li {
	display: inline-block;
}

.mid_btns li a {
	display: block;
	width: 220px;
	height: 250px;
	text-indent: -10000px;
}

.mid_btns .essay {
	background: url('/project/resources/images/story/step02_n.png')
		no-repeat;
}

.mid_btns .review {
	background: url('/project/resources/images/story/step03_n.png')
		no-repeat;
}

a:visited {
	text-decoration: none;
}

a, a:link {
	text-decoration: none;
	color: #666;
	cursor: pointer;
}

#content {
	width: 100%;
	margin: 0;
	padding: 0;
}

div {
	display: block;
}

#inner_content {
	width: 1024px;
	margin: auto;
	margin-top: 50px;
	position: relative;
}

#inner_content:after {
	content: "";
	dispaly: block;
	clear: both;
	width: 100%;
}

#container {
	width: 800px;
	height: 100%;
	float: left;
	margin-left: 18px;
	display: inline-block;
	min-height: 1000px;
}

#quick {
	padding-bottom: 80px;
	width: 196px;
	background-color: #fff;
	border-left: 1px solid #e5e5e5;
	border-right: 1px solid #e5e5e5;
	display: inline-block;
	height: 100%;
	position: absolute;
	right: 0;
}

#container #frm_srch {
	margin-top: 18px;
}

#top_title {
	margin-bottom: 4px;
}

.top_line {
	width: 792px;
	border-top: 1px solid #dbdbdb;
	border-bottom: 1px solid #fcfcfc;
	margin-bottom: 7px;
}

#container .srch_box {
	position: absolute;
	top: 52px;
	left: 8px;
	height: 245px;
	width: 812px;
	visibility: hidden;
	/* background:url(''); */
}

#srch .all_menu {
	width: 52px;
	height: 42px;
	background-color: green;
	display: inline-block;
	float: left;
	/* background:url(''); */
}

a {
	text-decoration: none;
	color: #666;
	cursor: pointer;
}

#container #srch .srch_bar {
	height: 100%;
	float: left;
}

#container #srch input {
	height: 42px;
	width: 688px;
	/* background:url(''); */
	float: left;
	padding-left: 10px;
	padding-right: 10px;
	border: 0;
}

#container #srch .srch_btn {
	width: 52px;
	height: 42px;
	display: inline-block;
	/* background:url(''); */
	text-indent: -10000px;
}

#top_title .t_title {
	margin-bottom: 6px;
	display: inline-block;
	margin-left: 5px;
	width: 500px;
}

#top_title .t_title t_srch {
	font-weight: bold;
	font-size: 16px;
	color: #505050;
}

#top_title .t_title .t_srch_n {
	font-size: 13px;
	color: #aeaeae;
	margin-left: 5px;
}

#top_title .t_btns {
	display: inline-block;
	float: right;
	margin-right: 13px;
}

ul {
	list-style: none;
}

.top_line {
	width: 792px;
	border-top: 1px solid #dbdbdb;
	border_botton: 1px solid #fcfcfc;
	margin-bottom: 7px;
}

.sty_paging {
	position: absolute;
	bottom: -80px;
	width: 792px;
	margin-bottom: 20px;
	text-align: center;
}

#feed_list {
	text-align: center;
}

.srch_box .srch_left {
	width: 190px;
	display: inline-block;
	flat: left;
	margin-top: 33px;
	margin-left: 23px;
	font-size: 14px;
	font-weight: bold;
	color: #343434;
}

.srch_box .srch_left li {
	margin-bottom: 10px;
}

.srch_box>.line {
	display: inline-block;
	float: left;
	width: 1px;
	height: 218px;
	background-color: #ebebeb;
	margin-top: 16px;
}

.srch_box .srch_right {
	width: 590px;
	display: inline-block;
}

.srch_right #srch_inner {
	display: inline-block;
	margin-top: 32px;
	margin-left: 10px;
}

.srch_right .line {
	height: 1px;
	background-color: #ebebeb;
	margin-top: 10px;
}

.srch_right #srch_abroad {
	display: inline-block;
	margin-top: 20px;
	margin-left: 10px;
}

.srch_right #srch_abroad .block {
	display: block;
	font-weight: bold;
	margin-bottom: 3px;
}

.srch_right #srch_abroad li a {
	display: inline-block;
	padding-left: 10px;
	padding-right: 10px;
	height: 25px;
	line-height: 25px;
}

.srch_right #srch_abroad li {
	display: inline-block;
}

.q_nav {
	width: 100%;
}

.q_nav>li {
	width: 100%;
	height: 70px;
}

.q_nav .nav_new a {
	background: url('/project/resources/images/story/quick_menu_01.png');
}

.q_nav>li a {
	width: 100%;
	height: 70px;
	display: block;
	text-indent: -10000px;
}

.q_nav .nav_today a {
	background: url('/project/resources/images/story/quick_menu_02.png');
}

.q_nav .nav_recmmd a {
	background: url('/project/resources/images/story/quick_menu_03.png');
}

.q_nav .nav_help a {
	background: url('/project/resources/images/story/quick_menu_04.png');
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
						<li><a href="storyStart">이야기</a></li>
						<li><a href="whereStart">어디갈까</a></li>
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
									<li><a href="xxxStart">계획하기</a></li>
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

						<div class="modal-body" style="text-align: center;">
							<center>
								<img src="${images}/Login.png">
							</center>
							<form id="login-form" action="login" method="post" role="form"
								style="display: block;">

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
												tabindex="4" class="btn btn-success" value="로그인">
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



	</div>

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
							<form role="form" action="register" method="post" role="form"
								style="display: block;">
								<div class="form-group">
									<label for="username">사용자 이름</label> <input type="text"
										class="form-control" id="username" placeholder="이름을 입력해 주세요"
										name="name">
								</div>

								<!-- 
		vo.setEmail1(req.getParameter("email1"));
		vo.setEmail1(req.getParameter("email2"));
		vo.setSex(req.getParameter("sex"));
		vo.setPhone1(req.getParameter("phone1"));
		vo.setPhone2(req.getParameter("phone2"));
		vo.setPhone3(req.getParameter("phone3"));
		vo.setBirth(req.getParameter("birth"));
		vo.setGrade(req.getParameter("grade"));
		vo.setFaceImg(req.getParameter("faceImg"));
		vo.setIntroduce(req.getParameter("introduce")); -->

								<div class="form-group">
									<label for="InputId">아이디</label>
									<!-- <div id="chkIdOk"><span class="glyphicon glyphicon-ok"></span></div>
						<div id="chkIdRemove"><span class="glyphicon glyphicon-remove"></span></div> -->
									<div id="chkIdMsg"></div>
									<input type="text" class="form-control" id="InputId"
										placeholder="아이디(영문+숫자/6~15이내)" required="required"
										name="mem_id">
								</div>

								<div class="form-group">
									<label for="InputPassword1">비밀번호</label> <input type="password"
										class="form-control" id="InputPassword1"
										placeholder="비밀번호(영문+숫자/6~15이내)" required="required"
										name="password">
								</div>

								<div class="form-group">
									<label for="InputPassword2">비밀번호 확인</label>
									<!-- <div id="chkPwdOk"><span class="glyphicon glyphicon-ok"></span></div>
						<div id="chkPwdRemove"><span class="glyphicon glyphicon-remove"></span></div> -->
									<div id="chkPwdMsg"></div>
									<input type="password" class="form-control" id="InputPassword2"
										placeholder="비밀번호 확인" required="required">
									<!-- <p class="help-block">비밀번호 확인을 위해 다시 한번 입력 해 주세요</p> -->
								</div>

								<div class="form-group">
									<label for="InputEmail">이메일 주소</label> <input type="email"
										class="form-control" id="InputEmail"
										placeholder="E-Mail(비밀번호 분실 시 필요합니다)" required="required"
										name="email">
								</div>

								<div class="form-group">
									<label for="InputBirthday">생년월일</label> <input type="date"
										class="form-control" id="InputBirthday"
										placeholder="생년월일을 선택해 주세요" required="required" name="birth">
								</div>

								<div class="form-group">
									<label for="InputGender">성별</label>&nbsp;&nbsp;&nbsp; <label>
										<input name="sex" type="radio" value="Male" checked>
										남자
									</label> &nbsp;&nbsp;&nbsp; <label><input name="sex"
										type="radio" value="Female"> 여자</label>
								</div>

								<div class="form-group">
									<label for="username">휴대폰 인증</label>
									<div class="input-group">
										<input type="tel" class="form-control" id="username"
											placeholder="- 없이 입력해 주세요" name="phone"> <span
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
											class="fa fa-check"></span> <input id="agree" type="checkbox"
											autocomplete="off" checked>
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

	<div class="container">
		<div id="write_mask" style="display: none;"></div>
		<div id="write_pop" class="write_pop" style="display: none;">
			<div class="write_cover">
				<div class="write_top"></div>
				<div class="write_mid">
					<div class="write_btn">
						<a id="closeWrite" class="write_close"></a>
					</div>
					<div class="mid_top">
						<div class="top_tt"></div>
					</div>
					<ul class="mid_btns">
						<li class="travel"><a href="story_write_myTourStory" target="_top">여행기</a></li>
						<li class="essay"><a href="/web/tessay_wrt.tlg" target="_top">T에세이</a></li>
						<li class="review"><a href="/web/review_info.tlg"
							target="_top">리뷰</a></li>
					</ul>
				</div>
				<div class="write_btm"></div>
			</div>
		</div>



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


		<hr>
		<div id="wrapper">

			<div id="content">



				<div id="content">
					<div id="inner_content">
						<div id="container">
							<form id="frm_srch" class="frm_srch" action="/story/story.tlg"
								method="get" name="search">
								<input id="page_no" type="hidden" name="page_no" value="1">
								<input id="city_no" type="hidden" name="city_no" value="">
								<div id="srch" class="srch">

									<a id="all_menu" class="all_menu"> </a>

									<div class="srch_bar">
										<input id="srch_val" type="text" title="검색어 입력" size="50"
											tabindex="1" name="srch_val"
											placeholder="어느 곳의 여행이야기가 궁금하세요?" value=""> <a
											id="srch_btn" class="srch_btn" type="submit" title="검색">검색</a>
									</div>

								</div>

							</form>

							<div id="top_title">
								<div class="t_title">
									<span class="t_srch">전체 이야기</span><span class="t_srch_n"></span>
								</div>

								<ul class="t_btns">
									<li class="t_all"><a id="t_all" class="over">전체</a></li>
									<li class="t_dott"></li>
									<li class="t_story"><a id="t_story">여행기</a></li>
									<li class="t_dott"></li>
									<li class="t_restr"><a id="t_restr">맛기행</a></li>
								</ul>

							</div>
							<div class="top_line"></div>

							<div id="list">
								<div id="con_list" class="con_list"
									style="height: 3586.05px; position: relative;">
									<div class="item"
										style="display: block; position: absolute; left: 0px; top: 0px;">

										<a href="/essay/458" target="_top">
											<div class="card">

												<div class="thumb">

													<div class="cover" style="display: none;">
														<div class="cover_btn">
															<div id="modify_data" data-sc_no="null"
																data-sc_gr_no="null">
																<button class="grup_modify">그룹변경</button>
																<button class="grup_delete">삭제</button>
															</div>

														</div>

													</div>

													<img
														src="https://img.tnote.kr/upload/photo/2018/1/1516031842858.jpg">

												</div>

											</div>

										</a>

									</div>

								</div>

							</div>

						</div>
					</div>

					<!-- <h3>포항에서 해돋이보고 울산으로 당일치기 여행코스</h3>
											<span class="period_str" title="게시일짜">2018-01-16</span>
											<div class="tp_info">
												<span class="tp_addr" title="방문일자">새해를 맞이하여 1월에는 해돋이를
													보기위해 여행을 떠나시는 분들 많으실 것 같아요 !</span>
											</div>
											<div class="tp_cnt">
												<span class="likes">좋아요 12</span> <span class="cmt">댓글
													5</span>
											</div>

											<div class="user">
												<img data-url="/null" class="usr_img"
													src="https://img.tnote.kr/upload/user/1516033093461_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">혜원</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="E000000458"
												data-sty_dv="ES">
												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 200px; top: 0px;">

									<a href="/essay/457" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1516032990292.jpg">
											</div>


											<h3>시간아 멈춰라, 대전 엑스포다리</h3>
											<span class="period_str" title="게시일짜">2018-01-16</span>
											<div class="tp_info">
												<span class="tp_addr" title="방문일자">쳇바퀴같은 평범한 일상을 지내다,</span>
											</div>
											<div class="tp_cnt">
												<span class="likes">좋아요 7</span> <span class="cmt">댓글
													1</span>
											</div>

											<div class="user">
												<img data-url="/null" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515076421985_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">송혜림</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="E000000457"
												data-sty_dv="ES">
												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 400px; top: 0px;">

									<a href="/story/69121" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1516018819929_l.jpg">
											</div>


											<h3>스페인, 혼자, 자유, 유럽 첨 가봄</h3>
											<span class="period_str" title="다녀온 기간">17/11/3에
												다녀옴(11일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>셰레메티예보 공항</li>
												<li><span>2 </span>마드리드</li>
												<li><span>3 </span>프라도 미술관</li>
												<li><span>4 </span>산티아고 베르나베우</li>
												<li><span>5 </span>톨레도</li>
												<li><span>6 </span>세고비아</li>
												<li><span>7 </span>마드리드</li>
												<li><span>8 </span>바르셀로나</li>
												<li><span>9 </span>람블라스거리랑 고딕지구</li>
												<li><span>10 </span>보른지구랑 바르셀로네타</li>
												<li><span>11 </span>캄프 누</li>
												<li><span>12 </span>가우디 건축물</li>
												<li><span>13 </span>벙커랑 몬주익</li>
												<li><span>14 </span>몬주익이랑 포블섹</li>
												<li><span>15 </span>몬세라트</li>
												<li><span>16 </span>라발지구랑 바르셀로네타</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 8</span> <span class="cmt">댓글
													1</span>
											</div>

											<div class="user">
												<img data-url="/khj0147" class="usr_img"
													src="https://img.tnote.kr/upload/user/1516034011589_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">강현우</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069121"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 600px; top: 0px;">

									<a href="/story/69122" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1516021114400_l.jpg">
											</div>


											<h3>지리산 바래봉의 눈꽃</h3>
											<span class="period_str" title="다녀온 기간">1/14에 다녀옴(2일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>지리산바래봉</li>
												<li><span>2 </span>지리산 팔랑치</li>
												<li><span>3 </span>지리산바래봉</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 10</span> <span class="cmt">댓글
													9</span>
											</div>

											<div class="user">
												<img data-url="/tu136235" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515732052721_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">영아</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069122"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 600px; top: 347px;">

									<a href="/story/69114" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1516014544311_l.jpg">
											</div>


											<h3>눈세상 광주 무등산</h3>
											<span class="period_str" title="다녀온 기간">1/13에 다녀옴(당일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>무등산 서석대</li>
												<li><span>2 </span>원효사</li>
												<li><span>3 </span>치마바위</li>
												<li><span>4 </span>무등산 서석대</li>
												<li><span>5 </span>무등산 천왕봉</li>
												<li><span>6 </span>무등산 입석대</li>
												<li><span>7 </span>무등산 장불재</li>
												<li><span>8 </span>무등산 중머리재</li>
												<li><span>9 </span>증심사</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 11</span> <span class="cmt">댓글
													8</span>
											</div>

											<div class="user">
												<img data-url="/yoosol480" class="usr_img"
													src="https://img.tnote.kr/upload/user/1479938266026_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">유솔</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069114"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 0px; top: 367px;">

									<a href="/story/69113" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1516011928110_l.jpg">
											</div>


											<h3>미국여행기 1일차</h3>
											<span class="period_str" title="다녀온 기간">1/15에 다녀옴(당일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>인천</li>
												<li><span>2 </span>로스엔젤레스 공항</li>
												<li><span>3 </span>어바인</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 6</span> <span class="cmt">댓글
													1</span>
											</div>

											<div class="user">
												<img data-url="/juwan1118" class="usr_img"
													src="https://img.tnote.kr/common/img/no_user_m_img_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">주완</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069113"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 200px; top: 385px;">

									<a href="/story/69104" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515988050194_l.jpg">
											</div>


											<h3>무작정 국도로 보성여행기</h3>
											<span class="period_str" title="다녀온 기간">1/7에 다녀옴(당일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>보성녹차밭</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 9</span> <span class="cmt">댓글
													2</span>
											</div>

											<div class="user">
												<img data-url="/tu136432" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515987733137_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">윤수영</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069104"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 400px; top: 766px;">

									<a href="/story/68997" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515836030912_l.jpg">
											</div>


											<h3>폭설속의 제주도 여행</h3>
											<span class="period_str" title="다녀온 기간">1/12에 다녀옴(4일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>제주도</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 11</span> <span class="cmt">댓글
													1</span>
											</div>

											<div class="user">
												<img data-url="/tu081089" class="usr_img"
													src="https://img.tnote.kr/upload/user/1454241546175_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">김솔</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000068997"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 200px; top: 817px;">

									<a href="/story/69074" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515926216818_l.jpg">
											</div>


											<h3>하얀설경의 산성길</h3>
											<span class="period_str" title="다녀온 기간">1/13에 다녀옴(2일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>상당산성</li>
												<li><span>2 </span>상당산성옛길</li>
												<li><span>3 </span>것대산 출렁다리</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 16</span> <span class="cmt">댓글
													4</span>
											</div>

											<div class="user">
												<img data-url="/min9324" class="usr_img"
													src="https://img.tnote.kr/upload/user/1497164155102_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">영숙</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069074"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 0px; top: 926px;">

									<a href="/story/68979" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515922669128_l.jpg">
											</div>


											<h3>꿈결같은 도시들, 리옹과 안시</h3>
											<span class="period_str" title="다녀온 기간">1/11에 다녀옴(2일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>아비뇽 TGV역</li>
												<li><span>2 </span>벨쿠르 광장</li>
												<li><span>3 </span>자코뱅 광장</li>
												<li><span>4 </span>시청과 리옹 미술관</li>
												<li><span>5 </span>푸비에르 언덕 올라가는 길</li>
												<li><span>6 </span>푸비에르 언덕과 푸비에르 대성당</li>
												<li><span>7 </span>자코뱅 광장과 식당</li>
												<li><span>8 </span>리옹 파르듀역</li>
												<li><span>9 </span>안시역</li>
												<li><span>10 </span>안시호수</li>
												<li><span>11 </span>구시가지 프티베니스</li>
												<li><span>12 </span>다시 호숫가</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 12</span> <span class="cmt">댓글
													2</span>
											</div>

											<div class="user">
												<img data-url="/scarlet75" class="usr_img"
													src="https://img.tnote.kr/upload/user/1439559580285_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">스칼렛</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000068979"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 600px; top: 979px;">

									<a href="/story/69062" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515911715810_l.jpg">
											</div>


											<h3>유럽여행 이탈리아 밀라노 명품거리, take a glance!</h3>
											<span class="period_str" title="다녀온 기간">17/10/19에
												다녀옴(88일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>명품거리</li>
												<li><span>2 </span>두오모 성당</li>
												<li><span>3 </span>Fratelli Diversi</li>
												<li><span>4 </span>호텔 누오보 알베르고 이탈리아</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 15</span> <span class="cmt">댓글
													2</span>
											</div>

											<div class="user">
												<img data-url="/bqudcks" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515855941783_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">이병찬</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069062"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 400px; top: 1087px;">

									<a href="/essay/453" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515855794880.jpg">
											</div>


											<h3>차창으로 보는 독일풍경</h3>
											<span class="period_str" title="게시일짜">2018-01-14</span>
											<div class="tp_info">
												<span class="tp_addr" title="방문일자">뮌헨으로 가는길...</span>
											</div>
											<div class="tp_cnt">
												<span class="likes">좋아요 21</span> <span class="cmt">댓글
													4</span>
											</div>

											<div class="user">
												<img data-url="/null" class="usr_img"
													src="https://img.tnote.kr/upload/user/1508506658396_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">HJ
														PARK</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="E000000453"
												data-sty_dv="ES">
												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 600px; top: 1366px;">

									<a href="/story/69037" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="mov_marker"></div>

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515845834624_l.jpg">
											</div>


											<h3>즐거운 발리 Bali 여행</h3>
											<span class="period_str" title="다녀온 기간">17/10/9에
												다녀옴(97일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>제주국제공항</li>
												<li><span>2 </span>푸동국제공항</li>
												<li><span>3 </span>응우라라이국제공항</li>
												<li><span>4 </span>꾸따 니케발리호텔</li>
												<li><span>5 </span>꾼띠</li>
												<li><span>6 </span>꾸따비치</li>
												<li><span>7 </span>스테이크하우스</li>
												<li><span>8 </span>스미냑 warung sunset</li>
												<li><span>9 </span>우붓</li>
												<li><span>10 </span>우붓시장</li>
												<li><span>11 </span>우붓</li>
												<li><span>12 </span>길리 트라왕안</li>
												<li><span>13 </span>누사두아</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 11</span> <span class="cmt">댓글
													0</span>
											</div>

											<div class="user">
												<img data-url="/faithlove" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515840050651_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">faithlove</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069037"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 200px; top: 1375px;">

									<a href="/story/69042" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515851646588_l.jpg">
											</div>


											<h3>짬뽕 먹으러</h3>
											<span class="period_str" title="다녀온 기간">1/5에 다녀옴(2일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>후쿠오카 공항</li>
												<li><span>2 </span>차이나타운</li>
												<li><span>3 </span>이나사야마 전망대</li>
												<li><span>4 </span>하카다역</li>
												<li><span>5 </span>나카스</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 10</span> <span class="cmt">댓글
													0</span>
											</div>

											<div class="user">
												<img data-url="/tu035494" class="usr_img"
													src="https://img.tnote.kr/upload/user/1422786727585_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">시부지기</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069042"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 400px; top: 1390px;">

									<a href="/story/69035" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="mov_marker"></div>

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515844075075_l.jpg">
											</div>


											<h3>Kyoto &amp; Osaka 마지막날</h3>
											<span class="period_str" title="다녀온 기간">17/12/31에
												다녀옴(14일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>난바역</li>
												<li><span>2 </span>간사이공항</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 9</span> <span class="cmt">댓글
													0</span>
											</div>

											<div class="user">
												<img data-url="/faithlove" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515840050651_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">faithlove</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069035"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 0px; top: 1497px;">

									<a href="/story/69034" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515843581579_l.jpg">
											</div>


											<h3>Kyoto &amp; Osaka 여섯째날</h3>
											<span class="period_str" title="다녀온 기간">17/12/30에
												다녀옴(당일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>포무노키 오므라이스</li>
												<li><span>2 </span>햅파이브 관람차</li>
												<li><span>3 </span>가츠규</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 8</span> <span class="cmt">댓글
													0</span>
											</div>

											<div class="user">
												<img data-url="/faithlove" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515840050651_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">faithlove</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069034"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 400px; top: 1697px;">

									<a href="/story/69033" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515842025905_l.jpg">
											</div>


											<h3>Kyoto &amp; Osaka 다섯째날</h3>
											<span class="period_str" title="다녀온 기간">17/12/29에
												다녀옴(당일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>후시오카쿠료칸</li>
												<li><span>2 </span>도톤보리 츠루동탄</li>
												<li><span>3 </span>돈키호테</li>
												<li><span>4 </span>마루</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 10</span> <span class="cmt">댓글
													0</span>
											</div>

											<div class="user">
												<img data-url="/faithlove" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515840050651_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">faithlove</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069033"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 200px; top: 1781px;">

									<a href="/story/69032" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515841051596_l.jpg">
											</div>


											<h3>Kyoto &amp; Osaka 넷째날</h3>
											<span class="period_str" title="다녀온 기간">17/12/28에
												다녀옴(당일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>니시키시장</li>
												<li><span>2 </span>후시오카쿠료칸</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 8</span> <span class="cmt">댓글
													0</span>
											</div>

											<div class="user">
												<img data-url="/faithlove" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515840050651_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">faithlove</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069032"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 0px; top: 1861px;">

									<a href="/story/69031" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515838654923_l.jpg">
											</div>


											<h3>Kyoto &amp; Osaka 셋째날</h3>
											<span class="period_str" title="다녀온 기간">17/12/27에
												다녀옴(당일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>후시미이나리</li>
												<li><span>2 </span>후시미이나리 역 앞에 어느식당</li>
												<li><span>3 </span>고조자카</li>
												<li><span>4 </span>기요미즈데라</li>
												<li><span>5 </span>산넨자카 니넨자카</li>
												<li><span>6 </span>스시노무사시</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 11</span> <span class="cmt">댓글
													0</span>
											</div>

											<div class="user">
												<img data-url="/faithlove" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515840050651_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">faithlove</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069031"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 600px; top: 1940px;">

									<a href="/story/69028" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515836825593_l.jpg">
											</div>


											<h3>Kyoto &amp; Osaka 첫째날</h3>
											<span class="period_str" title="다녀온 기간">17/12/25에
												다녀옴(당일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>제주공항</li>
												<li><span>2 </span>교토역</li>
												<li><span>3 </span>카오산 교토 게스트하우스</li>
												<li><span>4 </span>이치란라멘</li>
												<li><span>5 </span>기온시조</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 9</span> <span class="cmt">댓글
													0</span>
											</div>

											<div class="user">
												<img data-url="/faithlove" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515840050651_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">faithlove</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069028"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 400px; top: 2082px;">

									<a href="/story/68998" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515831518222_l.jpg">
											</div>


											<h3>평화와 눈물이 공존하는 곳, DMZ</h3>
											<span class="period_str" title="다녀온 기간">1/13에 다녀옴(당일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>서울역</li>
												<li><span>2 </span>DMZ평화열차</li>
												<li><span>3 </span>임진강역</li>
												<li><span>4 </span>도라산평화공원</li>
												<li><span>5 </span>통일촌장단콩마을</li>
												<li><span>6 </span>오두산통일전망대</li>
												<li><span>7 </span>제3땅굴</li>
												<li><span>8 </span>도라산역</li>
												<li><span>9 </span>서울역</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 14</span> <span class="cmt">댓글
													4</span>
											</div>

											<div class="user">
												<img data-url="/eeyyii6" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515076421985_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">송혜림</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000068998"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 200px; top: 2233px;">

									<a href="/stamp/232261" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515826570579.jpg">
											</div>


											<h3>New York Manhattan West 46th Street</h3>
											<span class="period_str" title="주소">New</span>



											<div class="tp_info">
												<span class="tp_addr" title="방문일자">1월 13일에 다녀옴</span>

											</div>


											<div class="tp_cnt">
												<span class="likes">좋아요 7</span> <span class="cmt">댓글
													2</span>
											</div>

											<div class="user">
												<img data-url="/null" class="usr_img"
													src="https://img.tnote.kr/common/img/no_user_m_img_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">허동엉</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="null" data-sty_dv="ST">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 0px; top: 2272px;">

									<a href="/essay/451" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515827651068.jpg">
											</div>


											<h3>스페인 포르투갈 여행</h3>
											<span class="period_str" title="게시일짜">2018-01-13</span>
											<div class="tp_info">
												<span class="tp_addr" title="방문일자">수하물 넣는거 기다리는중!</span>
											</div>
											<div class="tp_cnt">
												<span class="likes">좋아요 9</span> <span class="cmt">댓글
													1</span>
											</div>

											<div class="user">
												<img data-url="/null" class="usr_img"
													src="https://img.tnote.kr/common/img/no_user_f_img_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">김태란</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="E000000451"
												data-sty_dv="ES">
												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 600px; top: 2346px;">

									<a href="/story/69001" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515776227571_l.jpg">
											</div>


											<h3>부산여행3</h3>
											<span class="period_str" title="다녀온 기간">1/13에 다녀옴(당일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>사랑애팬션</li>
												<li><span>2 </span>부산역</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 10</span> <span class="cmt">댓글
													1</span>
											</div>

											<div class="user">
												<img data-url="/gmlwls415" class="usr_img"
													src="https://img.tnote.kr/common/img/no_user_f_img_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">김희진</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000069001"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 400px; top: 2638px;">

									<a href="/story/68921" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515600341537_l.jpg">
											</div>


											<h3>대학 룸메와 떠난 태국여행</h3>
											<span class="period_str" title="다녀온 기간">17/6/20에
												다녀옴(8일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>방콕공항 그리고 숙소</li>
												<li><span>2 </span>파타야</li>
												<li><span>3 </span>꼬란섬</li>
												<li><span>4 </span>아시아티크</li>
												<li><span>5 </span>짜뚜짝</li>
												<li><span>6 </span>왕궁</li>
												<li><span>7 </span>카오산로드</li>
												<li><span>8 </span>실롬 쿠킹클래스</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 14</span> <span class="cmt">댓글
													4</span>
											</div>

											<div class="user">
												<img data-url="/ejcho320" class="usr_img"
													src="https://img.tnote.kr/upload/user/1510236061552_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">조은정</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000068921"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 200px; top: 2682px;">

									<a href="/stamp/232177" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515743147900.jpg">
											</div>


											<h3>관광공사 서울센터</h3>
											<span class="period_str" title="주소">서울 중구 다동</span>



											<div class="tp_info">
												<span class="tp_addr" title="방문일자">1월 12일에 다녀옴</span>

											</div>


											<div class="tp_cnt">
												<span class="likes">좋아요 7</span> <span class="cmt">댓글
													0</span>
											</div>

											<div class="user">
												<img data-url="/null" class="usr_img"
													src="https://img.tnote.kr/upload/user/1497257279166_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">James</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="null" data-sty_dv="ST">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 0px; top: 2786px;">

									<a href="/story/68948" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515674806554_l.jpg">
											</div>


											<h3>눈속에 푹~~ 빠졌습니다.</h3>
											<span class="period_str" title="다녀온 기간">1/8에 다녀옴(3일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>대관령삼양목장</li>
												<li><span>2 </span>삼척해수욕장</li>
												<li><span>3 </span>쏠비치호텔앤리조트 삼척</li>
												<li><span>4 </span>외암민속마을</li>
												<li><span>5 </span>곡교천</li>
												<li><span>6 </span>현충사</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 39</span> <span class="cmt">댓글
													19</span>
											</div>

											<div class="user">
												<img data-url="/hj126300" class="usr_img"
													src="https://img.tnote.kr/upload/user/1508506658396_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">HJ
														PARK</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000068948"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 600px; top: 2884px;">

									<a href="/essay/450" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515671802960.jpg">
											</div>


											<h3>게으른 노트</h3>
											<span class="period_str" title="게시일짜">2018-01-11</span>
											<div class="tp_info">
												<span class="tp_addr" title="방문일자">2017년을 보내며...</span>
											</div>
											<div class="tp_cnt">
												<span class="likes">좋아요 16</span> <span class="cmt">댓글
													11</span>
											</div>

											<div class="user">
												<img data-url="/null" class="usr_img"
													src="https://img.tnote.kr/upload/user/1506848640933_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">산바라기</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="E000000450"
												data-sty_dv="ES">
												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 200px; top: 3000px;">

									<a href="/story/68942" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515656785449_l.jpg">
											</div>


											<h3>가족들과 정선 여행 : )</h3>
											<span class="period_str" title="다녀온 기간">17/8/11에
												다녀옴(2일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>국립백두대간수목원</li>
												<li><span>2 </span>병방치스카이워크</li>
												<li><span>3 </span>정선시장</li>
												<li><span>4 </span>아우라지</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 9</span> <span class="cmt">댓글
													1</span>
											</div>

											<div class="user">
												<img data-url="/tu134559" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515655193911_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">안시옥</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000068942"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div class="item"
									style="display: block; position: absolute; left: 400px; top: 3154px;">

									<a href="/story/68938" target="_top">
										<div class="card">

											<div class="thumb">

												<div class="cover" style="display: none;">
													<div class="cover_btn">
														<div id="modify_data" data-sc_no="null"
															data-sc_gr_no="null">
															<button class="grup_modify">그룹변경</button>
															<button class="grup_delete">삭제</button>
														</div>
													</div>
												</div>
												<img
													src="https://img.tnote.kr/upload/photo/2018/1/1515655746043_l.jpg">
											</div>


											<h3>우리들의 제주 : )</h3>
											<span class="period_str" title="다녀온 기간">17/6/25에
												다녀옴(2일)</span>



											<ol class="locations" title="여행경로">
												<li><span>1 </span>오설록티뮤지엄</li>
												<li><span>2 </span>카멜리아힐</li>
												<li><span>3 </span>소인국테마파크</li>
												<li><span>4 </span>세화해수욕장</li>
											</ol>


											<div class="tp_cnt">
												<span class="likes">좋아요 13</span> <span class="cmt">댓글
													1</span>
											</div>

											<div class="user">
												<img data-url="/tu134559" class="usr_img"
													src="https://img.tnote.kr/upload/user/1515655193911_t.jpg">
												<div class="user_info">
													<span class="travel">traveler</span> <span class="usr_nm">안시옥</span>
												</div>
											</div>

											<div class="sty_btns" data-tm_no="T000068938"
												data-sty_dv="TL">

												<button class="sty_delete">삭제</button>
												<span class="line"></span>
												<button class="sty_modify">수정</button>
											</div>
											<div style="clear: both;"></div>
										</div>
									</a>
								</div>

								<div style="clear:both;"></div>
								<div class="sty_paging" style="display: block;">




									<div class="ad_board_number">

										<span class="first_span prev_span"><a class="first"
											onclick="fn_go_to_page('null', 1)"><label>처음</label></a></span> <span
											class="prev_span"><a class="prev disable"></a></span> <span><a
											class="selected">1</a></span> <span><a
											onclick="fn_go_to_page('null','2')">2</a></span> <span><a
											onclick="fn_go_to_page('null','3')">3</a></span> <span><a
											onclick="fn_go_to_page('null','4')">4</a></span> <span><a
											onclick="fn_go_to_page('null','5')">5</a></span> <span><a
											onclick="fn_go_to_page('null','6')">6</a></span> <span><a
											onclick="fn_go_to_page('null','7')">7</a></span> <span><a
											onclick="fn_go_to_page('null','8')">8</a></span> <span><a
											onclick="fn_go_to_page('null','9')">9</a></span> <span><a
											onclick="fn_go_to_page('null','10')">10</a></span> <span
											class="next_span"><a class="next"
											onclick="fn_go_to_page('null','11')"><label>다음</label></a></span> <span
											class="last_span "><a class="last"
											onclick="fn_go_to_page('null','1177')"><label>마지막</label></a></span>

									</div>

								</div>

								<input type="hidden" id="hid_ajax_is_last" value="NO"
									style="display: inline-block;">
							</div>
							<div id="feed_list" class="feed_list"
								data-feedurl="/story/story_srch.tlg" data-feedpage="2"
								data-feeddata="is_ad=Y&amp;srch_val=&amp;p_area_div=&amp;p_frgn_yn=&amp;p_sty_dv=&amp;na_cd="></div>
						</div>

						<script type="text/javascript">
							$(function() {

								var abroad_url = "/story/story.tlg?p_frgn_yn=Y&p_area_div=";
								var p_area_div = "";

								$("#srch_abroad LI A").click(function() {

									p_area_div = $(this).attr("data-div");
									location.href = abroad_url + p_area_div;

								});

								var inner_url = "/story/story.tlg?p_frgn_yn=N&p_area_div=";

								$("#srch_inner LI A").click(function() {

									p_area_div = $(this).attr("data-div");
									location.href = inner_url + p_area_div;
								});
							});
						</script>
						<div id="srch_box" class="srch_box"></div>
					</div>
					srchbox

				</div>
				container

				quick
 -->




					<div id="quick">
						<ul class="q_nav">
							<li class="nav_new"><a  id="openWrite">새로만들기</a></li>
							<li class="nav_today"><a class=""
								href="/story/story_today.tlg">오늘의여행기</a></li>
							<li class="nav_recmmd"><a class=""
								href="/story/story_rcmd_inner.tlg">추천여행기</a></li>
							<li class="nav_help"><a class=""
								href="/help.tlg?menu_tab=help">궁금해요</a></li>

						</ul>

					</div>
					<!-- //quick -->



				</div>
			</div>
		</div>

		<!--Company section-->

		<!-- <section id="company" class="company bg-light">
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
		</section> -->


		<!-- scroll up-->
		<div class="scrollup">
			<a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>
		<!-- End off scroll up -->


		<!-- <footer id="footer" class="footer bg-mega"
			style="display: relative; margin-top: 20%;">
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
 -->

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


	<script src="${js}bootstrap.green.min.js"></script>

	<!-- story javascript -->

	<script src="${js}/vendor/myScript.js"></script>

	<script type="text/javascript">
		var checkFirst = false;
		var lastKeyword = "";
		var loopSendKeyword = false;

		function checkId() {
			if (checkFirst == false) {
				setTimeOut("sendId();", 500);
				loopSendKeyword = true;
			}
			checkFirst = true;
		}

		function checkPwd() {
			var f1 = document.registerForm[0];
			var pwd1 = fl.inputPassword1.value;
			var pwd2 = f1.inputPassword2.value;

			if (pwd1 != pwd2) {
				document.getElementById('chkPwdMsg').innerHTML = "동일한 비밀 번호를 입력해주세요";
			} else {
				document.getElementById('chkPwdMsg').innerHTML = "비밀번호가 확인 되었습니다"
			}
		}

		function sendId() {
			if (loopSendKeyword == false)
				return;

			var keyword = document.registerForm.inputId.value;
			if (keyword == "") {
				lastKeyWord = "";
				document.getElementById('chkIdMsg').innerHTML = "아이디를 입력해주세요";
			} else if (keyword != lasyKeyWord) {
				lastKeyWord = keyword;

				if (keyword != "") {
					var params = encodeURIComponent(keyword);
					sendRequest("confirmId", params, displayResult, 'POST');

				} else {

				}
			}
			sendTimeout("sendId();", 500);
		}

		function displayResult() {
			if (httpRequest.readyState == 4) {
				if (httpRequest.status == 200) {
					var resultTest = httpRequest.responseText;
					var listView = document.getElementBy('chkIdMsg');

					if (resultText == 0) {
						listView.innerHTML = "사용할 수 있는 아이디 입니다";
					} else {
						listView.innerHTML = "사용할 수 없는 아이디 입니다";
					}
				} else {
					result.innerHTML = "에러발생";
				}
			}
		}
	</script>
</body>
</html>