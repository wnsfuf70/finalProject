<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<html>
<body>
	<c:if test="${cnt == 0}">
		<script type="text/javascript">
			alert("예약에 실패 하셨습니다.");
		</script>
	</c:if>
	<c:if test="${cnt != 0}">
		<script type="text/javascript">
			alert("예약완료 되었습니다.");
			window.location="main";
		</script>
		<%-- <c:redirect url="cartList.vo?id=${memId}"/> --%>
	</c:if>
</body>
</html>