<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base target="_selt">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${css}bootstrap.min.css">
<link rel="stylesheet" href="${css}myBootstrap.css">
<link rel="stylesheet" href="${css}makeplan.css">
<link rel="stylesheet" href="${css}style.css">


</head>
<body>
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
			<div class="[ collapse navbar-collapse ]" id="bs-exa0mple-navbar-collapse-1">
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
		<div class="row">
			<div class="col-md-12">
			
				<div id="makeplan_list">
					<table border="1">
						<tr>
							<td>여행의 주제를 입력해주세요.</td>
							<td>내용을 간단하게 입력하세요.</td>
						</tr>
						<tr>
							<td>
								<!-- 주제 -->
								<input type="text" class="input" name="planTitle" maxlength="50" style="width:240px">
							</td>
							<td>
								<textarea class="input" rows="5" cols="40" name="planContent" style="width:270px"></textarea>
							</td>
						</tr>
						<tr>
							<th colspan="2">
							<input type="button" id="btn" class="plan" value="작성">
							<input type="reset" class="plan" value="다시작성">
							</th>
						</tr>
					</table>
					<br>
				</div>
				
				<div class="clear"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div id="result"></div>
			</div>
		</div>
	</div>
	
	
	
		
		
		
		
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="${js}bootstrap.js"></script>
	<script type="text/javascript">
		setTimeout(
			function(){
				$("#loading").fadeOut(500);
			},1000);
		
		/* 여행일정 정하기 ajax */
		$(document).ready(function() {
			$('#btn').click(function() {
				
				var planTitle = $("input[name='planTitle']").val();
				var planContent = $("textarea[name='planContent']").val();
			
				 $.ajax({
					url: "insertPlan?planTitle="+planTitle+"&planContent="+planContent,
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
