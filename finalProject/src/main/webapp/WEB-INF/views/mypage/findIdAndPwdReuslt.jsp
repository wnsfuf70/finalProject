<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>      
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 비밀 번호 찾기 결과</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>


	<c:if test="${vo == null}">
		<script type="text/javascript">
			alert("존재하지 않는 정보입니다");
		</script>
	</c:if>

	<c:if test="${vo!=null}">
		아이디:${vo.mem_id}	
		비밀번호:${vo.password}
	</c:if>
</body>
</html>