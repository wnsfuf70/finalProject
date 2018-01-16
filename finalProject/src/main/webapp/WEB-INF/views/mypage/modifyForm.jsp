<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>    
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="${css}bootstrap.mypage.css">
<link rel="stylesheet" href="${css}responsive.css" />
<link rel="stylesheet" href="${css}updateInfoForm.css" />
<title>회원 정보 수정</title>
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

<div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
  <button class="w3-bar-item w3-button w3-large" onclick="w3_close()"> &times;</button>
   
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

<div class="w3-teal" style="background-color:#333!important">
  <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()" style="background-color:#333!important">&#9776;</button>
  <div class="w3-container">
  
	
   <h1><a href="myPageStart" style="text-decoration: none;!important;">My Page</a></h1>
    <ul id="nav"> 
 		 <li><a href="storyStart">이야기</a></li>
 		 
 		 <li><a href="whereStart">어디갈까</a></li>
  		 
  		 <li><a href="recomandStart">추천여행기</a></li>
 		 
 		<li>
 		 	<a href="#about">예약</a>
 		 		<ul>
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
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">${sessionScope.mem_id}님</a>
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
</div>


 <div class="w3-container">
	<form action="modifyView" method="post" name="modifyView" onsubmit="pwdCheck()">
		<table>
					<br>
						<center><h3 style="color:#333">회원 정보 변경</h3></center>
					<hr>
					<br>

			<tr>
				<td><center><input class="input" type="password" name="password" maxlength="15" placeholder="비밀번호를 입력하세요"></center></td>
				<td><input class="inputButton" type="submit" value="확인"><td>
			</tr>
			
		
		</table>
	</form>
 </div> 

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

function pwdCheck() {
	if(!document.modifyView.password.value) {
		document.modifyView.password.focus();
		return false;
	}

}
// 비밀번호 잘못물렀을 때 표기하기	
	
</script>



</body>
</html>