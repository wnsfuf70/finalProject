<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="${css}bootstrap.mypage.css">
<link rel="stylesheet" href="${css}responsive.css" />
<link rel="stylesheet" href="${css}updateInfoView.css" />
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

<!-- 회원 정보 수정란  null 값일 때에 input폼 뜨게 만들기 -->
 <div class="w3-container">
<c:if test="${cnt == 1 }">
		<form action="modifyPro" method="post" name="modifyView" onsubmit="return revisionCheck();">
			<table>
				<tr>
					<th>아이디</th>
					<td>${vo.getMem_id()}</td>
				</tr>

				<tr>
					<th>비밀번호</th>
					<td><input class="input" type="password" name="password" maxlength="15" value="${vo.getPassword()}"></td>
				</tr>

				<tr>
					<th>비밀번호 확인</th>
					<td><input class="input" type="password" name="password" maxlength="10" value="${vo.getPassword()}"></td>
				</tr>

				<tr>
					<th>이름</th>
					<td><input class="input" type="text" name="name" maxlength="20" value="${vo.getName()}"></td>
				</tr>

				<tr>
					<th>이메일</th>
					
					<td>
						<!-- null일 때  -->
						<c:if test="${vo.getEmail1()&&vo.getEmail2()==null}">
							<input class="inputEmail" type="text" name="email1" maxlength="10" >  <!-- style="width: 100px" -->
							@ 
							<input class="inputEmail" type="text" name="email2" maxlength="20" value="${vo.getEmail2()}">
						</c:if>
					
					
					<!-- null이 아닐 때  -->
					<c:if test="${vo.getEmail1()&&vo.getEmail2()!=null}">
						<input class="inputEmail" type="text" name="email1" maxlength="10" value="${vo.getEmail1()}">  <!-- style="width: 100px" -->
						@ 
						<input class="inputEmail" type="text" name="email2" maxlength="20" value="${vo.getEmail2()}">
					</c:if>
					
					</td>
				</tr>

				<tr>
					<th>핸드폰 번호</th>
					<td>
						<!-- null일 때 -->					
						<c:if test="${vo.getPhone1()&&vo.getPhone2()&&vo.getPhone3()==null }">
							<input class="inputHp" type="text" name="phone1" maxlength="3" value="${vo.getPhone1()}">
								-
							<input class="inputHp" type="text" name="phone2" maxlength="4" value="${vo.getPhone2()}">
								-
							<input class="inputHp" type="text" name="phone3" maxlength="4" value="${vo.getPhone3()}">
						</c:if>					
					
					
					
						<!-- null이 아닐 때 -->
						<c:if test="${vo.getPhone1()&&vo.getPhone2()&&vo.getPhone3()!=null }">
							<input class="inputHp" type="text" name="phone1" maxlength="3" value="${vo.getPhone1()}">
								-
							<input class="inputHp" type="text" name="phone2" maxlength="4" value="${vo.getPhone2()}">
								-
							<input class="inputHp" type="text" name="phone3" maxlength="4" value="${vo.getPhone3()}">
						</c:if>
					</td>
				</tr>
				
				
				<tr>
					<th>생년월일</th>
					<td>${vo.getBirth()}</td>
				</tr>
				
				
				<tr>
					<th>성별</th>
					<td>${vo.getSex()}</td>
				</tr>
				
				<tr>
					<th>등급</th>
					<td>${vo.getGrade()}</td>
				</tr>
				
				<tr>
					<th>프로필 사진</th>
					<td><input class="input" type="file" name="faceImg" maxlength="20" value="${vo.getFaceImg()}"></td>
				</tr>

				<tr>
					<th>소개</th>
					<td><textarea name="introduce" maxlength="20">${vo.getIntroduce()}</textarea></td>
				</tr>		
			
				<tr>
					<th colspan="2">
					<input class="inputButton" type="submit" value="수정">
					<input class="inputButton" type="reset" value="취소">
					<input class="inputButton" type="button" value="수정취소" onclick="window.history.back(-2)">
					</th> 
				</tr>
			</table>
		</form>
	</c:if>	
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
	
	
</script>



</body>
</html>