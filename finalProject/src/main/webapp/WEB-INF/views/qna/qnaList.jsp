<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="${css}bootstrap.mypage.css">
<link rel="stylesheet" href="${css}responsive.css" />
<link rel="stylesheet" href="${css}qnaList.css" />
<title>qna 목록</title>
</head>
<body>

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

	<div class="w3-sidebar w3-bar-block w3-card w3-animate-left"
		style="display: none" id="mySidebar">
		<button class="w3-bar-item w3-button w3-large" onclick="w3_close()">
			&times;</button>

		<!-- 목록 이름은 각자 정해주세요..  -->
		<a href="main" class="w3-bar-item w3-button">HOME</a> 
		<a href="#" class="w3-bar-item w3-button">나의 계획</a> 
		<a href="#" class="w3-bar-item w3-button">리뷰</a> 
		<a href="#" class="w3-bar-item w3-button">에세이</a> 
		<a href="#" class="w3-bar-item w3-button">나의 후기</a> 
		<a href="#" class="w3-bar-item w3-button">내 여행 기록</a> 
		<a href="#" class="w3-bar-item w3-button">예약 목록</a> 
		<a href="qnaList" class="w3-bar-item w3-button">나의 QnA</a> 
		<a href="modifyForm" class="w3-bar-item w3-button">회원 정보 수정</a> 
		<a href="deleteForm" class="w3-bar-item w3-button">회원 탈퇴</a>

	</div>





	<div id="main">

		<div class="w3-teal" style="background-color: #333 !important">
			<button id="openNav" class="w3-button w3-teal w3-xlarge"
				onclick="w3_open()" style="background-color: #333 !important">&#9776;</button>
			<div class="w3-container">




				<h1>
					<a href="myPageStart" style="text-decoration: none;!important;">My
						Page</a>
				</h1>
				<ul id="nav">
					<li><a href="storyStart">이야기</a></li>

					<li><a href="whereStart">어디갈까</a></li>

					<li><a href="recomandStart">추천여행기</a></li>

					<li><a href="#">예약</a>
						<ul>
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
		</div>

		<br>
		
		<form>
			<div class="w3-container" style="align: center;">
				<!-- 추가 -->
				<center><h2>QnA</h2></center>
					<center><p>문의 글을 남겨 주시면 성심성의껏 답변해드리겠습니다</p></center>
				<hr>

				<table class="w3-table-all" align="center" style="width: 1000px;">
					<thead>
						<tr class="w3-light-grey w3-hover-blue">
							<th>번호</th>
							<th>제목</th>
							<th>이름</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tr class="w3-hover-blue">
						<td>Jill</td>
						<td>Smith</td>
						<td>50</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr class="w3-hover-blue">
						<td>Eve</td>
						<td>Jackson</td>
						<td>94</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr class="w3-hover-blue">
						<td>Adam</td>
						<td>Johnson</td>
						<td>67</td>
						<td>50</td>
						<td>50</td>
					</tr>
					<tr class="w3-hover-blue">
						<td>Bo</td>
						<td>Nilson</td>
						<td>35</td>
						<td>50</td>
						<td>50</td>
					</tr>


			



				</table>

				<hr>


				<!-- ** -->
				<div class="w3-row w3-section" align="center">
					<div class="w3-col" style="width: 50px"></div>
					<div class="w3-rest">

						<!-- 검색조건1 -->
						<select class="w3-select w3-border" name="option"
							style="width: 200px;">
							<option value="" disabled selected>선택</option>
							<option value="payment">결제</option>
							<option value="accomodations">숙박</option>
							<option value="trvael">여행</option>
							<option value="usage">사이트 이용</option>
						</select>
						<!-- 검색조건1 -->


						<!-- 검색조건2 -->
						<select class="w3-select w3-border" name="option"
							style="width: 200px;">
							<option value="" disabled selected>선택</option>
							<option value="mem_id">아이디</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select>
						<!-- 검색조건2 -->


						<!-- 검색 폼 -->
						<input type="text" class="search" name="search"
							placeholder="검색어를 입력해주세요" style="width: 200px;">


						&nbsp;

						<!-- 검색 버튼 -->
						<input class="w3-btn w3-ripple w3-blue" type="submit" value="검색">
						<!-- 검색 버튼 -->

						<!-- 검색 폼 -->
						
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<!-- 글쓰기 버튼 -->
						<a href="qnaWrite" class="w3-btn w3-ripple w3-blue" >글쓰기</a>
					<!-- 글쓰기 버튼 -->
						
						
						
					</div>
				</div>
				<!-- ** -->




			</div>
			<!-- 추가 -->
			</form>
	</div>


	<script type="text/javascript">
		function w3_open() {
			document.getElementById("main").style.marginLeft = "25%";
			document.getElementById("mySidebar").style.width = "25%";
			document.getElementById("mySidebar").style.display = "block";
			document.getElementById("openNav").style.display = 'none';
		}
		function w3_close() {
			document.getElementById("main").style.marginLeft = "0%";
			document.getElementById("mySidebar").style.display = "none";
			document.getElementById("openNav").style.display = "inline-block";
		}
	</script>







</body>
</html>