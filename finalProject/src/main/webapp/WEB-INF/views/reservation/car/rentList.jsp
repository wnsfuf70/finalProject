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
		<!--End off Home Sections-->
		<!-- 렌트카 리스트 -->
		<div class="container">
		<br>
			<form action="" method="post" name="rentCarForm">
			<h3>${rental_day}일 ${rental_time}분부터  ${return_day}일 ${return_time}분까지 ${car_kind}차량 검색 결과 입니다.</h3>
				
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
										<td style="width:270px;">차량이름</td>
										<td id="car_name">${car.car_name}</td>
									</tr>
									<tr>
										<td style="width:270px;">차량종류</td>
										<td id="car_kind">${car.car_kind}</td>
									</tr>																	
									<tr>
										<td style="width:270px;">1일가격</td>
										<td id="car_price">${car.car_price}</td>			
									</tr>
									<tr>
										<td style="color:red;">총 가격</td>
											<c:if test="${return_s < rental_s}">
												<c:set var="total" value="${(car.car_price*diffDats) + (car.car_addprice*ch)}" />
												<td id="${car.car_num }_total">${total}</td>		
									        </c:if>
									        <c:if test="${return_s > rental_s}">
									        	<c:set var="total1" value="${(car.car_price*diffDats) + (car.car_addprice*t)}"/>
									        	<td id="${car.car_num }_total">${total1}</td>
									        </c:if>
									</tr>				
								</table>
							</div>
							<br>
							<div class="col-md-3">
								<c:if test="${car.car_count == 1}">
									<button type="button" class="btn btn-default btn-lg" onclick="showDetailCarInfo('${car.car_num}')">상세보기</button>
								</c:if>
								<c:if test="${car.car_count ==0}">
									<span style="coler:red;">예약 불가</span>
								</c:if>
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
										<input type="button" value="[◀◀]" onclick="window.location='rentList?requestPage=${startPage}&car_kind=${car_kind}&rental_day=${rental_day}&return_day=${return_day}&rental_time=${rental_time}&return_time=${return_time}'">
										<input type="button" value="[◀]" onclick="window.location='rentList?requestPage=${blockStartNumber-1}&car_kind=${car_kind}&rental_day=${rental_day}&return_day=${return_day}&rental_time=${rental_time}&return_time=${return_time}'">
									</c:if>
									<c:forEach var="n" begin="${blockStartNumber}" end="${blockEndNumber}">
										<c:if test="${n!=pageNum}">
											<a href="rentList?requestPage=${n}&car_kind=${car_kind}&rental_day=${rental_day}&return_day=${return_day}&rental_time=${rental_time}&return_time=${return_time}">${n}</a>
										</c:if>
										<c:if test="${n==pageNum}">
											<b>${n}</b>
										</c:if>
									</c:forEach>
									<c:if test="${blockEndNumber!=endPage}">
										<input type="button" value="[▶]" onclick="window.location='rentList?requestPage=${blockEndNumber+1}&car_kind=${car_kind}&rental_day=${rental_day}&return_day=${return_day}&rental_time=${rental_time}&return_time=${return_time}'">
										<input type="button" value="[▶▶]" onclick="window.location='rentList?requestPage=${endPage}&car_kind=${car_kind}&rental_day=${rental_day}&return_day=${return_day}&rental_time=${rental_time}&return_time=${return_time}'">
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
						<form action="requestReservation" name="carDetailModalForm" method="get">
						<input type="hidden" name="rental_day" value="${rental_day}">
						<input type="hidden" name="return_day" value="${return_day}">
						<input type="hidden" name="rental_time" value="${rental_time}">
						<input type="hidden" name="return_time" value="${return_time}">
						<input type="hidden" name ="car_name">
						<input type="hidden" name="rent_no">
						<input type="hidden" name="mem_id" value="${mem_id}">
						<input type="hidden" name="brand_name">
						<input type="hidden" name="car_kind">
						<input type="hidden" name="insurance">
						<input type="hidden" name="fuel">
						<input type="hidden" name="car_price">
						<input type="hidden" name="car_addprice">
						<input type="hidden" name="total1">
						
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
													<td id="car_kind">${vo.car_kind}</td>
												</tr>
													
												<tr>
													<td>보험</td>
													<td id="insurance">${vo.insurance}</td>
												</tr>
																	
												<tr>
													<td>연료상태</td>
													<td id="fuel">${vo.fuel}</td>
												</tr>
												<tr>
													<td>1일가격</td>
													<td id="car_price">${vo.car_price}</td>			
												</tr>
												<tr>
													<td>시간당추가가격</td>
													<td id="car_addprice">${vo.car_addprice}</td>		
												</tr>
												<tr>	
													<td style="color:red;">총가격</td>
 														<c:if test="${return_s < rental_s}">
															<c:set var="total" value="${(car.car_price*diffDats) + (car.car_addprice*ch)}" />
															<td id="total">${total}</td>		
												        </c:if>
												        <c:if test="${return_s > rental_s}">
												        	<c:set var="total1" value="${(car.car_price*diffDats) + (car.car_addprice*t)}"/>
												        	<td id="total">${total1}</td>
												        </c:if>
												</tr>				
											</table>
										</div>
									</div>
								</div> 
							<div class="row">
								<div class="col-md-12">		
								<br>		
									<h4>정보 입력</h4>			
									<table class="table table-condensed">
										<tr>
											<td>성명</td>
											<td colspan="3"><input type="text" name="name" style="width:100px;" required="required"></td>
										</tr>
										<tr>
											<td>휴대폰</td>
											<td colspan="3"><input type="text" name="phone1" style="width:100px;" required="required"> -
											<input type="text" name="phone2" style="width:100px;" required="required"> -
											<input type="text" name="phone3" style="width:100px;" required="required"></td>
										</tr>
										<tr>
											<td>면허종류</td>
											<td>
												<select required="required" name="driver_kind">
													<option>선탁하세요</option>
													<option>1종보통</option>
													<option>2종보통</option>
												</select>
											</td>
											<td>면허 유효일자</td>
											<td>
												<select required="required" name="driver1">
													<option>선택</option>
													<option>2018</option>
													<option>2019</option>
													<option>2020</option>
													<option>2021</option>
													<option>2022</option>
												</select>
												<select required="required" name="driver2">
													<option>선택</option>
													<option>01</option>
													<option>02</option>
													<option>03</option>
													<option>04</option>
													<option>05</option>
													<option>06</option>
													<option>07</option>
													<option>08</option>
													<option>09</option>
													<option>10</option>
													<option>11</option>
													<option>12</option>
												</select>
												<select required="required" name="driver3">
													<option>선택</option>
													<option>01</option>
													<option>02</option>
													<option>03</option>
													<option>04</option>
													<option>05</option>
													<option>06</option>
													<option>07</option>
													<option>08</option>
													<option>09</option>
													<option>10</option>
													<option>11</option>
													<option>12</option>
													<option>13</option>
													<option>14</option>
													<option>15</option>
													<option>16</option>
													<option>17</option>
													<option>18</option>
													<option>19</option>
													<option>20</option>
													<option>21</option>
													<option>22</option>
													<option>23</option>
													<option>24</option>
													<option>25</option>
													<option>26</option>
													<option>27</option>
													<option>28</option>
													<option>29</option>
													<option>30</option>
													<option>31</option>
												</select>
											</td>
										</tr>
										<tr>
											<td>E-mail</td>
											<td colspan="3"><input type="text" name="email1" required="required"> @ <input type="text" name="email2" required="required"></td>
										</tr>
									</table>
								</div>
							</div>
						
							<div class="row">
								<div class="col-md-12">
									<h4>결제 수단</h4>
										<input type="radio" name="payment" value="신용카드">신용카드 &ensp;&ensp;
										<input type="radio" name="payment" value="계좌이체">계좌이체 &ensp;&ensp;
										<input type="radio" name="payment" value="무통장입금">무통장입금 &ensp;&ensp;
										<input type="radio" name="payment" value="핸드폰결제">핸드폰결제 
								</div>
							</div>
								
							</div>
							<div class="modal-footer">
								<button type="submit" class="btn btn-default btn-sm">예약하기</button>
								<button type="button" class="btn btn-default btn-sm" data-dismiss="modal">닫기</button>
							</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 상세보기 모달 종료 -->
	<!-- 결제 모달  시작-->
			<div class="row">
			<div class="modal" id="payModal" tabindex="-1">
				<div class="modal-dialog" style="z-index:9999">				
					<div class="modal-content">
						<div class="modal-header">
							<h4>결제</h4>
						</div>
						<div class="modal-body">
						
						</div>
						<div class="modal=footer">
						
						</div>
					</div>
				</div>
			</div>
	<!-- 결제 모달 종료 -->
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
					
					//총가격
					var totalPrice = $("#"+car_num+"_total").text();
					$("#total").html(totalPrice);		
					
					$("#carDetailModal").modal('show');
					
					$("form[name='carDetailModalForm'] input[name='car_name']").attr("value",vo.car_name);
					$("form[name='carDetailModalForm'] input[name='rent_no']").attr("value",vo.rent_no);
					$("form[name='carDetailModalForm'] input[name='car_kind']").attr("value",vo.car_kind);
					$("form[name='carDetailModalForm'] input[name='brand_name']").attr("value",vo.brand_name);
					$("form[name='carDetailModalForm'] input[name='insurance']").attr("value",vo.insurance);
					$("form[name='carDetailModalForm'] input[name='fuel']").attr("value",vo.fuel);
					$("form[name='carDetailModalForm'] input[name='car_price']").attr("value",vo.car_price);
					$("form[name='carDetailModalForm'] input[name='car_addprice']").attr("value",vo.car_addprice);
					$("form[name='carDetailModalForm'] input[name='total1']").attr("value",totalPrice);
					
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