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

	<c:if test="${cnt == 0}">
		<script type="text/javascript">
	 		alert("회원 정보 수정을 실패했습니다");
	 		window.location="modifyView";
		</script>
	</c:if>

	<c:if test="${cnt != 0}">
	<script type="text/javascript">
		alert("회원 정보가 수정되었습니다");
		window.location="myPageStart";
	</script>
	</c:if>



</body>
</html>