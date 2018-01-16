<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${css}bootstrap.min.css">
<link rel="stylesheet" href="${css}myBootstrap.css">
<link rel="stylesheet" href="${css}makeplan.css">
<link rel="stylesheet" href="${css}style.css">

</head>
<body>
	<!-- 내비게이션 바 -->
	<nav class="[ navbar navbar-fixed-top ][ navbar-bootsnipp animate ]" role="navigation">
    	<div class="[ container ]">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="[ navbar-header ]">
				<div class="[ animbrand ]">
					<a class="[ navbar-brand ][ animate ]" href="main">동행</a>
					<a href="plan">닫기</a>
				</div>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="[ collapse navbar-collapse ]" id="bs-example-navbar-collapse-1">
				<ul>
					<li>지역 선택 -> 상세 일정 만들기</li>
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
		</div>
		<div class="clear"></div>
	</nav>
	
	<div class="container">
		<table border="1">
			<tr>
				<td>선택한 날짜</td>
				<td>지역</td>
				<td>장소</td>
			</tr>
			
			<tr>
				<td rowspan="18">
				<div>
				
				<input type="radio" name="detail" value="">${param.startDate}
				<Br>
				<input type="radio" name="detail" value="">${param.endDate}
				</div>
				</td>
				
				<tr>
					<td><input type="checkbox" name="detail" value="서울" id="btn">서울</td>
					<td rowspan="17">
						<!-- 장소 뿌려주는곳 -->
						<div id="result">
							
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail1" value="인천" >인천</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="경기">경기</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="강원">강원</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="충북">충북</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="6">충남</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="7">대전</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="8">대구</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="9">경북</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="10">경남</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="11">울산</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="12">부산</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="13">광주</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="14">전북</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="15">전남</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="16">제주도</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="detail" value="17">울릉도/독도</td>
				</tr>
				
			</tr>
			
			<tr>
				<td colspan="3">
					<input type="button" value="작성" onclick="window.location='#'">
				</td>
			</tr>

			
		</table>
	</div>
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="${js}bootstrap.js"></script>
	<script type="text/javascript">
	
		/* 여행일정 정하기 ajax */
		$(document).ready(function() {
			$('#btn').click(function() {
		
				var area = $("checkbox[name='detail1']:checked").val();
				alert(area);
				
				 $.ajax({
					url: "detail_location?area="+area,
					type: 'GET',
					
					success: function(msg) {
						$('#result').html(msg);					
					},				
					error: function() {
						alert('오류');
					}			
				});			 
			});		
		});
	
	</script>
	
</body>
</html>