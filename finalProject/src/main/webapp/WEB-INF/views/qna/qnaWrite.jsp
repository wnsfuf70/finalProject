<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>     
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${css}bootstrap.mypage.css">
<link rel="stylesheet" href="${css}responsive.css" />
<title>qna 작성</title>
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
 		 	<a href="#">예약</a>
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

<br>
<div class="w3-container"><!-- style="width:1000px" -->
<!-- 추가 -->
 <center><h3 style="color:#333">1:1 문의</h3></center> 
<br>
<hr>
<form action="/action_page.php" method="post" name="boardWrite" style=" align:center;"> <!-- class="w3-container w3-card-4" -->
   <table align="center">
           <tr>
               <td>문의유형</td>
               	<td>
               	<div class="w3-row w3-section">
				  <div class="w3-col" style="width:50px"></div>
				    <div class="w3-rest">
		             <select class="w3-select w3-border" name="option" style="width:600px;">
							<option value="" disabled selected>선택</option>
							<option value="1">결제</option>
							<option value="2">숙박</option>
							<option value="3">여행</option>
							<option value="3">사이트 이용</option>
					</select>
					</div>
				</div>
				</td>
           </tr>
 
             <tr>
               <td>제목</td>
               <td>
				<div class="w3-row w3-section">
				  <div class="w3-col" style="width:50px"></div>
				    <div class="w3-rest">
				      <input class="w3-input w3-border" name="title" type="text" placeholder="" style="width:600px;">
				    </div>
				</div>
			  </td>
           </tr>
 
          
            <tr>
               <td>작성자</td>
               <td>
				<div class="w3-row w3-section">
				  <div class="w3-col" style="width:50px"></div>
				    <div class="w3-rest">
				      <input class="w3-input w3-border" name="mem_id" type="text" placeholder="" style="width:600px;">
				    </div>
				</div>
			  </td>
           </tr>
           
           
           <tr>
               <td>내용</td>
               <td>
				<div class="w3-row w3-section">
				  <div class="w3-col" style="width:50px"></div>
				    <div class="w3-rest">
				      <textarea class="w3-input w3-border" name="content" style="height:400px; width:600px;" ></textarea>
				    </div>
				</div>
			   </td>
           </tr>
          

           <tr>
               <td>첨부파일</td>
               <td>
				<div class="w3-row w3-section">
				  <div class="w3-col" style="width:50px"></div>
				    <div class="w3-rest">
				      <input class="w3-input w3-border" name="title" type="file" style="width:600px;">
				    </div>
				</div>
			  </td>
           </tr>


        
           <tr>
               <td>비밀번호</td>
               <td>
				<div class="w3-row w3-section">
				  <div class="w3-col" style="width:50px"></div>
				    <div class="w3-rest">
				      <input class="w3-input w3-border" name="email" type="text"  style="width:600px;">
				    </div>
				</div>
				</td>
           </tr>
           
           
           <tr>
               <td></td> 
               <td>
				<div class="w3-row w3-section">
				  <div class="w3-col" style="width:50px"></div>
				    <div class="w3-rest">
				      <input class="w3-button w3-block w3-section w3-blue w3-ripple" style="width: 200px; margin: 0 auto; position:relative; background-color:#3498DB!important" type="submit" value="문의하기">
				    </div>
				</div>
				</td>
           </tr>
       </table>
</form>
<!-- 추가 -->

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
	
	
</script>

	


    


</body>
</html>