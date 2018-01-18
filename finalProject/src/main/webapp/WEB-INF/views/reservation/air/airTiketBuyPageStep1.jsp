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

<script type="text/javascript">

	//페이지 동작스크립트함수
	function payResultCal(){
	
		var res = document.getElementById("payResult");
		
		var pay = 0;
		var pay2 = 0;
		var pay3 = 0;
		
		var num = document.getElementById("numSize").value;
		var num2 = document.getElementById("numSize2").value;
		var num3 = document.getElementById("numSize3").value;
		
		var level = $("#seatLevel option:selected").val();
		var level2 = $("#seatLevel2 option:selected").val();
		var level3 = $("#seatLevel3 option:selected").val();
		
		var ages = $("#ages option:selected").val();
		var ages2 = $("#ages2 option:selected").val();
		var ages3 = $("#ages3 option:selected").val();
		
		var targetLoc = $("#targetLocation option:selected").val();
	
		//alert ( num + " , " + level + " , " + ages + " , " + targetLoc );
		//alert ( num2 + " , " + level2 + " , " + ages2 + " , " + targetLoc);
		//alert ( num3 + " , " + level3 + " , " + ages3 + " , " + targetLoc);
		
		if((num+num2+num3)==0 || (num==null && num2==null && num3==null) ){
			res.innerHTML = "0";
			return;
		}
		else{
			
			num = document.getElementById("numSize").value;
			num2 = document.getElementById("numSize2").value;
			num3 = document.getElementById("numSize3").value;
			
			if(!(num==0 || num==null)){
				if(level=='nomal'){
					pay = $("#a1").text()
				}
				else if(level=='highClass'){
					pay = $("#a2").text()
				}
				else if(level=='premium'){
					pay = $("#a3").text()
				}
			}
	
			if(!(num2==0 || num2==null)){
				if(level2=='nomal'){
					pay2 = $("#b1").text()
				}
				else if(level2=='highClass'){
					pay2 = $("#b2").text()
				}
				else if(level2=='premium'){
					pay2 = $("#b3").text()
				}
			}
			
			if(!(num3==0 || num3==null)){
				if(level3=='nomal'){
					pay3 = $("#c1").text()
				}
				else if(level3=='highClass'){
					pay3 = $("#c2").text()
				}
				else if(level3=='premium'){
					pay3 = $("#c3").text()
				}
			}
			
			
			//경유지 없는경유
			if(!targetLoc){
				var dis = $("#resultDis1").text();
				pay = pay*dis*num;
				pay2 = pay2*dis*num2;
				pay3 = pay3*dis*num3;

				res.innerHTML = (pay+pay2+pay3);
			}
			else{
				//경유지 있는경유
				if(targetLoc=='endLocation'){
					var dis = $("#fromStartToEnd").text();
					pay = pay*dis*num;
					pay2 = pay2*dis*num2;
					pay3 = pay3*dis*num3;
					
					res.innerHTML = (pay+pay2+pay3);
				}
				else if(targetLoc=='midLocation'){
					var dis = $("#fromStartToMid").text();
					pay = pay*dis*num;
					pay2 = pay2*dis*num2;
					pay3 = pay3*dis*num3;
					
					res.innerHTML = (pay+pay2+pay3);
				}
			}
			
		}
	}

	
	$(function() {
		
		setInterval(remainSeat,1500);
		
		$(".resBtn").click(function() {
					
					var airplaneNo = $("#airPlaneNO").text();
					var startLocation = $("#startLoc").text();
					var endLocation ;
					
					var startTime = $("#startTime").text();
					var endTime;
					
					var price = $("#payResult").text();
					
					var num1 = document.getElementById("numSize").value;
					var num2 = document.getElementById("numSize2").value;
					var num3 = document.getElementById("numSize3").value;
					
					
					var level = $("#seatLevel option:selected").val();
					var level2 = $("#seatLevel2 option:selected").val();
					var level3 = $("#seatLevel3 option:selected").val();
					
					var targetLocation = $("#targetLocation option:selected").val();
					
					if((num1+num2+num3)<1){
						alert("인원을 선택하세요");
						return false;
					}
					
					
					if(!targetLocation){
						endLocation = $("#endLoc").text();
						endTime = $("#endTime").text();
					}
					else{
						if(targetLocation=='endLocation'){
							endLocation = $("#endLoc").text();
							endTime = $("#endTime").text();
						}
						else{
							endLocation = $("#midLoc").text();
							endTime = $("#midTime").text();
						}
						
					}		
					
					var form = document.airReservatingForm;
					
					form.airPlaneNo.value = airplaneNo;
					form.startLocation.value = startLocation;
					form.endLocation.value = endLocation;
					form.startTime.value = startTime;
					form.endTime.value = endTime;
					form.price.value = price;
					
					if(!num1){
						form.adult.value = "0";
						form.seatLevel_adult.value = "noSelect";
					}
					else{
						form.adult.value = num1;
						if(form.adult.value=='0')
							form.seatLevel_adult.value = "noSelect";
						else
							form.seatLevel_adult.value = level;
					}
					
					if(!num2){
						form.student.value = "0";
						form.seatLevel_student.value = "noSelect";
					}
					else{
						form.student.value = num2;
						if(form.student.value=='0')
							form.seatLevel_student.value = "noSelect";
						else
							form.seatLevel_student.value = level2;
					}
					
					if(!num3){
						form.baby.value = "0";
						form.seatLevel_baby.value = "noSelect";
					}
					else{
						form.baby.value = num3;
						if(form.baby.value=='0')
							form.seatLevel_baby.value = "noSelect";
						else
							form.seatLevel_baby.value = level3;
						
					}
					
					var remainTotal = $("#remain_total").text();

					if(remainTotal <  parseInt(num1)+parseInt(num2)+parseInt(num3) || remainTotal =='매진'){
						alert("좌석수가 예매 수량보다 작습니다.");
					}
					else{
						$("form[name='airReservatingForm']").submit();
					}
					return false;
				})
		
	})
		
		
		
	
	
	//정의된함수
	//남아있는 좌석에대한 ajax
	function remainSeat(){
		
		var airplaneNo = $("#airPlaneNO").text();
		
		$.ajax({
			url : "getRemainSeat?airPlaneNo="+airplaneNo ,
			type : 'GET',
			success : function(vo) {
				
				var nomalSeat = vo.nomal;
				var highClassSeat = vo.highClass;
				var premiumSeat = vo.premium;
				var total = nomalSeat + highClassSeat + premiumSeat;
				
				if(nomalSeat>0){
					$("#remain_nomal").html(nomalSeat);
				}
				else{
					$("#remain_nomal").html("매진");
				}
				
				if(highClassSeat>0){
					$("#remain_highClass").html(highClassSeat);
				}
				else{
					$("#remain_highClass").html("매진");
				}
				
				if(premiumSeat>0){
					$("#remain_premium").html(premiumSeat);
				}
				else{
					$("#remain_premium").html("매진");
				}
				
				if(total>0){
					$("#remain_total").html(total);
				}
				else{
					$("#remain_total").html("매진");
				}
				
				
			}
		  , error : function() {

		  	}
		})
		
	}
	
	function seatSelectEvent(){
		payResultCal();
		
		var level = $("#seatLevel option:selected").val();
		var level2 = $("#seatLevel2 option:selected").val();
		var level3 = $("#seatLevel3 option:selected").val();
		
		//alert(level + level2 + level3)
		var nomal = $("#remain_nomal").text();
		var highClass = $("#remain_highClass").text();
		var premium = $("#remain_premium").text();
		 
		if(level=='nomal'){
			if(nomal=='매진'){
				$("#numSize").attr("max",0);
			}else{
				$("#numSize").attr("max",nomal);
			}
		}
		else if(level=='highClass'){
			if(highClass=='매진'){
				$("#numSize").attr("max",0);
			}else{
				$("#numSize").attr("max",highClass);
			}
		}
		else if(level=='premium'){
			if(premium=='매진'){
				$("#numSize").attr("max",0);
			}else{
				$("#numSize").attr("max",premium);
			}
		}
		
		if(level2=='nomal'){
			if(nomal=='매진'){
				$("#numSize2").attr("max",0);
			}else{
				$("#numSize2").attr("max",nomal);
			}		
		}
		else if(level2=='highClass'){
			if(highClass=='매진'){
				$("#numSize2").attr("max",0);
			}else{
				$("#numSize2").attr("max",highClass);
			}
		}
		else if(level2=='premium'){
			if(premium=='매진'){
				$("#numSize2").attr("max",0);
			}else{
				$("#numSize2").attr("max",premium);
			}
		}
				
		if(level3=='nomal'){
			if(nomal=='매진'){
				$("#numSize3").attr("max",0);
			}else{
				$("#numSize3").attr("max",nomal);
			}		
		}
		else if(level3=='highClass'){
			if(highClass=='매진'){
				$("#numSize3").attr("max",0);
			}else{
				$("#numSize3").attr("max",highClass);
			}
		}
		else if(level3=='premium'){
			if(premium=='매진'){
				$("#numSize3").attr("max",0);
			}else{
				$("#numSize3").attr("max",premium);
			}
		}
		
		
	}
	
	
</script>


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
						<b>운행정보<br><span id="airPlaneNO">${a.airPlaneNo }</span></b>
					</h4>
					<c:if test="${r.route2==null }">
						<div style="position: relative; left: 50px; top: 50px;">
							<fmt:formatDate var="st" value="${r.startTime}"
								pattern="yyyy-MM-dd HH시  mm분" />
							<fmt:formatDate var="at" value="${r.arrivalTime}"
								pattern="yyyy-MM-dd HH시 mm분" />
							<span style="font-size: 30px;" id="startLoc">${r.route1 }</span><small>(출발)</small>
							<span style="font-size: 30px;"><b>&nbsp;&nbsp;-&nbsp;&nbsp;</b></span>
							<span style="font-size: 30px;" id="endLoc">${r.route3}</span> <small>(도착)</small>
							<br>
							<br>
							
		<!-- 					private int distance1;
								private int distance2;
								private int resultDistance; -->
							
							<div>출발시간 : ${st}</div>
							<div>도착시간 : ${at }</div>
							
							<div>총 거리 : <span id="resultDis1">${r.resultDistance }</span> km</div>
						</div>
					</c:if>
					<c:if test="${r.route2!=null }">
						<div style="position: relative; left: 40px; top: 20px;">
							<fmt:formatDate var="st" value="${r.startTime}"
								pattern="yyyy-MM-dd HH시  mm분" />
							<fmt:formatDate var="mt" value="${r.midTime}"
								pattern="yyyy-MM-dd HH시 mm분" />
							<fmt:formatDate var="at" value="${r.arrivalTime}"
								pattern="yyyy-MM-dd HH시 mm분" />
							<span style="font-size: 30px;" id="startLoc">${r.route1 }</span> <small>(출발)</small>
							<span style="font-size: 30px;"><b>&nbsp;&nbsp;-&nbsp;&nbsp;</b></span>
							<span style="font-size: 30px;" id="midLoc">${r.route2 }</span> <small>(경유)</small>
							<span style="font-size: 30px;"><b>&nbsp;&nbsp;-&nbsp;&nbsp;</b></span>
							<span style="font-size: 30px;" id="endLoc">${r.route3}</span> <small>(도착)</small>
							<br>
							<br>
							
							<div><span id="resultDis2">총 거리 : ${r.distance1+r.distance2 }</span> km</div>
					
							<div>출발시간 : <span id="startTime">${st}</span></div>
							<div>경유지 도착시간 : <span id="midTime">${mt}</span></div>
							<div>목적지 도착시간 : <span id="endTime">${at}</span></div>
					
							<div>출발지 -> 경유지 : <span id="fromStartToMid">${r.distance1 }</span> km</div>
							<div>출발지 -> 도착지 : <span id="fromStartToEnd">${r.resultDistance }</span> km</div>
						</div>
					</c:if>
				</div>
				<div class="col-md-6">
					<h4>
						<b>구분/좌석별 금액</b>
					</h4>
					<h6>1km 요금<small>(단위:원)</small></h6>
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
								<td id="a1">${s.nomal_A }</td>
								<td id="a2">${s.highClass_A }</td>
								<td id="a3">${s.premium_A }</td>
							</tr>
							<tr>
								<th>학생</th>
								<td id="b1">${s.nomal_B }</td>
								<td id="b2">${s.highClass_B }</td>
								<td id="b3">${s.premium_B }</td>
							</tr>
							<tr>
								<th>유아</th>
								<td id="c1">${s.nomal_C }</td>
								<td id="c2">${s.highClass_C }</td>
								<td id="c3">${s.premium_C }</td>
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
						<label for="">구분</label> 
					</div>
					<div class="col-md-2">
						<label for="">인원</label> 
					</div>
					<div class="col-md-2">
						<label for="">좌석</label> 
					</div>
				</div>
				<div class="row">
					<div class="col-md-2">
						<div class="form-group">
							<select style="-webkit-appearance: none;  appearance: none; " 
									id="ages" name="ages" 
								class="form-control">
								<option value="adult">성인</option>
							</select>
						</div>
						<div class="form-group">
							<select style="-webkit-appearance: none;  appearance: none; "
									id="ages2" name="ages2"
								class="form-control">
								<option value="student">학생</option>
							</select>
						</div>
						<div class="form-group">
							<select style="-webkit-appearance: none;  appearance: none; "
									id="ages3" name="ages3"
								class="form-control">
								<option value="baby">유아</option>
							</select>
						</div>
						
						<c:if test="${r.route2!=null}">
							<div class="form-group">
								<label for="targetLocation">목적지 선택</label> 
								<select id="targetLocation" name="targetLoc" onchange="payResultCal()"
									class="form-control">
									<option value="endLocation">도착지</option>
									<option value="midLocation">경유지</option>
								</select>
							</div>
						</c:if>
					</div>
				
					<div class="col-md-2" >
						<div class="form-group">
							<input type="number" min="0" oninput="payResultCal()" max="${a.nomal }"
								class="form-control" id="numSize" placeholder="인원수">
						</div>
						<div class="form-group">
							<input type="number" min="0" oninput="payResultCal()" max="${a.nomal }"
								class="form-control" id="numSize2" placeholder="인원수">
						</div>
						<div class="form-group">
							<input type="number" min="0" oninput="payResultCal()" max="${a.nomal }"
								class="form-control" id="numSize3" placeholder="인원수">
						</div>
					</div>

					<div class="col-md-2">
						<div class="form-group">
							<select id="seatLevel" onchange="seatSelectEvent()"
								class="form-control">
								<option value="nomal">일반석</option>
								<option value="highClass">고급석</option>
								<option value="premium">프리미엄석</option>
							</select>
						</div>
						<div class="form-group">
							<select id="seatLevel2" onchange="seatSelectEvent()"
								class="form-control">
								<option value="nomal">일반석</option>
								<option value="highClass">고급석</option>
								<option value="premium">프리미엄석</option>
							</select>
						</div><div class="form-group">
							<select id="seatLevel3" onchange="seatSelectEvent()"
								class="form-control">
								<option value="nomal">일반석</option>
								<option value="highClass">고급석</option>
								<option value="premium">프리미엄석</option>
							</select>
						</div>
						
					</div>

					
					<div class="col-md-4 col-md-offset-1">
						<h5>
							<b>좌석현황</b>
						</h5>
						<div class="well well-lg">
							<ul class="list-group">
								<li class="list-group-item">일반석&nbsp;:&nbsp;
									<span id="remain_nomal">
										<c:if test="${a.nomal > 0 }">
											${a.nomal }
										</c:if>
										<c:if test="${a.nomal <= 0 }">
											매진
										</c:if>
									</span>
								</li>
								<li class="list-group-item">고급석&nbsp;:&nbsp;
									<span id="remain_highClass">
										<c:if test="${a.highClass > 0 }">
											${a.highClass }
										</c:if>
										<c:if test="${a.highClass <= 0 }">
											매진
										</c:if>
									</span>
								</li>
								<li class="list-group-item">프리미엄석&nbsp;:&nbsp;
									<span id="remain_premium">
										<c:if test="${a.premium > 0}">
											${a.premium }
										</c:if>
										<c:if test="${a.premium <= 0}">
											매진
										</c:if>
									</span>
								</li>
								<li class="list-group-item">남은 좌석수&nbsp;:&nbsp;
									<span id="remain_total">
										<c:if test="${(a.nomal+a.highClass+a.premium) > 0}">
											${a.nomal+a.highClass+a.premium}
										</c:if>
										<c:if test="${(a.nomal+a.highClass+a.premium) <= 0}">
											매진
										</c:if>
									</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div><h4><b>결제금액</b> : <span id="payResult">0</span> 원</h4></div>
				</div>
			</div>


		</div>

		<div class="container" id="test">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<a class="resBtn">예약하기</a>

				</div>

			</div>

			<form style="display: none" action="airReservating" method="POST" name="airReservatingForm">
				<input type="hidden" name="airPlaneNo">
				<input type="hidden" name="startLocation">
				<input type="hidden" name="endLocation">
				<input type="hidden" name="price">
				<input type="hidden" name="adult">
				<input type="hidden" name="student">
				<input type="hidden" name="baby">
				<input type="hidden" name="seatLevel_adult">
				<input type="hidden" name="seatLevel_student">
				<input type="hidden" name="seatLevel_baby">
				<input type="hidden" name="startTime">
				<input type="hidden" name="endTime">
			</form>
			

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