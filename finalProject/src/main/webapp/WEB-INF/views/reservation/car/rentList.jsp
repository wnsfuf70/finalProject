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
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="main">홈
					<img src="#" class="logo logo-display" alt=""> 
					<img src="#" class="logo logo-scrolled" alt="">
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
								<li><a href="rent">렌트카 예약</a></li>
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
								<li><a href="xxxStart">계획하기</a></li>
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
<!-- 모달 추가 시작 login -->
	<div class="row">
		<div class="modal" id="login" tabindex="-1"  >
			<!-- #model로 지정했으므로 id="model" -->
			<div class="modal-dialog" style="z-index:9999">
				<div class="modal-content">
					<div class="modal-header">
						로그인
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					
					<div class="modal-body" style="text-align: center;">
					<center><img src="${images}/Login.png"></center>
						<form id="login-form" action="login" method="post" role="form" style="display: block;">
							
							<div class="form-group">
								<input type="text" name="userId" id="userId" tabindex="1" class="form-control" placeholder="아이디" value="">
							</div>
							
							<div class="form-group">
								<input type="password" name="userPassword" id="userPassword" tabindex="2" class="form-control" placeholder="비밀번호" value="">
							</div>
							
							<div class="form-group">
								<div class="row">
									<div class="col-sm-6 col-sm-offset-3">
										<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="btn btn-success" value="로그인">
									</div>
								</div>
							</div>
							
							<div class="form-group">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<a href="https://phpoll.com/recover" tabindex="5" class="forgot-password"> 아이디 | 비밀번호 찾기</a>
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
			<div class="modal-dialog" style="z-index:9999">
				<div class="modal-content" style="height:950px">
					<div class="modal-header">
						회원가입
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="text-align: center;">
		
			<!-- 회원가입 -->
			<div class="col-md-12">
				<form role="form" action="register" method="post" role="form" style="display: block;">
					<div class="form-group">
						<label for="username">사용자 이름</label> 
						<input type="text" class="form-control" id="username" placeholder="이름을 입력해 주세요" name="name">
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
						<input type="text" class="form-control" id="InputId" placeholder="아이디(영문+숫자/6~15이내)" required="required" name="mem_id">
					</div>
					<div class="form-group">
						<label for="InputPassword1">비밀번호</label> 
						<input type="password" class="form-control" id="InputPassword1" placeholder="비밀번호(영문+숫자/6~15이내)" required="required" name="password">
					</div>
					<div class="form-group">
						<label for="InputPassword2">비밀번호 확인</label> 
						<!-- <div id="chkPwdOk"><span class="glyphicon glyphicon-ok"></span></div>
						<div id="chkPwdRemove"><span class="glyphicon glyphicon-remove"></span></div> -->
						<div id="chkPwdMsg"></div>
						<input type="password" class="form-control" id="InputPassword2" placeholder="비밀번호 확인" required="required">
						<!-- <p class="help-block">비밀번호 확인을 위해 다시 한번 입력 해 주세요</p> -->
					</div>
					<div class="form-group">
						<label for="InputEmail">이메일 주소</label> 
						<input type="email" class="form-control" id="InputEmail" placeholder="E-Mail(비밀번호 분실 시 필요합니다)" required="required" name="email">
					</div>
					<div class="form-group">
						<label for="InputBirthday">생년월일</label> 
						<input type="date" class="form-control" id="InputBirthday" placeholder="생년월일을 선택해 주세요" required="required" name="birth">
					</div>
					<div class="form-group">
						<label for="InputGender">성별</label>&nbsp;&nbsp;&nbsp; 
						<label> <input name="sex" type="radio" value="Male" checked> 남자  </label>
						&nbsp;&nbsp;&nbsp; 
						<label><input name="sex" type="radio" value="Female"> 여자</label>
					</div>
					<div class="form-group">
						<label for="username">휴대폰 인증</label>
						<div class="input-group">
							<input type="tel" class="form-control" id="username" placeholder="- 없이 입력해 주세요" name="phone"> 
							<span class="input-group-btn">
								<button class="btn btn-success">
									인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i>
								</button>
							</span>
						</div>
					</div>
					<div class="form-group">
						<label for="username">인증번호 입력</label>
						<div class="input-group">
							<input type="text" class="form-control" id="username" placeholder="인증번호"> <span class="input-group-btn">
								<button class="btn btn-success">
									인증번호 입력<i class="fa fa-edit spaceLeft"></i>
								</button>
							</span>
						</div>
					</div>
					<div class="form-group">
						<label>약관 동의</label>
						<div data-toggle="buttons">
							<label class="btn btn-primary active"> 
							<span class="fa fa-check"></span> 
							<input id="agree" type="checkbox" autocomplete="off" checked>
							</label> <a href="#">이용약관</a>에 동의합니다.
						</div>
					</div>
					<div class="form-group text-center">
						<button type="submit" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
						<button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
					</div>
				</form>
			</div>
			<!-- 회원가입 종료 -->
					</div>
				</div>
			</div>
		</div>
	</div>	
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
		<!--End off Home Sections-->
		<!-- 렌트카 리스트 -->
		<div class="container">
		<br>
			<form action="" method="post" name="rentCarForm">
				<h3>${rental_day}부터  ${return_day}까지 ${car_kind}차량 검색 결과 입니다.</h3>
				
				<c:forEach var="car" items="${dtos}">
				<hr>			
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-3">
								<img src="/project/resources/images/car/${car.car_img}" width="200px" height="150px">
							</div>
							<div class="col-md-6">
							<br>
								<table class="table table-condensed">	
									<tr>
										<td>차량이름</td>
										<td id="car_name">${car.car_name}</td>
									</tr>
									<tr>
										<td>차량종류</td>
										<td id="car_kind">${car.car_kind}</td>
									</tr>																	
									<tr>
										<td>가격</td>
										<td id="car_price">${car.car_price}</td>			
									</tr>				
								</table>
							</div>
							<br>
							<div class="col-md-3">
								<button type="button"  class="btn btn-default btn-lg">예약하기</button>
								<button type="button"  class="btn btn-default btn-lg" onclick="showDetailCarInfo('${car.car_num}')">상세보기</button>
							</div>
						</div>
					</div> 				
				</c:forEach>
				<!-- 페이지 컨트롤 -->
				<div class="row">
					<div class="col-md-12">
						<table id="paging">
							<tr>
								<th align="center">
										<!-- 처음[◀◀] / 이전 블록[◀] -->
									<c:if test="${blockStartNumber!=1}">
										<input type="button" value="[◀◀]" onclick="window.location='rentList?requestPage=${startPage}&car_kind=${car_kind}&rental_day=${rental_day}&return_day=${return_day}'">
										<input type="button" value="[◀]" onclick="window.location='rentList?requestPage=${blockStartNumber-1}&car_kind=${car_kind}&rental_day=${rental_day}&return_day=${return_day}'">
									</c:if>
									<c:forEach var="n" begin="${blockStartNumber}" end="${blockEndNumber}">
										<c:if test="${n!=pageNum}">
											<a href="rentList?requestPage=${n}&car_kind=${car_kind}&rental_day=${rental_day}&return_day=${return_day}">${n}</a>
										</c:if>
										<c:if test="${n==pageNum}">
											<b>${n}</b>
										</c:if>
									</c:forEach>
									<c:if test="${blockEndNumber!=endPage}">
										<input type="button" value="[▶]" onclick="window.location='rentList?requestPage=${blockEndNumber+1}&car_kind=${car_kind}&rental_day=${rental_day}&return_day=${return_day}'">
										<input type="button" value="[▶▶]" onclick="window.location='rentList?requestPage=${endPage}&car_kind=${car_kind}&rental_day=${rental_day}&return_day=${return_day}'">
									</c:if>	
								</th>
							</tr>
						</table>
					</div>
				</div>			
			</form>
		</div>
	<!-- 렌트카 리스트 종료 -->
	
	<!-- 상세보기 모달 시작-->
		<div class="row">
			<div class="modal" id="carDetailModal" tabindex="-1">
				<div class="modal-dialog" style="z-index:9999">				
					<div class="modal-content">
						<form name="carDetailModalForm">
							<div class="modal-header">
								<h4>차량 상세정보</h4>
							</div>
							<div class="modal-body">
							
								<div class="container-fluid">
									<div class="row">
										<div class="col-md-6">
											<img src="" width="350px" height="300px" id="car_img">
										</div>
										<div class="col-md-6">
											<br>
											<table class="table table-condensed">	
												<tr>
													<td>차량이름</td>
													<td id="car_name">${vo.car_name}</td>
												</tr>
												<tr>
													<td>차량브랜드</td>
													<td id="car_brand">${vo.brand_name}</td>
												</tr>
												<tr>
													<td>차량종류</td>
													<td id="car_kind">${car.car_kind}</td>
												</tr>
													
												<tr>
													<td>보험</td>
													<td id="insurance">${car.insurance}</td>
												</tr>
																	
												<tr>
													<td>연료상태</td>
													<td id="fuel">${car.fuel}</td>
												</tr>
												<tr>
													<td>가격</td>
													<td id="car_price">${car.car_price}</td>			
												</tr>
												<tr>
													<td>추가가격</td>
													<td id="car_addprice">${car.car_addprice}</td>		
												</tr>					
											</table>
										</div>
									</div>
								</div> 
								
								
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default btn-sm">예약하기</button>
								<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">닫기</button>
							</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 상세보기 모달 종료 -->
	<script type="text/javascript">
		function showDetailCarInfo(car_num){
			
			$.ajax({
				url : "getViewDetail?car_num="+car_num
				,type : 'GET'
				,contentType: "application/x-www-form-urlencoded; charset=UTF-8"
				,success : function(vo) {
					
					$("form[name='carDetailModalForm'] img").attr("src","/project/resources/images/car/"+vo.car_img);
					$("form[name='carDetailModalForm'] #car_name").html(vo.car_name);
					$("form[name='carDetailModalForm'] #car_kind").html(vo.car_kind);
					$("form[name='carDetailModalForm'] #car_price").html(vo.car_price);
					
					document.getElementById("car_brand").innerHTML=vo.brand_name;
					document.getElementById("car_addprice").innerHTML=vo.car_addprice;
					document.getElementById("insurance").innerHTML=vo.insurance;
					document.getElementById("fuel").innerHTML=vo.fuel;
					$("#carDetailModal").modal('show');
				}
				,error : function() {
					alert('error');
				}
			})
			
		}		
	</script>
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