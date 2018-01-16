<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>    
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="${css}bootstrap.mypage.css">
<link rel="stylesheet" href="${css}responsive.css" />
<link rel="stylesheet" href="${css}updateInfoForm.css" />
<title>회원 정보 수정 처리 페이지</title>
</head>



<body>
<!-- 아이디와 비번 일치 -->
<c:if test="${selectCnt == 1 }">
	<c:if test="${deleteCnt == 0 }">
		<script type="text/javascript">
			alert("탈퇴에 실패했습니다");
		</script>
	</c:if>
	<c:if test="${deleteCnt !=0 }">
		<%
		request.getSession().invalidate();
		request.setAttribute("cnt", 2);
		%>
	
	<script type="text/javascript">
		setTimeout(function(){
			alert("탈퇴 처리 되었습니다");
			window.location='main';
		}, 1000)
		
	</script>
	</c:if>
</c:if>

<!-- 비밀번호 불일치  -->
<c:if test="${selectCnt !=1 }">
	<script type="text/javascript">
		alert("잘못된 비밀번호 입니다");
	</script>
</c:if>

</body>
</html>